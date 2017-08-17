define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
		//红包金额
		this.redEnvelope =	justep.Bind.observable('');
	};
	//	定义函数
	var common = require("../js/common");
	Model.prototype.util = common;
	var user = justep.Shell.user.get();//获取缓存用户表信息数据
	Model.prototype.span7joinClick = function(event){
		var url = require.toUrl('../user/redEnvelope.w');
		justep.Shell.showPage(url,{});
	};

	Model.prototype.modelLoad = function(event){
		//发出请求，得到红包奖金
		var me=this;
		var datas={
	 			user_id:user.id,
	 			loupan_id:user.lid,
	 			v:user.v,
	 			act:'get'
	 	};
	 	var urls=common.apiPath+'/zhixines/api/GetRedPacket/getRedPacket';
	 	if(typeof(this.params.paySn)!="undefined"){
	 		urls=common.apiPath+'/zhixines/api/GetRedPacket/getBillRedPacket';
	 		datas.pay_sn=this.params.paySn;
	 	}
	 	console.log(datas);
	 	$.ajax({
	 		url:urls,
	 		type:'post',
	 		dataType:'json',
	 		data:datas,
	 		async: true,
	 		success:function(d){
	 			console.log(d);
	 			if(d.s){
	 				console.log(parseFloat(d.redpacket_amount).toFixed(2));
	 				me.redEnvelope.set(parseFloat(d.redpacket_amount).toFixed(2));
	 			}else{
	 				alert(d.msg);
	 			}
	 		}
	 	});
	};

	Model.prototype.backBtnClick = function(event){
//		if(this.params.page=='payR'){
//			justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{rePage:'returnPay'});
//		}
//		else{
//			justep.Shell.showPage(require.toUrl('../wyfw/payResult.w'),{rePage:'returnPay'});
//		}
		justep.Shell.closePage();
	};

	return Model;
});