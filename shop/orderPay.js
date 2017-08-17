define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var wxPay = require('$UI/system/api/native/wxPay');
	require("../js/autoSize");
	var Model = function(){
		this.callParent();
		this.money=justep.Bind.observable('');//订单金额
	};
	//	定义函数
		$(document).ajaxStart(function() {
//	    	$('[xid=loadpopOver]').show();
	    });
	    $(document).ajaxStop(function() {
//	    	$('[xid=loadpopOver]').hide();
	    });
	    $(document).ajaxError(function() {
	    	//alert(12);
//	    	$('[xid=Overlineerror]').show();
	    });
	//	定义函数
	var common = require("../js/common");
	Model.prototype.util = common;
	var user = justep.Shell.user.get();//获取缓存用户表信息数据
	
	var ifyuepay=1;
	
//	var ws = io.connect("http://notice.pandaehome.com");

 	//	定义函数请求-----------------------------------------------------
//	$(document).ajaxStart(function() {
////		$('[xid=loadpopOver]').show();
//	});
//	$(document).ajaxStop(function() {
////		$('[xid=loadpopOver]').hide();
//	});
//	$(document).ajaxError(function() {
////		$('[xid=loadpopOver]').hide();
////		$('[xid=Overlineerror]').show();
//	});
	//请求出错
	Model.prototype.denglu = function(event){
		localStorage.setItem('x5Version + introPage','yes');
		window.location.reload();
	};
	//	定义函数请求-----------------------------------------------------
    //消息推送----------------------- 	
	Model.prototype.zfDataCustomRefresh = function(event){
				//支付折扣
		var newdatas ={
			lid : /*'9'*/user.lid,
			key : localStorage.getItem('vv'),	
			pay_sn : this.params.pay_snSend,
		},me=this;
		$.ajax({
			url : this.util.shopPath + "/mobile/index.php?act=payment&op=payment_discount",
			data : newdatas ,
			dataType : 'json',
			type : 'post',
			async : true,
			success : function(e){
				justep.Shell.payyouhui.set(e);
				try {
					sessionStorage.setItem('e.datas.yuepay.order_amount',e.datas.yuepay.order_amount);
					me.money.set(sessionStorage.getItem('e.datas.yuepay.order_amount'));
				} catch (e) {
					// TODO: handle exception
					/*日志打印处*/
					glob.logAjax('orderPay',e,newdatas,'act=payment&op=payment_discount','orderPay-支付折扣异常'+user.id,'3');/*日志打印处*/
				}				
			},
			error:function(e){
				console.log(e)
				/*日志打印处*/
				glob.logAjax('orderPay',e,newdatas,'act=payment&op=payment_discount','orderPay-支付折扣请求异常'+user.id,'3');/*日志打印处*/
			}
		});
		
		var data = {
				lid : /*'9'*/user.lid,
				cost_id : '0'//sessionStorage.getItem('pay_awy')
		};
		$.ajax({
			url : this.util.apiPath + "/zhixines/api/jiaofei/payment_config",
			data : data ,
			dataType : 'json',
			type : 'post',
			async : true,
			success : function(e){
				if(e.type=='msg'){
					me.util.showPop(e.datas.msg);
					return false;
				}
				var arry = e.datas.payment_list;
				try {
					for (var int = 0; int < arry.length; int++) {
//						alert(e.datas.payment_list[int].payment_code=="yuepay");
						if(e.datas.payment_list[int].payment_code=="yuepay"){
							ifyuepay=1;
						}else{
							ifyuepay=0;
						}		
					}
					localStorage.setItem('name', "yuepay");//存储支付方式
					event.source.loadData($.extend(true, arry , justep.Shell.payyouhui.get().datas.count));
					console.log(justep.Shell.payyouhui.get());
				} catch (e) {
					// TODO: handle exception
					/*日志打印处*/
					glob.logAjax('orderPay',e,'/zhixines/api/jiaofei/payment_config',data,'orderPay-支付方式错误异常'+user.id,'3');/*日志打印处*/
				}
				
			},
			error:function(e){
				console.log(e);
			}
		});

	};

	Model.prototype.li1Click = function(event){
		
		this.comp('zfData').setValue('state',0);
		var zfData=this.comp('zfData');
		var row = event.bindingContext.$object;
		$(this).find("input[type='radio']").attr("checked",true);
		row.val("state",1);
		localStorage.setItem('name', row.val("payment_code"));//存储支付方式
//		if(){}
//		alert(row.val("payment_code"));
		var stype=row.val("payment_code");
		if(stype=='tf_alipay'){this.money.set(justep.Shell.payyouhui.get().datas.tf_alipay.order_amount);}
		if(stype=='alipay'){this.money.set(justep.Shell.payyouhui.get().datas.alipay.order_amount);}
		if(stype=='tfpay'){this.money.set(justep.Shell.payyouhui.get().datas.tfpay.order_amount);}
		if(stype=='wxpay'){this.money.set(justep.Shell.payyouhui.get().datas.wxpay.order_amount);}
		if(stype=='yuepay'){this.money.set(justep.Shell.payyouhui.get().datas.yuepay.order_amount);}
	};

	Model.prototype.radio2Click = function(event){
		
	};

	Model.prototype.confirmBtnClick = function(event){
		
		var data = {
			pay_sn : this.params.pay_snSend,//localStorage.getItem('pay_sn'),//订单号
			pay_sts : localStorage.getItem('name'),//支付方式
//			user_id : user.id,//id
			key : localStorage.getItem('vv'),//'c229788b27b907fe759a01bba3d02ac5',//localStorage.getItem('vv'),
//			payment_code : localStorage.getItem('name'),//支付方式
		};
		var me = this;
		$.post(this.util.shopPath +'/mobile/index.php?act=member_buy&op=pay', data, function(d) {
			try {
				var orderID = d.info.order_id;
				var rmb =parseFloat(d.info.order_amount).toFixed(2);/*localStorage.getItem('money');*/////Math.abs(d.info.order_amount);
//				var rmb =0.01;
				var seller = d.info.seller;//"accuratebest@163.com";
				var notifyUrl = d.pay_url;
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
					/*付付付付付付付付付付付付付付付付付付付付付付付付付付付付付*////
					var winopencz;
						var myCallback = function(event) {  
							 console.log("event.type"+event.type); 
						};
						try {
							if(notifyUrl.length>0){
								winopencz=window.open(notifyUrl, '_blank', 'location=no,toolbar=no,closebuttoncaption=关闭');
								winopencz.addEventListener('loadstart',function(event){
								//alert("loadstart"+event.url);
								try {
									if(event.url.length>0){
									 var stringUrl=event.url;
									   var arr=new Array();
									    arr=stringUrl.split(".html");
									    if(arr[0].length>0){
									    	var substring=arr[0].substring(arr[0].length-5,arr[0].length);
									    	if(substring=="close"){
									    		winopencz.close();
//									    		winopencz.removeEventListener('loadstart', myCallback);
									    		justep.Shell.showPage(require.toUrl('../user/user-main.w'));
									    	}
									    }	
									}
								} catch (e) {
									// TODO: handle exception
								}
								/*---------------------------------*/
								  	               
					           });
								
							}
						} catch (e) {
							// TODO: handle exception
							me.util.showPop('xmej:账号异常请联系客服');
							/*日志打印处*/
							glob.logAjax('orderPay',e,'act=member_buy&op=pay',data,'orderPay-商城tf_alipay支付异常'+user.id,'3');/*日志打印处*/
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
						},
						cancel : function(e) {
								me.util.showPop('支付取消！');
						},
						fail : function(e) {
								me.util.showPop('支付失败！');
								console.log(e);
								/*日志打印处*/
								glob.logAjax('orderPay'+cc,e,'act=member_buy&op=pay',data,'orderPay-商城wxpay fail'+user.id,'3');/*日志打印处*/
						}
					});

				   }
				   if(localStorage.getItem('name') == "tfpay"){

						var winopencz;
						var myCallback = function(event) {  
							 console.log("event.type"+event.type); 
						};
						try {
							if(d.pay_url.length>0){//********************//
								/*----------------------*/
								winopencz=window.open(d.pay_url, '_blank', 'location=no,toolbar=no,closebuttoncaption=关闭');
								/*loadstart*/
								winopencz.addEventListener('loadstart',function(event){
									try {
										if(event.url.length>0){
											 if(event.url.indexOf("close.html") != -1){
													winopencz.close();
	//									    		winopencz.removeEventListener('loadstart', myCallback);
										    		justep.Shell.showPage(require.toUrl('../user/user-main.w'));
											 }
										}
									} catch (e) {
										// TODO: handle exception
										console.log('error:xmej277'+e);
									}
									/*---------------------------*/
								});
								/*loadstop*/
								winopencz.addEventListener('loadstop',function(event){
									if(event.url.length>0){
										 if(event.url.indexOf("close.html") != -1){
												winopencz.close();
//									    		winopencz.removeEventListener('loadstop', myCallback);
									    		justep.Shell.showPage(require.toUrl('../user/user-main.w'));
										 }
									}/*---------------------------*/
								});
								/*loaderror*/
								winopencz.addEventListener('loaderror',function(event){
									if(event.url.length>0){
										 if(event.url.indexOf("close.html") != -1){
												winopencz.close();
//									    		winopencz.removeEventListener('loaderror', myCallback);
									    		justep.Shell.showPage(require.toUrl('../user/user-main.w'));
										 }
									}/*---------------------------*/
								});
								/*exit*/
								winopencz.addEventListener('exit',function(event){
									try {
										if(event.url.length>0){
										 if(event.url.indexOf("close.html") != -1){
												winopencz.close();
//									    		winopencz.removeEventListener('exit', myCallback);
									    		justep.Shell.showPage(require.toUrl('../user/user-main.w'));
										 }
										}
									} catch (e) {
										// TODO: handle exception
										winopencz.close();
	//									    		winopencz.removeEventListener('exit', myCallback);
										    		justep.Shell.showPage(require.toUrl('../user/user-main.w'));
										console.log('error:xmej313'+e);
									}
								/*---------------------------*/
								});
								/*--------------------------监听close----------------------------*/
							}//********************//
						} catch (e) {
							// TODO: handle exception
						}
						
				   }
				   if(localStorage.getItem('name') == "yuepay"){
						var winopencz;
						var myCallback = function(event) {  
							 console.log("event.type"+event.type); 
						};
						try {
							if(d.pay_url.length>0){	/**////////////////			
																/*----------------------*/
								winopencz=window.open(d.pay_url, '_blank', 'location=no,toolbar=no,closebuttoncaption=关闭');
								/*loadstart*/
								winopencz.addEventListener('loadstart',function(event){
									if(event.url.length>0){
										 if(event.url.indexOf("close.html") != -1){
												winopencz.close();
//									    		winopencz.removeEventListener('loadstart', myCallback);
									    		justep.Shell.showPage(require.toUrl('../user/user-main.w'));
										 }
									}/*---------------------------*/
								});
								/*loadstop*/
								winopencz.addEventListener('loadstop',function(event){
									if(event.url.length>0){
										 if(event.url.indexOf("close.html") != -1){
												winopencz.close();
//									    		winopencz.removeEventListener('loadstop', myCallback);
									    		justep.Shell.showPage(require.toUrl('../user/user-main.w'));
										 }
									}/*---------------------------*/
								});
								/*loaderror*/
								winopencz.addEventListener('loaderror',function(event){
									if(event.url.length>0){
										 if(event.url.indexOf("close.html") != -1){
												winopencz.close();
//									    		winopencz.removeEventListener('loaderror', myCallback);
									    		justep.Shell.showPage(require.toUrl('../user/user-main.w'));
										 }
									}/*---------------------------*/
								});
								/*exit*/
								winopencz.addEventListener('exit',function(event){
									try {
										if(event.url.length>0){
											 if(event.url.indexOf("close.html") != -1){
													winopencz.close();
	//									    		winopencz.removeEventListener('exit', myCallback);
										    		justep.Shell.showPage(require.toUrl('../user/user-main.w'));
											 }
										}
									} catch (e) {
										// TODO: handle exception
										winopencz.close();
										justep.Shell.showPage(require.toUrl('../user/user-main.w'));
										console.log('error:xmej313'+e);
										/*日志打印处*/
										glob.logAjax('orderPay',e,'act=member_buy&op=pay',data,'orderPay-商城yuepay的exit异常'+user.id,'3');/*日志打印处*/
									}
									/*---------------------------*/
								});
								/*--------------------------监听close----------------------------*/
							}/**////////////////	
						} catch (e) {
							// TODO: handle exception
						}
							
				   }
					
			} catch (e) {
					// TODO: handle exception
				me.util.showPop('数据异常：哦豁，程序开小差了，紧急修复中...');
				/*日志打印处*/
				glob.logAjax('orderPay',e,'/mobile/index.php?act=member_buy&op=pay',data,'orderPay-商城支付错误异常'+user.id,'3');/*日志打印处*/
			}
		}); 
	};

	Model.prototype.modelParamsReceive = function(event){
		console.log(this.params.order_amount);
//		alert(ifyuepay);
		if(ifyuepay==0){
			this.money.set(this.params.order_amount);
			return false;
		}
		if(!!sessionStorage.getItem('e.datas.yuepay.order_amount')){
			this.money.set(sessionStorage.getItem('e.datas.yuepay.order_amount'));
			console.log(sessionStorage.getItem('e.datas.yuepay.order_amount')+'modelParamsReceive')
		}else{
//			this.money.set('￥'+this.params.order_amount);
		}	
		
		
	};
	Model.prototype.backBtnClick = function(event){
		justep.Shell.showPage(require.toUrl('../shop/shopOrder.w'),{
	    	tfpay : 'tfpayover'
	 	});
	};
	Model.prototype.span9Click = function(event){
		localStorage.setItem('tips','0');
		$('#span99').hide();
		var url = require.toUrl('../user/entermsg.w');
		justep.Shell.showPage(url,{
			
		});
	};

	Model.prototype.col3Click = function(event){
		justep.Shell.closePage();
	};
	/*页面激活*/
	Model.prototype.modelActive = function(event){
		this.comp('payDta').refreshData();
		this.comp('zfData').refreshData();
		this.comp('data').refreshData();
		if(!!sessionStorage.getItem('e.datas.yuepay.order_amount')){
			this.money.set(sessionStorage.getItem('e.datas.yuepay.order_amount'));
		}	
		
	};
	/*页面离开*/
	Model.prototype.modelInactive = function(event){
		sessionStorage.clear('e.datas.yuepay.order_amount');
		localStorage.setItem('name','')
	};

	return Model;
});

