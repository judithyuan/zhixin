define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};
	//	定义函数
	var common = require("../js/common");
	Model.prototype.util = common;
	var user = justep.Shell.user.get();//获取缓存用户表信息数据
	//支付的状态
	var payState;
	//订单号
	var paySn;
	//左边的按钮
	Model.prototype.leftBtnClick = function(event){
		var me=this;
		if(payState=="suc"){
			var url = require.toUrl('../guanjia/Paycost.w');
			justep.Shell.showPage(url,{});
		}
		else if("err"){
			window.location.href = 'tel:' + 4001861626;
//			var data = {
//						id : user.lid
//			};
//			$.post(this.util.apiPath +'/zhixines/api/tianqiyubao/wyhj',data, function(d){
//				if(d.s!=undefined){
//					me.util.showPop(d.msg);
//				}else{
//					var phone = d[0].phone;
//					if (d[0].phone) {
//						window.location.href = 'tel:' + phone;
//					} else {
//						me.util.showPop('暂无物业求助电话');
//					}
//				}	
//			});
		}
	};
	//右边的按钮
	Model.prototype.rightBtnClick = function(event){
		if(payState=="suc"){
			var url = require.toUrl('../user/jiaofeiorder.w');
			justep.Shell.showPage(url,{});
		}
		else if("err"){
			var url = require.toUrl('../guanjia/Paycost.w');
			justep.Shell.showPage(url,{});
		}
	};
	//点击领取红包跳转事件
	Model.prototype.span3btnClick=function(event){
		//console.log("跳转");
		var url = require.toUrl('../user/redDelitle.w');
		justep.Shell.showPage(url,{paySn:this.params.paySn});
		$('[xid=div1zzc]').css('display','none');
	}
	Model.prototype.span5qxClick = function(event){
		$('[xid=div1zzc]').css('display','none');
	};
	var timers;
	Model.prototype.modelLoad = function(event){
		me=this;
		payState=this.params.payResult;
		checkSucc();
		//延时三秒之后再次请求是否支付成功
		timers=setInterval(function(){checkSucc();if(payState=='suc'){clearInterval(timers)}},3000); 
	};
	Model.prototype.backBtnClick = function(event){
		justep.Shell.showPage(require.toUrl('../user/user-main.w'),{
		});
	};
	var me;
	//封装检查支付成功再请求红包的方法
	var checkSucc=function(){
		paySn=me.params.paySn;
		//console.log("checkSucc方法");
//		console.log("paySn----"+paySn);
		var datas={
			user_id:user.id,
			v:user.v,
			pay_sn:paySn
		};
//		console.log("数据");
//		console.log(datas);
		$.ajax({
			url:common.apiPath+'/zhixines/api/GetRedPacket/checkOrderIsPay',
			type:'post',
			dataType:'json',
			data:datas,
			async: false,
			success:function(d){
				try{
					if(d.s){
						payState='suc';
						//请求是否有红包
						datas={
								user_id:user.id,
								loupan_id:user.lid,
								v:user.v,
								act:'check',
								pay_sn:paySn
						};
						$.ajax({
							url:common.apiPath+'/zhixines/api/GetRedPacket/getBillRedPacket',
							type:'post',
							dataType:'json',
							data:datas,
							async: true,
							success:function(d){
								try{
									if(d.s){
										$('[xid=div1zzc]').css('display','block');
										$('[xid=span1reason]').html(d.redpacket_name);
									}
									else{
										$('[xid=div1zzc]').css('display','none');
									}
								}
								catch(e){
									/*日志打印处*/
									glob.logAjax('redBcheck-116',e,url,data,'redBcheck','4');/*日志打印处*/	
								}
							}
						});
						
					}
					else{
						payState='err';
					}
				}
				catch(e){
					/*日志打印处*/
					glob.logAjax('arrearagePay-128',e,url,data,'arrearagePay','4');/*日志打印处*/	
				}
			}	
		});
		//根据payState设置各种状态
		$('[xid=span1state]').html(payState=='suc'?'支付成功':(payState=='err'?'支付失败':''));
	 	$('[xid=span2Info]').html(payState=='suc'?'接下来您可以：':(payState=='err'?'系统异常，您可以：':''));
	 	$('[xid=image1suc]').css('display',payState=='suc'?'inline-block':'none');
	 	$('[xid=image2err]').css('display',payState=='err'?'inline-block':'none');
	 	$('[xid=leftBtn]').addClass(payState=='suc'?'sucLeftBtn':(payState=='err'?'errLeftBtn':''));
	 	$('[xid=span5left]').html(payState=='suc'?'继续缴费':(payState=='err'?'联系客服':''));
	 	$('[xid=rightBtn]').addClass(payState=='suc'?'sucRightBtn':(payState=='err'?'errRightBtn':''));
	 	$('[xid=span6right]').html(payState=='suc'?'查看缴费记录':(payState=='err'?'重新缴费':''));
	}
	//全部重置
	Model.prototype.modelActive = function(event){
		payState='';
		timers=null;
		paySn='';
		checkSucc();
		$('[xid=span1state]').html('');
		$('[xid=span2Info]').html('')
		$('[xid=image1suc]').css('display','none');
		$('[xid=image2err]').css('display','none');
		$('[xid=span5left]').html('');
		$('[xid=span6right]').html('');
		try{
			$('[xid=leftBtn]').removeClass('sucLeftBtn');
			$('[xid=leftBtn]').removeClass('errLeftBtn');
			$('[xid=rightBtn]').removeClass('sucRightBtn');
			$('[xid=rightBtn]').removeClass('errRightBtn');
		}
		catch(e){
			console.log("类名不存在")
		}
		//延时三秒之后再次请求是否支付成功
		timers=setInterval(function(){checkSucc();if(payState=='suc'){clearInterval(timers)}},2000); 
	};
	//离开此页面
	Model.prototype.modelInactive = function(event){
		clearInterval(timers);
		payState='';
		timers=null;
		paySn='';
		$('[xid=span1state]').html('');
		$('[xid=span2Info]').html('')
		$('[xid=image1suc]').css('display','none');
		$('[xid=image2err]').css('display','none');
		$('[xid=span5left]').html('');
		$('[xid=span6right]').html('');
		try{
			$('[xid=leftBtn]').removeClass('sucLeftBtn');
			$('[xid=leftBtn]').removeClass('errLeftBtn');
			$('[xid=rightBtn]').removeClass('sucRightBtn');
			$('[xid=rightBtn]').removeClass('errRightBtn');
		}
		catch(e){
			console.log("类名不存在")
		}
	};
	return Model;
});