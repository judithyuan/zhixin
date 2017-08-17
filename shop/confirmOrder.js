define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
		this.pay_sn = justep.Bind.observable("");//订单号
		this.pay_sn = justep.Bind.observable("");//订单号
		this.pay_sn = justep.Bind.observable("");//订单号
	};
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
		localStorage.setItem('x5Version + introPage','yes');
		window.location.reload();
	};
	//	定义函数请求-----------------------------------------------------
//	定义函数
	var common = require("../js/common");
	Model.prototype.util = common;
//	var user = justep.Shell.user.get();//获取缓存用户表信息数据

    //消息推送----------------------- 	
	Model.prototype.modelLoad = function(event){
		var url =this.util.shopPath+'/mobile/index.php?act=member_order&op=order_info',me=this;
		var Pdata={
			key:'c229788b27b907fe759a01bba3d02ac5',
			order_id:'2938'
		}
		$.ajax({
			url : url,
			data: Pdata,
			dataType : 'json',
			type :'post',
			async : false,
			success : function(e){
				console.log(e);
			}
		});
	};
	Model.prototype.modelParamsReceive = function(event){
    //倒计时
    function getRdzfTime(){
        var EndTime= new Date('2017/04/14 20:00:00'); //截止时间 
        var NowTime = new Date();
        var t =EndTime.getTime() - NowTime.getTime();
        /*var d=Math.floor(t/1000/60/60/24);
        t-=d*(1000*60*60*24);
        var h=Math.floor(t/1000/60/60);
        t-=h*60*60*1000;
        var m=Math.floor(t/1000/60);
        t-=m*60*1000;
        var s=Math.floor(t/1000);*/
//        console.log(t);
        if(t>0){
	        var d=Math.floor(t/1000/60/60/24);
	        var h=Math.floor(t/1000/60/60%24);
	        var m=Math.floor(t/1000/60%60);
	        var s=Math.floor(t/1000%60);
//	        console.log(d+ "天"+h+ "时"+m+ "分"+s+ "秒");
	        document.getElementById("timeIddzf").innerHTML = d+ "天"+h+ "时"+m+ "分"+s+ "秒";
	//        document.getElementById("t_h").innerHTML = h + "时";
	//        document.getElementById("t_m").innerHTML = m + "分";
	//        document.getElementById("t_s").innerHTML = s + "秒";
        }else{
        	document.getElementById("timeId").innerHTML ="0天0时0分0秒";
        }
    }
    setInterval(getRdzfTime,1000);
	};	

    
	Model.prototype.orderListCustomRefresh = function(event){

	};
    

    

    

    
	return Model;
});