define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
		this.pay_snCloseTime = justep.Bind.observable("");//订单关闭时间
		this.pay_sn = justep.Bind.observable("");//订单号
		this.pay_snState = justep.Bind.observable("");//订单支付状态
		this.pay_snName = justep.Bind.observable("");//订单姓名
		this.pay_snMobile = justep.Bind.observable("");//订单电话
		this.pay_snAdress = justep.Bind.observable("");//订单地址
		this.pay_snSmoney = justep.Bind.observable("");//订单商品金额
		this.pay_snLogisticsMoney = justep.Bind.observable("");//订单运费金额
		this.pay_snSale = justep.Bind.observable("");//商品金额
		this.pay_snHose = justep.Bind.observable("");//订单店铺名称
		this.pay_snadd_time = justep.Bind.observable("");//订单下单时间
		this.pay_snfukuanzhaungtai = justep.Bind.observable("");//订单付款时间截至状态
		this.freeOrder = justep.Bind.observable("");//订单freeOrder优惠
		this.payment_name = justep.Bind.observable("");//订单payment_name支付方式
		//已付款参数Logistics-------------------------------	
		this.pay_snLogisticsName = justep.Bind.observable("");//订单物流信息
		this.pay_snLogisticsNum = justep.Bind.observable("");//订单物流单号
		this.pay_snLogisticsStart = justep.Bind.observable("");//订单发货时间
		this.pay_snLogisticsEnd = justep.Bind.observable("");//订单收货时间
//		this.pay_snLogisticsjiezhi = justep.Bind.observable("");//订单截止日期
	};
//	定义函数
	var timeclearshouhuotimer;//定时器
	var common = require("../js/common");
	Model.prototype.util = common;
//	var user = justep.Shell.user.get();//获取缓存用户表信息数据
 	//	定义函数请求-----------------------------------------------------
	$(document).ajaxStart(function() {
		$('[xid=loadpopOver]').show();
	});
	$(document).ajaxStop(function() {
		$('[xid=loadpopOver]').hide();
	});
	$(document).ajaxError(function() {
		$('[xid=loadpopOver]').hide();
		$('[xid=Overlineerror]').show();
	});
	//请求出错
	Model.prototype.denglu = function(event){
//		justep.Shell.showPage(require.toUrl('./login.w'));
		window.location.reload();
	};
	//	定义函数请求-----------------------------------------------------
	Model.prototype.modelModelConstructDone = function(event){
//		alert(1);
	};	
    //消息推送----------------------- 
	Model.prototype.modelLoad = function(event){
//		alert(2)
		var url =this.util.shopPath+'/mobile/index.php?act=member_order&op=order_info',me=this;
		var Pdata={
			key:localStorage.getItem('vv'),//'c229788b27b907fe759a01bba3d02ac5',
			order_id:this.params.order_id//'2938'
		}
		$.ajax({
			url : url,
			data: Pdata,
			dataType : 'json',
			type :'post',
			async : false,
			success : function(e){
//				alert(!e.datas.order_info.store_phone);
				try {
					if(!e.datas.order_info.store_phone){
						/*没有电话的时候*/
						sessionStorage.setItem('xiongmaokefu', 'noMoblie');
					}else{
						sessionStorage.setItem('xiongmaokefu', e.datas.order_info.store_phone);
					}
					
					if(!e.datas.order_info.order_cancel_day){//没时间的时候
						$('[xid=quxiaoWZF]').hide();
					}	
				
				
					localStorage.setItem('order_id',e.datas.order_info.order_id);//订单id
	//				alert(e.datas.order_info.order_auto_receive_time);
					
					me.pay_snCloseTime.set(e.datas.order_info.order_cancel_day);//订单取消时间
					if(e.datas.order_info.order_state=='0'){//已取消
						$('[xid=bottom1dingdanxiagnq]').hide();
						$('[xid=content1order]').css('bottom','0');
					}
					if(e.datas.order_info.order_state=='10'){//代付款
						$('[xid=row4detailshouhuoshijian]').hide();
						$('[xid=buttonquerendingdfanxiangq]').hide();
						$('[xid=col26quxiao]').show();
						$('[xid=quzhifu]').show();
						me.pay_snfukuanzhaungtai.set('付款剩余时间');
						localStorage.setItem('order_auto_receive_time', e.datas.order_info.order_cancel_day);//自动取消截止时间
					}
					if(e.datas.order_info.order_state=='20'){//代发货
						$('[xid=bottom1dingdanxiagnq]').hide();
						$('[xid=content1order]').css('bottom','0');
	//					alert(e.datas.order_info.order_state);
					}
					if(e.datas.order_info.order_state=='30'){//代收货
						$('[xid=buttonquerendingdfanxiangq]').show();
						$('[xid=col26quxiao]').hide();
						$('[xid=quzhifu]').hide();
						me.pay_snfukuanzhaungtai.set('自动收货时间');
						localStorage.setItem('order_auto_receive_time', e.datas.order_info.order_auto_receive_time);//自动取消截止时间
					}
					if(e.datas.order_info.order_state=='40'){//完成
						$('[xid=bottom1dingdanxiagnq]').css('opacity','0');
						$('[xid=content1order]').css('bottom','0');
					}
	//				if(!e.datas.order_info.order_auto_receive_time){
	//					localStorage.setItem('order_auto_receive_time', e.datas.order_info.order_cancel_day);//自动取消截止时间
	//					me.pay_snCloseTime.set(e.datas.order_info.order_cancel_day);//订单取消时间
	//					$('[xid=col26quxiao]').show();
	//					$('[xid=quzhifu]').hide();
	//					$('[xid=buttonquerendingdfanxiangq]').show();
	////					alert(e.datas.order_info.order_cancel_day);
	//				}else{
	//					localStorage.setItem('order_auto_receive_time', e.datas.order_info.order_auto_receive_time);//自动取消截止时间
	//					me.pay_snCloseTime.set(e.datas.order_info.order_auto_receive_time);//订单关闭时间
	//					$('[xid=col26quxiao]').hide();
	//					$('[xid=quzhifu]').hide();
	//					$('[xid=buttonquerendingdfanxiangq]').show();
	//				}//如果是待付款的订单，则设置的为自动取消订单，否则为自动收货时间
	//				me.pay_snCloseTime.set(e.datas.order_info.order_cancel_day);//订单取消时间
	//				me.pay_snCloseTime.set(e.datas.order_info.order_auto_receive_time);//订单关闭时间
					me.payment_name.set(e.datas.order_info.payment_name);//订单payment_name支付方式
					me.comp('goodsData').loadData(e.datas.order_info.goods_list);
	//				alert(e.datas.order_info.pay_sn);
					me.pay_snadd_time.set('下单时间:'+e.datas.order_info.add_time);//订单下单时间
					me.pay_sn.set(e.datas.order_info.order_sn);//订单号
					localStorage.setItem('pay_sn',e.datas.order_info.pay_sn);//订单号存储
					me.pay_snState.set(e.datas.order_info.state_desc);//订单支付状态
					me.pay_snName.set(e.datas.order_info.reciver_name);//订单姓名
					me.pay_snMobile.set((e.datas.order_info.mob_phone).replace(/^(\d{3})\d{4}(\d{4})$/, "$1****$2"));//订单电话
					me.pay_snAdress.set(e.datas.order_info.reciver_addr);//订单地址
					me.pay_snSmoney.set(e.datas.order_info.real_pay_amount);sessionStorage.setItem('e.datas.order_info.order_amount',e.datas.order_info.real_pay_amount)//订单商品金额
					me.pay_snHose.set(e.datas.order_info.store_name);//订单店铺名称
					me.pay_snLogisticsMoney.set(e.datas.order_info.shipping_fee);//订单运费金额
					me.pay_snSale.set(e.datas.order_info.goods_amount);//goods_amountgoods_amount
					me.freeOrder.set(e.datas.order_info.discount_fee);;//订单discount_fee优惠
					//已付款参数Logistics-------------------------------	
					if(!e.datas.order_info.express_info.e_name){
						me.pay_snLogisticsName.set('暂未查到');//订单物流信息
					}else{
						me.pay_snLogisticsName.set(e.datas.order_info.express_info.e_name);//订单物流信息
					}
					if(!e.datas.order_info.shipping_code){
						me.pay_snLogisticsNum.set('暂未查到');//订单物流单号
					}else{
						me.pay_snLogisticsNum.set(e.datas.order_info.shipping_code);//订单物流单号
					}
					if(!e.datas.order_info.shipping_time){
						me.pay_snLogisticsStart.set('暂未发货');//订单发货时间
					}else{
						me.pay_snLogisticsStart.set(e.datas.order_info.shipping_time);//订单发货时间
					}
					if(!e.datas.order_info.finnshed_time){
						me.pay_snLogisticsEnd.set('等待确认收货');//订单收货时间pay_snHose
					}else{
						me.pay_snLogisticsEnd.set(e.datas.order_info.finnshed_time);//订单收货时间pay_snHose
					}
				} catch (e) {
					// TODO: handle exception
					console.log(e);
				}
			}
			
		});
		    //倒计时-------------------------------------------------------
//	    function getRdzfTime(){
////	    	alert(localStorage.getItem('order_auto_receive_time'));
//	        var EndTime= new Date(localStorage.getItem('order_auto_receive_time')); //截止时间 
//	//        var EndTime= new Date('2017-04-12 17:11:00'); //截止时间 
//	        var NowTime = new Date();
//	        var t =EndTime.getTime() - NowTime.getTime();
//	        /*var d=Math.floor(t/1000/60/60/24);
//	        t-=d*(1000*60*60*24);
//	        var h=Math.floor(t/1000/60/60);
//	        t-=h*60*60*1000;
//	        var m=Math.floor(t/1000/60);
//	        t-=m*60*1000;
//	        var s=Math.floor(t/1000);*/
//	//        console.log(t);
//	        if(t>0){
//		        var d=Math.floor(t/1000/60/60/24);
//		        var h=Math.floor(t/1000/60/60%24);
//		        var m=Math.floor(t/1000/60%60);
//		        var s=Math.floor(t/1000%60);
//	//	        console.log(d+ "天"+h+ "时"+m+ "分"+s+ "秒");
//		        try {
//		        	document.getElementById("timeId").innerHTML = d+ "天"+h+ "时"+m+ "分"+s+ "秒";	
//				} catch (e) {
//					// TODO: handle exception
//				}  
//	        }else{
//	        	try {
//					document.getElementById("timeId").innerHTML ="0天0时0分0秒";
//				} catch (e) {
//					// TODO: handle exception
//				}
//	//        	$('[xid=buttonquerendingdfanxiangq]').trigger('click');
//	//        	common.showPop('已到收货时间');
//	        	clearInterval(timeclearshouhuotimer);
//	        }
//	    }
//	    timeclearshouhuotimer = setInterval(getRdzfTime,1000);
  //倒计时-------------------------------------------------------
	    function getRdzfTime(){
//	        var EndTime= new Date(localStorage.getItem('order_auto_receive_time')); //截止时间 
//	        var timestamp = (new Date('2017-04-10 18:00:00').getTime());
	        var end=localStorage.getItem('order_auto_receive_time');//'2017-04-10 18:00:00';
//	        alert(end);
	        if(end==undefined||end==""||end==null){
	        	return false;
	        }
	        var date = end.substring(0,19); 
	        var date = end.replace(/-/g,'/'); 
	        var timestamp = (new Date(date).getTime())/1000;	    	    
	        var now = (Date.parse(new Date()))/1000;
		    var t1=timestamp-now; 	
		    
	        if(t1>0){
	        		 var d1=Math.floor(t1/(3600*24));
	        		 var h1=Math.floor((t1%(3600*24))/3600);
	        		 var m1=Math.floor((t1%3600)/60);
	        		 var s1=Math.floor(t1%60);
		        try {
		        	document.getElementById("timeId").innerHTML = d1+ "天"+h1+ "时"+m1+ "分"+s1+ "秒";	
				} catch (e) {
					// TODO: handle exception
				} 
				
	        }else{
	        	try {
					document.getElementById("timeId").innerHTML ="0天0时0分0秒";
				} catch (e) {
					// TODO: handle exception
				}
	//        	$('[xid=buttonquerendingdfanxiangq]').trigger('click');
	//        	common.showPop('已到收货时间');
	        	clearInterval(timeclearshouhuotimer);
	        }
	    }
	    timeclearshouhuotimer = setInterval(getRdzfTime,1000);
	    //倒计时end-------------------------------------------------------
	};
	Model.prototype.modelParamsReceive = function(event){
//    //倒计时-------------------------------------------------------
//    function getRdzfTime(){
//    	alert(localStorage.getItem('order_auto_receive_time'));
//        var EndTime= new Date(localStorage.getItem('order_auto_receive_time')); //截止时间 
////        var EndTime= new Date('2017-04-12 17:11:00'); //截止时间 
//        var NowTime = new Date();
//        var t =EndTime.getTime() - NowTime.getTime();
//        /*var d=Math.floor(t/1000/60/60/24);
//        t-=d*(1000*60*60*24);
//        var h=Math.floor(t/1000/60/60);
//        t-=h*60*60*1000;
//        var m=Math.floor(t/1000/60);
//        t-=m*60*1000;
//        var s=Math.floor(t/1000);*/
////        console.log(t);
//        if(t>0){
//	        var d=Math.floor(t/1000/60/60/24);
//	        var h=Math.floor(t/1000/60/60%24);
//	        var m=Math.floor(t/1000/60%60);
//	        var s=Math.floor(t/1000%60);
////	        console.log(d+ "天"+h+ "时"+m+ "分"+s+ "秒");
//	        document.getElementById("timeId").innerHTML = d+ "天"+h+ "时"+m+ "分"+s+ "秒";
//	//        document.getElementById("t_h").innerHTML = h + "时";
//	//        document.getElementById("t_m").innerHTML = m + "分";
//	//        document.getElementById("t_s").innerHTML = s + "秒";
//        }else{
//        	document.getElementById("timeId").innerHTML ="0天0时0分0秒";
////        	$('[xid=buttonquerendingdfanxiangq]').trigger('click');
////        	common.showPop('已到收货时间');
//        	clearInterval(timeclearshouhuotimer);
//        }
//    }
//    timeclearshouhuotimer = setInterval(getRdzfTime,1000);
//    //倒计时end-------------------------------------------------------
	};	
	//确认收货
	Model.prototype.queren = function(event){
		var url = this.util.shopPath+'/mobile/index.php?act=member_order&op=order_receive',me=this;
		var Pdata = {
			key : localStorage.getItem('vv'),//'c229788b27b907fe759a01bba3d02ac5',
			order_id : localStorage.getItem('order_id')
		};
		$.ajax({
			url : url,
			data : Pdata,
			dataType : 'json',
			type : 'post',
			async : false,
			success : function(e){
				if(!e.datas.error){
					justep.Shell.showPage(require.toUrl('./shopOrder.w'));
				}else{
					me.util.showPop(e.datas.error);
				}
			}
		});
	};	
	//取消
	Model.prototype.quxiaoClick = function(event){
		var url = this.util.shopPath+'/mobile/index.php?act=member_order&op=order_cancel',me=this;
		var Pdata = {
			key : localStorage.getItem('vv'),//'c229788b27b907fe759a01bba3d02ac5',
			order_id : localStorage.getItem('order_id')
		};
		$.ajax({
			url : url,
			data : Pdata,
			dataType : 'json',
			type : 'post',
			async : false,
			success : function(e){
				if(!e.datas.error){
					me.util.showPop('取消成功');
//					justep.userReturnMs("sh");
					me.pay_snState.set('已取消');//订单支付状态
					justep.Shell.showPage(require.toUrl('./shopOrder.w'));
				}else{
					me.util.showPop(e.datas.error);
				}
			}
		});
	};	
	Model.prototype.quzhifuClick = function(event){
		justep.Shell.showPage(require.toUrl('./orderPay.w'),{
			order_amount : sessionStorage.getItem('e.datas.order_info.order_amount'),
			pay_snSend : localStorage.getItem('pay_sn')
		});
	};	
	Model.prototype.backBtnClick = function(event){
		clearInterval(timeclearshouhuotimer);
		justep.Shell.closePage();
	};
	//联系熊猫客服	
	Model.prototype.paneldianhuaClick = function(event){
		if(sessionStorage.getItem('xiongmaokefu')=='noMoblie'){
			this.util.showPop('抱歉，暂无电话！');
		}else{
			window.location.href = 'tel:' + sessionStorage.getItem('xiongmaokefu');
		}
		
	};	
	Model.prototype.span9Click = function(event){
		localStorage.setItem('tips','0');
		$('#span99').hide();
		var url = require.toUrl('../user/entermsg.w');
		justep.Shell.showPage(url,{
			
		});
	};	

	return Model;
});