define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var wxPay = require('$UI/system/api/native/wxPay');
	require("$UI/system/lib/cordova/cordova");
	require("cordova!com.justep.cordova.plugin.alipay");
	var Model = function(){
		this.callParent();
		this.money=justep.Bind.observable('');//订单金额
		//红包余额
		this.redBmoney=justep.Bind.observable('');
		//红包抵扣金额显示
		this.redBshow=justep.Bind.observable('');
		//下面显示扣除红包后的金额
		this.moneyRel=justep.Bind.observable('');
	};
	//订单号
	var order_pay_sn;
	//红包余额变量
	var redBmoneyV=0;
	//订单金额变量
	var moneyV=0;
	//每个打折完之后的价格
	var moneyZ=0;
	//折扣
	var zhekou=0;
	//	定义函数
	var common = require("../js/common");
	Model.prototype.util = common;
	var user = justep.Shell.user.get();//获取缓存用户表信息数据
//	var ws = io.connect("http://notice.pandaehome.com");
//	var ws = io.connect(common.ioPath);
//	ws.on('get', function (data){//接收消息
//	    	if(data.type=="order_pay"&&data.body.user_id==user.id){
//	    		if(data.body["return"]=="goback"){
//	    		}
//	    		if(data.body["return"]=="gohome"){
//	    			justep.Shell.closePage();
//	    			$('[xid=iframeyh]').hide();
//	    		}
////	    		justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
////					payResult:'suc',
////					paySn:data.body.pay_sn
////				});
//	    	}		
//	});
	/*页面激活*/
	Model.prototype.modelActive = function(event){
		//变量全部初始化为0，最初状态
		order_pay_sn='';
		redBmoneyV=0;
		moneyV=0;
		moneyZ=0;
		zhekou=0;
		redNum=0;
		choosed=true;
		$('[xid=image3choose]').css('display','block');
		this.redBshow.set(0.00);
		this.comp('zfData').refreshData();
		this.moneyRel.set(0.00);
	};
	/*页面离开*/
	Model.prototype.modelInactive = function(event){
		localStorage.setItem('name','');
	};
	Model.prototype.modelLoad = function(event){
		
	};
	var restartCount=0;/*重连次数*/
	Model.prototype.button1Click = function(event){
		var data = {
//			pay_sn : localStorage.getItem('pay_sn'),//订单号
//			pay_sts : localStorage.getItem('name'),//支付方式
			user_id : user.id,//id
			payment_code : localStorage.getItem('name'),//支付方式
			type : sessionStorage.getItem('jiaofeitype'),
			version : '2.3.12--',
			//红包的钱数
			redpacket_amount:choosed?$('[xid=input1redMoney]').val():0,
		};
		this.comp('button1arreage').set({
			'disabled' : 'true'
		});		
		var totalData = $.extend(true,data,this.params.data);//切换订单接口
		var me = this;
		
		$.ajax({
			url:this.util.apiPath +'/zhixines/api/orderPay/order_pay',
			data:totalData,
			dataType:'json',
			async: true,
			timeout : 8000,
			type:'post',
			success:function(e){
				/*启用*/
				me.comp('button1arreage').set({
					'disabled' : false
				});
				/*启用*/
				/*日志打印处*/
				glob.logAjax('arrearage',e,'/zhixines/api/orderPay/order_pay',totalData,'arrearage——生成oderPay'+user.id,'4');/*日志打印处*/
				if(e.datas.msg=="用户参数错误"){
					me.util.showPop('请刷新再试');
					return;
				}	
				else if((e.datas.state==9&&e.datas.info.pay_states==1)||(e.datas.state==9&&e.datas.info.pay_state==20)){
					justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
						payResult:'suc',
						paySn:e.datas.info.pay_sn
					});
					me.comp('button1arreage').set({
								'disabled' : false
					});
				}
				else{
					try {
						var d=e.datas;
						var orderID = d.info.order_id;
						//存储订单号
						order_pay_sn=d.info.order_id;
						var rmb =parseFloat(d.info.order_amount).toFixed(2);/*localStorage.getItem('money');*/////Math.abs(d.info.order_amount);
						var seller = d.info.seller;//"accuratebest@163.com";
						var notifyUrl = d.info.notifyUrl;
					} catch (e) {
						// TODO: handle exception
						/*日志打印处*/
						glob.logAjax('arrearage',e,'/zhixines/api/orderPay/order_pay',totalData,'arrearage_支付参数返回异常'+user.id,'2');/*日志打印处*/
						me.util.showPop('数据异常：哦豁，程序开小差了，紧急修复中...');
					}
					if (localStorage.getItem('name') == "alipay") {
						if (!navigator.alipay) {
							return;
						}
						navigator.alipay.pay({
							"seller" : seller, // 卖家支付宝账号或对应的支付宝唯一用户号
							"subject" : "熊猫e家", // 商品名称
							"body" : "熊猫e家", // 商品详情
							"price" : rmb, // 金额，单位为RMB
							"tradeNo" : orderID, // 唯一订单号
							"timeout" : "30m", // 超时设置
							"notifyUrl" : notifyUrl
						}, // 服务器通知路径
						function(message) {

							/*启用*/
							me.comp('button1arreage').set({
								'disabled' : false
							});
							/*启用*/
							var responseCode = parseInt(message);
							if (responseCode === 9000) {
								me.util.showPop('支付成功！');
								//----------------------------改变跳转的页面------------------------------------------------------------
									justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
										payResult:'suc',
										paySn:orderID
									});
								localStorage.removeItem('money');
							} else if (!isNaN(responseCode)) {
								me.util.showPop('支付失败！');
								justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
										payResult:'err',
										paySn:orderID
									});
							} else {
								me.util.showPop('支付失败！');
								justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
										payResult:'err',
										paySn:orderID
									});
							}
						}, function(message) {
								me.util.showPop('支付失败！');
								justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
										payResult:'err',
										paySn:orderID
									});
						});
	
					} 
					/*天府alipay*/
					if(localStorage.getItem('name') == "tf_alipay") {
	//					/*付付付付付付付付付付付付付付付付付付付付付付付付付付付付付*////
						/*--------------------------监听close----------------------------*/
						var winopencz;
							var myCallback = function(event) {  
								 console.log("event.type"+event.type); 
							};
							try {
								if(d.info.notifyUrl.length>0){
									/*----------------------*/
									winopencz=window.open(d.info.notifyUrl, '_blank', 'location=no,toolbar=no,closebuttoncaption=关闭');
									/*loadstart*/
									winopencz.addEventListener('loadstart',function(event){
										if(event.url.length>0){
											 if(event.url.indexOf("close.html") != -1){
													winopencz.close();
	//									    		winopencz.removeEventListener('loadstart', myCallback);
										    		//justep.Shell.showPage(require.toUrl('../user/user-main.w'));
											    		//改变跳转页面
											    	//判断支付成功没有
											    	var datas={
											    			user_id:user.id,
											    			v:user.v,
											    			pay_sn:order_pay_sn
											    	};
											    	$.ajax({
											    		url:common.apiPath+'/zhixines/api/GetRedPacket/checkOrderIsPay',
											    		type:'post',
											    		dataType:'json',
											    		timeout : 10000,
											    		data:datas,
											    		async: true,
											    		success:function(d){
											    			try {
																if(d.s){
												    				justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'suc',
												    					paySn:order_pay_sn
												    				});
												    			}
												    			else{
												    				justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'err',
												    					paySn:order_pay_sn
												    				});
												    			}
															} catch (e) {
																// TODO: handle exception
																//order_pay_sn
																justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'err',
												    					paySn:order_pay_sn
												    			});
																/*日志打印处*/
																glob.logAjax('arrearage',e,'/zhixines/api/GetRedPacket/checkOrderIsPay',totalData,'arrearage_跳转出错tf_alipay'+user.id,'4');/*日志打印处*/
															}
											    		},
											    		error:function(d){
											    			justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
											    					payResult:'err',
											    					paySn:order_pay_sn
						
											    			});
											    		}	
											    	});
											    	
											    	
													/*启用*/
													me.comp('button1arreage').set({
														'disabled' : false
													});
													/*启用*/
											 }
										}/*---------------------------*/
									});
									/*loadstop*/
									winopencz.addEventListener('loadstop',function(event){
										if(event.url.length>0){
											 if(event.url.indexOf("close.html") != -1){
													winopencz.close();
	//									    		//判断支付成功没有
											    	var datas={
											    			user_id:user.id,
											    			v:user.v,
											    			pay_sn:order_pay_sn
											    	};
											    	$.ajax({
											    		url:common.apiPath+'/zhixines/api/GetRedPacket/checkOrderIsPay',
											    		type:'post',
											    		dataType:'json',
											    		data:datas,
											    		timeout : 10000,
											    		async: true,
											    		success:function(d){
											    			try {
																if(d.s){
												    				justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'suc',
												    					paySn:order_pay_sn
												    				});
												    			}
												    			else{
												    				justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'err',
												    					paySn:order_pay_sn
												    				});
												    			}
															} catch (e) {
																// TODO: handle exception  order_pay_sn
																justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'err',
												    					paySn:order_pay_sn
												    			});
															}
											    		},
											    		error:function(d){
											    			justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
											    					payResult:'err',
											    					paySn:order_pay_sn
											    			});
											    		}	
											    	});
											 }
										}/*---------------------------*/
									});
									/*loaderror*/
									winopencz.addEventListener('loaderror',function(event){
										if(event.url.length>0){
											 if(event.url.indexOf("close.html") != -1){
													winopencz.close();
	//									    		winopencz.removeEventListener('loaderror', myCallback);
										    		//判断支付成功没有
											    	var datas={
											    			user_id:user.id,
											    			v:user.v,
											    			pay_sn:order_pay_sn
											    	};
											    	$.ajax({
											    		url:common.apiPath+'/zhixines/api/GetRedPacket/checkOrderIsPay',
											    		type:'post',
											    		dataType:'json',
											    		data:datas,
											    		async: true,
											    		timeout : 10000,
											    		success:function(d){
											    			try {
																if(d.s){
												    				justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'suc',
												    					paySn:order_pay_sn
												    				});
												    			}
												    			else{
												    				justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'err',
												    					paySn:order_pay_sn
												    				});
												    			}
															} catch (e) {
																// TODO: handle exception
																//justep.Shell.showPage('../user/user-main.w');
																justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'err',
												    					paySn:order_pay_sn
												    			});
															}
											    		},
											    		error:function(d){
											    			justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
											    					payResult:'err',
											    					paySn:order_pay_sn
											    			});
											    		}	
											    	});
											 }
										}/*---------------------------*/
									});
									/*exit*/
									winopencz.addEventListener('exit',function(event){
										try {
											if(event.url.length>0){
												 if(event.url.indexOf("close.html") != -1){
													winopencz.close();
		//									    		//判断支付成功没有
											    	var datas={
											    			user_id:user.id,
											    			v:user.v,
											    			pay_sn:order_pay_sn
											    	};
											    	$.ajax({
											    		url:common.apiPath+'/zhixines/api/GetRedPacket/checkOrderIsPay',
											    		type:'post',
											    		dataType:'json',
											    		data:datas,
											    		async: true,
											    		timeout : 10000,
											    		success:function(d){
											    			try {
																if(d.s){
												    				justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'suc',
												    					paySn:order_pay_sn
												    				});
												    			}
												    			else{
												    				justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'err',
												    					paySn:order_pay_sn
												    				});
												    			}
															} catch (e) {
																// TODO: handle exception
																justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'err',
												    					paySn:order_pay_sn
												    			});
															}
											    		},
											    		error:function(d){
											    			justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
											    					payResult:'err',
											    					paySn:order_pay_sn
											    			});
											    		}	
											    	});
												 }
											}
										} catch (e) {
											// TODO: handle exception
	//										if(event.url.indexOf("close.html") != -1){
												winopencz.close();
		//											//判断支付成功没有
											    	var datas={
											    			user_id:user.id,
											    			v:user.v,
											    			pay_sn:order_pay_sn
											    	};
											    	$.ajax({
											    		url:common.apiPath+'/zhixines/api/GetRedPacket/checkOrderIsPay',
											    		type:'post',
											    		dataType:'json',
											    		data:datas,
											    		async: true,
											    		timeout : 10000,
											    		success:function(d){
											    			try {
																if(d.s){
												    				justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'suc',
												    					paySn:order_pay_sn
												    				});
												    			}
												    			else{
												    				justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'err',
												    					paySn:order_pay_sn
												    				});
												    			}
															} catch (e) {
																// TODO: handle exception
																//justep.Shell.showPage('../user/user-main.w');
																justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'err',
												    					paySn:order_pay_sn
												    			});
															}
											    		},
											    		error:function(d){
											    			justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
											    					payResult:'err',
											    					paySn:order_pay_sn
											    			});
											    		}	
											    	});
											/*日志打印处*/
											glob.logAjax('arrearage',e,'/zhixines/api/orderPay/order_pay',totalData,'arrearage——tf-alipay的exit异常'+user.id,'4');/*日志打印处*/
										}
										/*---------------------------*/
										/*启用*/
										me.comp('button1arreage').set({
											'disabled' : false
										});
										/*启用*/
									});
									/*--------------------------监听close----------------------------*/
								}
							} catch (e) {
								// TODO: handle exception
								me.util.showPop('数据异常：哦豁，程序开小差了，紧急修复中...');
								/*日志打印处*/
								glob.logAjax('arrearage',e,'/zhixines/api/orderPay/order_pay',totalData,'arrearage_tf_alipay支付异常'+user.id,'2');/*日志打印处*/
								
							}
	//					var a='http://etest.cgnb.cn:8904/test';
	//					$('#arrearageContent').append('<iframe frameborder="0" src='+a+'  xid="iframe"  style="></iframe>');					
					}
					if(localStorage.getItem('name') == "wxpay") {
						var cc = parseFloat(rmb*100).toFixed(0);
						wxPay.pay({
							body : "熊猫e家",
							mchId : "1419365702",
							notifyUrl : notifyUrl,
							outTradeNo : orderID,
							totalFee : cc,
							success : function(e) {
//								me.util.showPop('支付成功');
								//justep.Shell.showPage(require.toUrl('../user/user-main.w'));
								//改变跳转页面
								justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
									payResult:'suc',
									paySn:orderID
								});
								/*启用*/
								me.comp('button1arreage').set({
									'disabled' : false
								});
								/*启用*/
							},
							cancel : function(e) {
									me.util.showPop('支付取消！');
									justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
										payResult:'suc',
										paySn:orderID
									});
									/*启用*/
									me.comp('button1arreage').set({
										'disabled' : false
									});
									/*启用*/
							},
							fail : function(e) {
//									me.util.showPop('支付失败！');
									justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
										payResult:'err',
										paySn:orderID
									});
									/*启用*/
									me.comp('button1arreage').set({
										'disabled' : false
									});
									/*启用*/
									/*日志打印处*/
									glob.logAjax('arrearage'+cc,e,'/zhixines/api/orderPay/order_pay',totalData,'arrearage_wxpay支付fail'+user.id,'2');/*日志打印处*/
							}
						});
					   }
					   if(localStorage.getItem('name') == "tfpay"){
							var winopencz;
							var myCallback = function(event) {  
								 console.log("event.type"+event.type); 
							};
							try {
								if(d.info.notifyUrl.length>0){
									/*----------------------*/
									winopencz=window.open(d.info.notifyUrl, '_blank', 'location=no,toolbar=no,closebuttoncaption=关闭');
									/*loadstart*/
									try {
										winopencz.addEventListener('loadstart',function(event){
											if(event.url.length>0){
												 if(event.url.indexOf("close.html") != -1){
														winopencz.close();
		//									    		//判断支付成功没有
											    	var datas={
											    			user_id:user.id,
											    			v:user.v,
											    			pay_sn:order_pay_sn
											    	};
											    	$.ajax({
											    		url:common.apiPath+'/zhixines/api/GetRedPacket/checkOrderIsPay',
											    		type:'post',
											    		dataType:'json',
											    		data:datas,
											    		async: true,
											    		timeout : 10000,
											    		success:function(d){
											    			try {
																if(d.s){
												    				justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'suc',
												    					paySn:order_pay_sn
												    				});
												    			}
												    			else{
												    				justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'err',
												    					paySn:order_pay_sn
												    				});
												    			}
															} catch (e) {
																// TODO: handle exception
																justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'err',
												    					paySn:order_pay_sn
												    			});
															}
											    		},
											    		error:function(d){
											    			justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
											    					payResult:'err',
											    					paySn:order_pay_sn
											    			});
											    		}	
											    	});
											    		/*启用*/
														me.comp('button1arreage').set({
															'disabled' : false
														});
														/*启用*/
												 }
											}/*---------------------------*/
										});
									} catch (e) {
										// TODO: handle exception
										/*启用*/
										me.comp('button1arreage').set({
											'disabled' : false
										});
										/*启用*/
										me.util.showPop('数据异常：哦豁，程序开小差了，紧急修复中...');
										/*日志打印处*/
										glob.logAjax('arrearage',e,'/zhixines/api/orderPay/order_pay',totalData,'arrearage_tfpay的loadstart异常'+user.id,'3');/*日志打印处*/
									}
									
									/*loadstop*/
									winopencz.addEventListener('loadstop',function(event){
										try {
											if(event.url.length>0){
												 if(event.url.indexOf("close.html") != -1){
														winopencz.close();
											    		//判断支付成功没有
											    	var datas={
											    			user_id:user.id,
											    			v:user.v,
											    			pay_sn:order_pay_sn
											    	};
											    	$.ajax({
											    		url:common.apiPath+'/zhixines/api/GetRedPacket/checkOrderIsPay',
											    		type:'post',
											    		dataType:'json',
											    		data:datas,
											    		async: true,
											    		timeout : 10000,
											    		success:function(d){
											    			try {
																if(d.s){
												    				justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'suc',
												    					paySn:order_pay_sn
												    				});
												    			}
												    			else{
												    				justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'err',
												    					paySn:order_pay_sn
												    				});
												    			}
															} catch (e) {
																// TODO: handle exception
																justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'err',
												    					paySn:order_pay_sn
												    			});
															}
											    		},
											    		error:function(d){
											    			justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
											    					payResult:'err',
											    					paySn:order_pay_sn
											    			});
											    		}	
											    	});
												 }
											}
										} catch (e) {
											// TODO: handle exception
											console.log('error:xmej214'+e);
										}
										/*---------------------------*/
									});
									/*loaderror*/
									winopencz.addEventListener('loaderror',function(event){
										try {
											if(event.url.length>0){
												 if(event.url.indexOf("close.html") != -1){
														winopencz.close();
		//									    		//判断支付成功没有
											    	var datas={
											    			user_id:user.id,
											    			v:user.v,
											    			pay_sn:order_pay_sn
											    	};
											    	$.ajax({
											    		url:common.apiPath+'/zhixines/api/GetRedPacket/checkOrderIsPay',
											    		type:'post',
											    		dataType:'json',
											    		data:datas,
											    		async: true,
											    		timeout : 10000,
											    		success:function(d){
											    			try {
																if(d.s){
												    				justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'suc',
												    					paySn:order_pay_sn
												    				});
												    			}
												    			else{
												    				justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'err',
												    					paySn:order_pay_sn
												    				});
												    			}
															} catch (e) {
																// TODO: handle exception
																justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'err',
												    					paySn:order_pay_sn
												    			});
															}
											    		},
											    		error:function(d){
											    			justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
											    					payResult:'err',
											    					paySn:order_pay_sn
											    			});
											    		}	
											    	});
												 }
											}
										} catch (e) {
											// TODO: handle exception
											console.log('error:xmej224'+e);
										}
										/*---------------------------*/
									});
									/*exit*/
									winopencz.addEventListener('exit',function(event){
										try {
											if(event.url.length>0){
												 if(event.url.indexOf("close.html") != -1){
														winopencz.close();
		//									    		//判断支付成功没有
											    	var datas={
											    			user_id:user.id,
											    			v:user.v,
											    			pay_sn:order_pay_sn
											    	};
											    	$.ajax({
											    		url:common.apiPath+'/zhixines/api/GetRedPacket/checkOrderIsPay',
											    		type:'post',
											    		dataType:'json',
											    		data:datas,
											    		async: true,
											    		timeout : 10000,
											    		success:function(d){
											    			try {
																if(d.s){
												    				justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'suc',
												    					paySn:order_pay_sn
												    				});
												    			}
												    			else{
												    				justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'err',
												    					paySn:order_pay_sn
												    				});
												    			}
															} catch (e) {
																// TODO: handle exception
																justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'err',
												    					paySn:order_pay_sn
												    			});
															}
											    		},
											    		error:function(d){
											    			justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
											    					payResult:'err',
											    					paySn:order_pay_sn
											    			});
											    		}	
											    	});
												 }
											}
										} catch (e) {
											// TODO: handle exception
												/*启用*/
											me.comp('button1arreage').set({
												'disabled' : false
											});
											/*启用*/
												winopencz.close();
		//										//判断支付成功没有
											    	var datas={
											    			user_id:user.id,
											    			v:user.v,
											    			pay_sn:order_pay_sn
											    	};
											    	
											    	$.ajax({
											    		url:common.apiPath+'/zhixines/api/GetRedPacket/checkOrderIsPay',
											    		type:'post',
											    		dataType:'json',
											    		data:datas,
											    		async: true,
											    		timeout : 10000,
											    		success:function(d){
											    			console.log("支付");
											    			console.log(d);
											    			try {
																if(d.s){
												    				justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'suc',
												    					paySn:order_pay_sn
												    				});
												    			}
												    			else{
												    				justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'err',
												    					paySn:order_pay_sn
												    				});
												    			}
															} catch (e) {
																// TODO: handle exception
																justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'err',
												    					paySn:order_pay_sn
												    			});
															}
											    		},
											    		error:function(d){
											    			console.log("err"+d);
											    			justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
											    					payResult:'err',
											    					paySn:order_pay_sn
											    			});
											    		}	
											    	});
											/*日志打印处*/
											glob.logAjax('arrearage',e,'/zhixines/api/orderPay/order_pay',totalData,'arrearage_tfpay的exit异常'+user.id,'4');/*日志打印处*/
										}
										/*---------------------------*/
										/*启用*/
										me.comp('button1arreage').set({
											'disabled' : false
										});
										/*启用*/
									});
									/*--------------------------监听close----------------------------*/
								}
							} catch (e) {
								// TODO: handle exception
								/*启用*/
										me.comp('button1arreage').set({
											'disabled' : false
										});
										/*启用*/
								me.util.showPop('数据异常：哦豁，程序开小差了，紧急修复中...');
								/*日志打印处*/
								glob.logAjax('arrearage',e,'/zhixines/api/orderPay/order_pay',totalData,'arrearage_tfpay支付异常'+user.id,'2');/*日志打印处*/
							}
							
					   }
					   if(localStorage.getItem('name') == "yuepay"){
	//						me.util.showPop('即将开通!');
							var winopencz;
							
							var myCallback = function(event) {  
								 console.log("event.type"+event.type); 
								 
							};
							try {
								/*----------------------*/
									
									winopencz=window.open(d.info.notifyUrl, '_blank', 'location=no,toolbar=no,closebuttoncaption=关闭');
									/*loadstart*/
	//								try {
									winopencz.addEventListener('loadstart',function(event){
//										console.log("1111112222");
										try {
											if(event.url.length>0){

												if(event.url.indexOf("close.html") != -1){
													winopencz.close();
												   //判断支付成功没有
											    	var datas={
											    			user_id:user.id,
											    			v:user.v,
											    			pay_sn:order_pay_sn
											    	};
											    	$.ajax({
											    		url:common.apiPath+'/zhixines/api/GetRedPacket/checkOrderIsPay',
											    		type:'post',
											    		dataType:'json',
											    		data:datas,
											    		async: true,
											    		timeout : 10000,
											    		success:function(d){
											    			try {
																if(d.s){
												    				justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'suc',
												    					paySn:order_pay_sn
												    				});
												    			}
												    			else{
												    				justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'err',
												    					paySn:order_pay_sn
												    				});
												    			}
															} catch (e) {
																// TODO: handle exception
																justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'err',
												    					paySn:order_pay_sn
												    			});
															}
											    		},
											    		error:function(d){
											    			justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
											    					payResult:'err',
											    					paySn:order_pay_sn
											    			});
											    		}	
											    	});
											    	/*启用*/
													me.comp('button1arreage').set({
														'disabled' : false
													});
													/*启用*/
												}
											}/*---------------------------*/
										} catch (e) {
											// TODO: handle exception
											/*启用*/
										me.comp('button1arreage').set({
											'disabled' : false
										});
										/*启用*/
											me.util.showPop('数据异常：哦豁，程序开小差了，紧急修复中...');
											/*日志打印处*/
											glob.logAjax('arrearage',e,'/zhixines/api/orderPay/order_pay',totalData,'arrearage——yuepay的liadstart异常'+user.id,'3');/*日志打印处*/
										}
									});	
									/*loadstop*/
									winopencz.addEventListener('loadstop',function(event){
										try {
											if(event.url.length>0){
												 if(event.url.indexOf("close.html") != -1){
														winopencz.close();
		//									    		//判断支付成功没有
											    	var datas={
											    			user_id:user.id,
											    			v:user.v,
											    			pay_sn:order_pay_sn
											    	};
											    	$.ajax({
											    		url:common.apiPath+'/zhixines/api/GetRedPacket/checkOrderIsPay',
											    		type:'post',
											    		dataType:'json',
											    		data:datas,
											    		async: true,
											    		timeout : 10000,
											    		success:function(d){
											    			try {
																if(d.s){
												    				justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'suc',
												    					paySn:order_pay_sn
												    				});
												    			}
												    			else{
												    				justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'err',
												    					paySn:order_pay_sn
												    				});
												    			}
															} catch (e) {
																// TODO: handle exception
																justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'err',
												    					paySn:order_pay_sn
												    			});
															}
											    		},
											    		error:function(d){
											    			justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
											    					payResult:'err',
											    					paySn:order_pay_sn
											    			});
											    		}	
											    	});
												 }
											}
										} catch (e) {
											// TODO: handle exception
											/*启用*/
										me.comp('button1arreage').set({
											'disabled' : false
										});
										/*启用*/
											console.log(e);
											me.util.showPop('数据异常：哦豁，程序开小差了，紧急修复中...');
											/*日志打印处*/
											glob.logAjax('arrearage',e,'/zhixines/api/orderPay/order_pay',totalData,'arrearageloadstop异常'+user.id,'3');/*日志打印处*/
										}
										/*---------------------------*/
									});
									/*loaderror*/
									winopencz.addEventListener('loaderror',function(event){
										try {
											if(event.url.length>0){
												 if(event.url.indexOf("close.html") != -1){
														winopencz.close();
		//									    		//判断支付成功没有
											    	var datas={
											    			user_id:user.id,
											    			v:user.v,
											    			pay_sn:order_pay_sn
											    	};
											    	$.ajax({
											    		url:common.apiPath+'/zhixines/api/GetRedPacket/checkOrderIsPay',
											    		type:'post',
											    		dataType:'json',
											    		data:datas,
											    		async: true,
											    		timeout : 10000,
											    		success:function(d){
											    			try {
																if(d.s){
												    				justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'suc',
												    					paySn:order_pay_sn
												    				});
												    			}
												    			else{
												    				justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'err',
												    					paySn:order_pay_sn
												    				});
												    			}
															} catch (e) {
																// TODO: handle exception
																justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'err',
												    					paySn:order_pay_sn
												    			});
															}
											    		},
											    		error:function(d){
											    			justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
											    					payResult:'err',
											    					paySn:order_pay_sn
											    			});
											    		}	
											    	});
												 }
											}
										} catch (e) {
											// TODO: handle exception
											console.log('error:xmej297'+e);
										}
										/*---------------------------*/
									});
									/*exit*/
									winopencz.addEventListener('exit',function(event){
										try {
											if(event.url.length>0){
												 if(event.url.indexOf("close.html") != -1){
														winopencz.close();
		//									    		//判断支付成功没有
											    	var datas={
											    			user_id:user.id,
											    			v:user.v,
											    			pay_sn:order_pay_sn
											    	};
											    	$.ajax({
											    		url:common.apiPath+'/zhixines/api/GetRedPacket/checkOrderIsPay',
											    		type:'post',
											    		dataType:'json',
											    		data:datas,
											    		async: true,
											    		timeout : 10000,
											    		success:function(d){
											    			try {
																if(d.s){
												    				justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'suc',
												    					paySn:order_pay_sn
												    				});
												    			}
												    			else{
												    				justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'err',
												    					paySn:order_pay_sn
												    				});
												    			}
															} catch (e) {
																// TODO: handle exception
																justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'err',
												    					paySn:order_pay_sn
												    			});
															}
											    		},
											    		error:function(d){
											    			justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
											    					payResult:'err',
											    					paySn:order_pay_sn
											    			});
											    		}	
											    	});
												 }
											}
										} catch (e) {
											// TODO: handle exception
	//										if(event.url.indexOf("close.html") != -1){
												winopencz.close();
		//										//判断支付成功没有
											    	var datas={
											    			user_id:user.id,
											    			v:user.v,
											    			pay_sn:order_pay_sn
											    	};
											    	console.log(datas);
											    	$.ajax({
											    		url:common.apiPath+'/zhixines/api/GetRedPacket/checkOrderIsPay',
											    		type:'post',
											    		dataType:'json',
											    		data:datas,
											    		async: true,
											    		timeout : 10000,
											    		success:function(d){
											    			try {
																if(d.s){
												    				justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'suc',
												    					paySn:order_pay_sn
												    				});
												    			}
												    			else{
												    				justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'err',
												    					paySn:order_pay_sn
												    				});
												    			}
															} catch (e) {
																// TODO: handle exception
																justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
												    					payResult:'err',
												    					paySn:order_pay_sn
												    			});
															}
											    		},
											    		error:function(d){
											    			justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{
											    					payResult:'err',
											    					paySn:order_pay_sn
											    			});
											    		}	
											    	});
//											me.util.showPop('数据异常：哦豁，程序开小差了，紧急修复中...');
											/*日志打印处*/
											glob.logAjax('arrearage',e,'/zhixines/api/orderPay/order_pay',totalData,'arrearage_yuepay的exit异常'+user.id,'4');/*日志打印处*/
										}
										/*---------------------------*/
										/*启用*/
										me.comp('button1arreage').set({
											'disabled' : false
										});
										/*启用*/
									});
									/*--------------------------监听close----------------------------*/
							} catch (e) {
								// TODO: handle exception
								/*启用*/
										me.comp('button1arreage').set({
											'disabled' : false
										});
										/*启用*/
								me.util.showPop('数据异常：哦豁，程序开小差了，紧急修复中...');
								/*日志打印处*/
								glob.logAjax('arrearage',e,'/zhixines/api/orderPay/order_pay',totalData,'arrearage_yuepay的支付异常'+user.id,'2');/*日志打印处*/
							}
							
					   }
			}},error:function(e,textStatus){
//				console.log(textStatus);
				me.comp('button1arreage').set({
								'disabled' : false
					});
				/*日志打印处*/
				glob.logAjax('arrearge',e+'  '+textStatus,'alljiaofei_ajaxError'+user.id,'3');/*日志打印处*/
				if(textStatus=='timeout'&&restartCount<2){
					restartCount++;
					me.util.showPop('无网络/网络异常/网络超时：连接信号太弱，请重试...');

				}else if(textStatus=='timeout'&&restartCount>2){
					me.util.showPop('无网络/网络异常：连接信号太弱，请检查网络');
				}else{
					me.util.showPop('数据异常：哦豁，程序开小差了，紧急修复中...');
				}
			}}); 			
	};

	Model.prototype.modelParamsReceive = function(event){

	};

	Model.prototype.radio2Click = function(event){

	};

	Model.prototype.zfDataCustomRefresh = function(event){
		//全部设置为0
		order_pay_sn='';
		redBmoneyV=0;
		moneyV=0;
		moneyZ=0;
		zhekou=0;
		redNum=0;
		this.moneyRel.set(0.00);
		this.redBshow.set(0.00);
		var data = {
			lid : user.lid,
			cost_id : sessionStorage.getItem('pay_awy')
		};
		var me = this;
		$.post(this.util.apiPath + "/zhixines/api/jiaofei/payment_config", data, function(d) {
			try {
				localStorage.setItem('name', "yuepay");//存储支付方式
				event.source.loadData(JSON.parse(d).datas.payment_list);
				sessionStorage.setItem('pay_awy','0');
				//先将moneyV赋值为第一个取得的值
				var num=JSON.parse(d).datas.payment_list[0].discount*me.params.data.money/100*sessionStorage.getItem('zhifuyongzhekou')/100;
				moneyV=parseFloat(parseFloat(parseFloat(num).toFixed(2)));
				for (var int = 0,l=JSON.parse(d).datas.payment_list.length; int < l; int++) {
					if(JSON.parse(d).datas.payment_list[int].payment_code=="yuepay"){
						var nummer = JSON.parse(d).datas.payment_list[int].discount*me.params.data.money/100*sessionStorage.getItem('zhifuyongzhekou')/100;
						//记录折扣
						zhekou=JSON.parse(d).datas.payment_list[int].discount/100;	
						me.money.set(parseFloat(parseFloat(parseFloat(me.params.data.money).toFixed(2))));	
						//先将红包打完折之后的结果存储
						moneyZ=parseFloat(parseFloat(parseFloat(nummer).toFixed(2)));			
					}
					//关于红包input框的显示,显示他们之中的最大值
					num=JSON.parse(d).datas.payment_list[int].discount*me.params.data.money/100*sessionStorage.getItem('zhifuyongzhekou')/100;
					if(parseFloat(parseFloat(parseFloat(num).toFixed(2)))>moneyV){
						moneyV=parseFloat(parseFloat(parseFloat(num).toFixed(2)));
					}
				}	
			} catch (e) {
					// TODO: handle exception
				/*日志打印处*/
				glob.logAjax('arrearage',e,'/zhixines/api/jiaofei/payment_config',data,'arrearage请求payment_config异常','4');/*日志打印处*/
			}
			//请求完成之后再请求红包余额接口
			var url=common.apiPath+'/zhixines/api/GetRedPacket/getUserRpAccount';
			var data={
				user_id:user.id,
				v:user.v
			};
			$.ajax({
				url:url,
				data:data,
				type:'post',
				dataType:'json',
				async:true,
				timeout : 10000,
				success:function(d){
					try{
						//初始input框显示
						me.redBmoney.set(d.redpacket_amount);
						redBmoneyV=parseFloat(d.redpacket_amount);
						me.redBshow.set(0.00);
						//计算默认方式的-红包金额的再打折的值
						redNum=zhekou*(me.params.data.money/100*sessionStorage.getItem('zhifuyongzhekou')-$('[xid=input1redMoney]').val());
						if(d.redpacket_amount==undefined){
							me.redBmoney.set(0.00);
							return;
						}
						me.moneyRel.set(parseFloat(parseFloat(parseFloat(redNum).toFixed(2))));
						}
					catch(e){
							console.log('error：xmej328'+e);
							/*日志打印处*/
							glob.logAjax('arrearage',e,'/zhixines/api/GetRedPacket/getUserRpAccount',data,'arrearage请求getUserRpAccount异常','4');/*日志打印处*/
					}
				}
			});	
		});
		//var me=this;
		//请求红包接口		
	};
	//此为减去红包然后计算打折的费用
	var redNum=0;
	Model.prototype.li1Click = function(event){
		//红包input框置为0
		this.redBshow.set(0.00);
		this.comp('zfData').setValue('state',0);
		var row = event.bindingContext.$object;
		$(this).find("input[type='radio']").attr("checked",true);
		row.val("state",1);
		localStorage.setItem('name', row.val("payment_code"));
		var nummer =row.val("discount")*this.params.data.money/100*sessionStorage.getItem('zhifuyongzhekou')/100;
		this.money.set(parseFloat(parseFloat(parseFloat(this.params.data.money).toFixed(2))));
		redNum=row.val("discount")/100*(this.params.data.money/100*sessionStorage.getItem('zhifuyongzhekou')-$('[xid=input1redMoney]').val());
		moneyZ=parseFloat(parseFloat(parseFloat(nummer).toFixed(2)));
//		//没选红包金额，按原来打折的显示
		this.moneyRel.set(parseFloat(parseFloat(parseFloat(nummer).toFixed(2))));
		zhekou=row.val("discount")/100;
	};
	Model.prototype.tuichu = function(event){
		justep.Shell.closePage();
	};

	//返回我的主页
	Model.prototype.main = function(event){
		window.location.reload();
	};
	//查看订单
	Model.prototype.order = function(event){
		justep.Shell.showPage(require.toUrl('../user/user-main.w'));
	};
	//失去焦点之后
	Model.prototype.input1redMoneyBlur = function(event){
		console.log($('[xid=input1redMoney]').val());
		if($('[xid=input1redMoney]').val()==''||$('[xid=input1redMoney]').val()==null){
			this.redBshow.set(0.00);
		}
		this.redBshow.set(parseFloat($('[xid=input1redMoney]').val()).toFixed(2));
		redNum=(moneyV-$('[xid=input1redMoney]').val())*zhekou;
		if(choosed){
			this.moneyRel.set(parseFloat((moneyV-$('[xid=input1redMoney]').val())*zhekou).toFixed(2));
		}
	};
//	//input框获得焦点
	//键盘弹起事件
	Model.prototype.input1redMoneyKeyup = function(event){
		var obj_value=$('[xid=input1redMoney]').val();
		obj_value = obj_value.replace(/[^\d.]/g,""); //清除"数字"和"."以外的字符
		obj_value = obj_value.replace(/^\./g,""); //验证第一个字符是数字
		obj_value = obj_value.replace(/\.{2,}/g,"."); //只保留第一个, 清除多余的
		obj_value = obj_value.replace(".","$#$").replace(/\./g,"").replace("$#$",".");
		obj_value = obj_value.replace(/^(\-)*(\d+)\.(\d\d).*$/,'$1$2.$3'); //只能输入两个小数
		//obj_value = obj_value.replace(/\b(0+)/gi,"");
		$('[xid=input1redMoney]').val(obj_value);
		if($('[xid=input1redMoney]').val()-moneyV>0&&moneyV<=redBmoneyV){
			$('[xid=input1redMoney]').val(moneyV);
			obj_value=moneyV;
		}else if($('[xid=input1redMoney]').val()-redBmoneyV>=0){
			$('[xid=input1redMoney]').val(redBmoneyV);
			obj_value=redBmoneyV;
		}else{
			//$('[xid=input1redMoney]').val(obj_value);
		}
		this.redBshow.set(obj_value);
		if(choosed){
			this.moneyRel.set(parseFloat((moneyV-$('[xid=input1redMoney]').val())*zhekou).toFixed(2));
		}
	};
	//点击选中红包支付
	//选中标识
	var choosed=true;
	Model.prototype.span3chooseClick = function(event){
		choosed=!choosed;
		if(choosed){
			$('[xid=image3choose]').css('display','block');
			this.moneyRel.set(parseFloat(parseFloat(parseFloat(redNum).toFixed(2))));
		}
		else{
			$('[xid=image3choose]').css('display','none');
			this.moneyRel.set(moneyZ);
		}
	};
	return Model;
});

