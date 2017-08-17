define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var wxPay = require('$UI/system/api/native/wxPay');
	require("$UI/system/lib/cordova/cordova");
	require("cordova!com.justep.cordova.plugin.alipay");
	var Model = function(){
		this.callParent();
		this.money=justep.Bind.observable('');//订单金额
	};
	//	定义函数
	var common = require("../js/common");
	Model.prototype.util = common;
	var user = justep.Shell.user.get();//获取缓存用户表信息数据
//	var ws = io.connect("http://notice.pandaehome.com");

	/*页面激活*/
	Model.prototype.modelActive = function(event){
		this.comp('zfData').refreshData();
	};
	/*页面离开*/
	Model.prototype.modelInactive = function(event){
		localStorage.setItem('name','');
	};
	Model.prototype.modelLoad = function(event){
	console.log(window.localStorage);
	};
//	确认支付---------------------------
	Model.prototype.button1Click = function(event){
		var data = {
			user_id : user.id,
			lid:user.lid,
			bid:user.bid,
			room_id:user.rid,
			activity_id:this.params.activity_id,
			v:localStorage.getItem('vv'),
			payment_code :localStorage.getItem('name'),//支付方式
		};
		
		var totalData = $.extend(true,data,this.params.data);//切换订单接口
		var me = this;
		this.comp('button1activityPay').set({
			'disabled' : 'true'
		});	
		$.ajax({
				url:this.util.apiPath +'/zhixines/api/activity/CreateActiveOrder',
				data:data,
				dataType:'json',
				async: true,
				type:'post',
				success:function(e){
				/*启用*/
										me.comp('button1activityPay').set({
											'disabled' : false
										});
										/*启用*/
				try {
					var d=e.datas;
					var orderID = d.order_id;
					var rmb =parseFloat(d.order_amount).toFixed(2);
					var seller = d.seller;
					var notifyUrl = d.notifyUrl;
				} catch (e) {
					// TODO: handle exception
					
					me.comp('button1activityPay').set({
						'disabled' : false
					});
					me.util.showPop('数据异常：哦豁，程序开小差了，紧急修复中...');
					/*日志打印处*/
					glob.logAjax('activityPay',e,'/zhixines/api/activity/CreateActiveOrder',data,'activity请求支付参数异常','3');/*日志打印处*/	
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
						me.comp('button1activityPay').set({
							'disabled' : false
						});
						var responseCode = parseInt(message);
						if (responseCode === 9000) {
							me.util.showPop('支付成功！');
							justep.Shell.showPage('$UI/zhixin/user/user-main.w');
							localStorage.removeItem('money')
						} else if (!isNaN(responseCode)) {
							me.util.showPop('支付失败！');
	
						} else {
							me.util.showPop('支付失败！');
	
						}
					}, function(message) {
							me.util.showPop('支付失败！');
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
							if(d.notifyUrl.length>0){
								/*----------------------*/
								winopencz=window.open(d.notifyUrl, '_blank', 'location=no,toolbar=no,closebuttoncaption=关闭');
								/*loadstart*/
								winopencz.addEventListener('loadstart',function(event){
									if(event.url.length>0){
										if(event.url.indexOf("close.html") != -1){
											winopencz.close();
									    	justep.Shell.showPage(require.toUrl('../user/user-main.w'));
									    	me.comp('button1activityPay').set({
												'disabled' : false
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
										    	justep.Shell.showPage(require.toUrl('../user/user-main.w'));
											}
										}
									} catch (e) {
										// TODO: handle exception
										winopencz.close();
										justep.Shell.showPage(require.toUrl('../user/user-main.w'));
									}
									/*---------------------------*/
									me.comp('button1activityPay').set({
										'disabled' : false
									});
								});
								/*--------------------------监听close----------------------------*/
							}
						} catch (e) {
							// TODO: handle exception
							me.util.showPop('数据异常：哦豁，程序开小差了，紧急修复中...');
							/*日志打印处*/
							glob.logAjax('activityPay',e,'/zhixines/api/activity/CreateActiveOrder',data,'activity的tf_alipay支付异常','3');/*日志打印处*/
						}				
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
							me.util.showPop('支付成功');
							justep.Shell.showPage(require.toUrl('../user/user-main.w'));
							me.comp('button1activityPay').set({
								'disabled' : false
							});
						},
						cancel : function(e) {
								me.util.showPop('支付取消！');
								me.comp('button1activityPay').set({
									'disabled' : false
								});
						},
						fail : function(e) {
								me.util.showPop('支付失败！');
								me.comp('button1activityPay').set({
									'disabled' : false
								});
								/*日志打印处*/
								glob.logAjax('activityPay'+cc,e,'/zhixines/api/activity/CreateActiveOrder',data,'activity的微信支付异常','3');/*日志打印处*/
						}
					});
				   }
				   if(localStorage.getItem('name') == "tfpay"){

						var winopencz;
						var myCallback = function(event) {  
							 console.log("event.type"+event.type); 
						};
						try {
							if(d.notifyUrl.length>0){
								/*----------------------*/
								winopencz=window.open(d.notifyUrl, '_blank', 'location=no,toolbar=no,closebuttoncaption=关闭');
								/*loadstart*/
								try {
									winopencz.addEventListener('loadstart',function(event){
										if(event.url.length>0){
											if(event.url.indexOf("close.html") != -1){
												winopencz.close();
										    	justep.Shell.showPage(require.toUrl('../user/user-main.w'));
										    	me.comp('button1activityPay').set({
													'disabled' : false
												});
											}
										}/*---------------------------*/
									});
								} catch (e) {
									// TODO: handle exception
									console.log('error:xmej199'+e);
								}
								
								/*loadstop*/
								winopencz.addEventListener('loadstop',function(event){
									try {
										if(event.url.length>0){
											if(event.url.indexOf("close.html") != -1){
												winopencz.close();
										    	justep.Shell.showPage(require.toUrl('../user/user-main.w'));
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
										    	justep.Shell.showPage(require.toUrl('../user/user-main.w'));
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
										    	justep.Shell.showPage(require.toUrl('../user/user-main.w'));
											}
										}
									} catch (e) {
										// TODO: handle exception
										winopencz.close();
										justep.Shell.showPage(require.toUrl('../user/user-main.w'));
										console.log('error:xmej234'+e);
									}
									/*---------------------------*/
									me.comp('button1activityPay').set({
										'disabled' : false
									});
								});
								/*--------------------------监听close----------------------------*/
							}
						} catch (e) {
							me.comp('button1activityPay').set({
								'disabled' : false
							});
							// TODO: handle exception
							me.util.showPop('数据异常：哦豁，程序开小差了，紧急修复中...');
							/*日志打印处*/
							glob.logAjax('activityPay',e,'/zhixines/api/activity/CreateActiveOrder',data,'activity的tfpay支付异常','3');/*日志打印处*/
						}
						
				   }
				   if(localStorage.getItem('name') == "yuepay"){
//						me.util.showPop('即将开通!');
						var winopencz;
						try {
							/*----------------------*/
							winopencz=window.open(d.notifyUrl, '_blank', 'location=no,toolbar=no,closebuttoncaption=关闭');
								/*loadstart*/
								winopencz.addEventListener('loadstart',function(event){
									console.log("1111112222");
									try {
										if(event.url.length>0){
											if(event.url.indexOf("close.html") != -1){
												winopencz.close();
											    justep.Shell.showPage(require.toUrl('../user/user-main.w'));
											    me.comp('button1activityPay').set({
													'disabled' : false
												});
											}
										}/*---------------------------*/
									} catch (e) {
										// TODO: handle exception
										console.log('error:xmej268'+e);
									}
								});	
								/*loadstop*/
								winopencz.addEventListener('loadstop',function(event){
									try {
										if(event.url.length>0){
											if(event.url.indexOf("close.html") != -1){
												winopencz.close();
										    	justep.Shell.showPage(require.toUrl('../user/user-main.w'));
											}
										}
									} catch (e) {
										// TODO: handle exception
										console.log('error:xmej281'+e);
									}
									/*---------------------------*/
								});
								/*loaderror*/
								winopencz.addEventListener('loaderror',function(event){
									try {
										if(event.url.length>0){
											if(event.url.indexOf("close.html") != -1){
												winopencz.close();
										    	justep.Shell.showPage(require.toUrl('../user/user-main.w'));
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
										    	justep.Shell.showPage(require.toUrl('../user/user-main.w'));
											}
										}
									} catch (e) {
										// TODO: handle exception
										winopencz.close();
										justep.Shell.showPage(require.toUrl('../user/user-main.w'));
										console.log('error:xmej313'+e);
									}
									/*---------------------------*/
									me.comp('button1activityPay').set({
										'disabled' : false
									});
								});
								/*--------------------------监听close----------------------------*/
						} catch (e) {
							// TODO: handle exception
							me.util.showPop('数据异常：哦豁，程序开小差了，紧急修复中...');
							/*日志打印处*/
							glob.logAjax('activityPay',e,'/zhixines/api/activity/CreateActiveOrder',data,'activity的yuepay支付异常','3');/*日志打印处*/
							me.comp('button1activityPay').set({
								'disabled' : false
							});
						}
						
				   }
			},
			error: function(e,textStatus){
				me.comp('button1activityPay').set({
					'disabled' : false
				});
				if(textStatus=='timeout'&&restartCount<2){
					restartCount++;
					me.util.showPop('无网络/网络异常/网络超时：连接信号太弱，请重试...');

				}else if(textStatus=='timeout'&&restartCount>2){
					me.util.showPop('无网络/网络异常：连接信号太弱，请检查网络');
				}else{
					me.util.showPop('数据异常：哦豁，程序开小差了，紧急修复中...');
				}
				/*日志打印处*/
				glob.logAjax('activityPay',e,'/zhixines/api/activity/CreateActiveOrder',data,'activityPay的ajax请求错误','3');/*日志打印处*/
			}
			
			}); 			
	};
//确认支付结束--------------------------------------------
	Model.prototype.modelParamsReceive = function(event){
		this.money.set(parseFloat(this.params.money).toFixed(2));
	};

	Model.prototype.radio2Click = function(event){

	};
//初始化支付方式列表
	Model.prototype.zfDataCustomRefresh = function(event){
		var data = {
				user_id:user.id,
				v:localStorage.getItem('vv'),
				activity_id:this.params.activity_id
		};
		var me = this;
//		$.post(this.util.apiPath + "/zhixines/api/jiaofei/pay", data, function(d) {
		$.post(this.util.apiPath + "/zhixines/api/activity/pay_order_list", data, function(d) {
			try {
				localStorage.setItem('name', "yuepay");//存储支付方式
				console.log(JSON.parse(d).datas.payment_list);
				event.source.loadData(JSON.parse(d).datas.payment_list);
				sessionStorage.setItem('pay_awy','0');
				for (var int = 0,l=JSON.parse(d).datas.payment_list.length; int < l; int++) {
					if(JSON.parse(d).datas.payment_list[int].payment_code=="yuepay"){
						var nummer = d.datas.wallet_allowance*me.params.money/100;
						me.money.set(parseFloat(nummer).toFixed(2));
					}
				}
			} catch (e) {
				// TODO: handle exception
				console.log('error：xmej328'+e);
				/*日志打印处*/
				glob.logAjax('activityPay',e,'/zhixines/api/activity/pay_order_list',data,'activityPay的初始化支付方式列表异常','3');/*日志打印处*/
			}
			
		});
	};
	//选择支付方式
	Model.prototype.li1Click = function(event){
//		debugger;
		this.comp('zfData').setValue('state',0);
		var row = event.bindingContext.$object;
		localStorage.getItem('name','localP');
		$(this).find("input[type='radio']").attr("checked",true);
//		row.val("state",1);
//		row.val("state",1);
		for(var int = 0; int < 2; int++){
			row.val("state",1);
			console.log(this.comp('zfData').val("state"));
		}

		localStorage.setItem('name', row.val("payment_code"));
		var calculated_money = this.params.original_money*(row.val('discount'))/100;
		this.money.set(parseFloat(calculated_money).toFixed(2));

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
	return Model;
});

