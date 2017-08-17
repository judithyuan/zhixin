define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
	var common = require("../js/common");
	Model.prototype.util = common;
	var user = justep.Shell.user.get();//获取缓存用户表信息数据
	
	var ws = io.connect("http://notice.pandaehome.com");
//	var ws = io.connect("http://zhixin-noticedev.kuju360.com");
	ws.on('get', function (data){//接收消息
//	    	console.log(data);
	    	if(data.type=="tfPay"&&data.body.user_id==user.id){
	    		if(data.body["return"]=="infoModifyOk"){
	    			justep.Shell.closePage();
	    			if(device.platform=="iOS"){
	    				$('[xid=iframeyh]').removeClass('iosifra');
					}
	    		}
	    		if(data.body["return"]=="infoModify"){
	    			justep.Shell.closePage();
	    			if(device.platform=="iOS"){
	    				$('[xid=iframeyh]').removeClass('iosifra');
					}
	    		}
	    	}
//	    	try {
				
//			} catch (e) {
				// TODO: handle exception
//				console.log(e);
//			}
			
	});
	Model.prototype.modelLoad = function(event){
//		console.log(user.id)
		if(this.params.type=='钱包'){
			var url = this.util.apiPath+'/zhixines/api/wallet/getwallet',me=this;
		}
		if(this.params.type=='充值'){
			var url = this.util.apiPath+'/zhixines/api/wallet/getWalletRecharge',me=this;
		}
		
		var datas = {
			uid:user.id
		};
		$.ajax({
			url : url,
			dataType: 'json',
			type : 'post',
			data : datas,
			async : false,
			success : function(e){
//				console.log(e.datas.url);
		//			if(device.platform=="iOS"){ 
	//				$('[xid="iframeyh"]').addClass("iosifra").removeClass("andifra");
	//			}else{
					$('[xid="iframeyh"]').addClass("andifra").removeClass("iosifra");
	//			}
				
//				var me=this;
	//			console.log(user);
				var urldata = me.comp("data");
				urldata.clear();
				urldata.newData({
					"defaultValues" :[{
//						"url" : me.util.apiPath+'/zhixines/api/CS_Pay/infoModify/'+user.mobile+'/'+user.id,
						"url" : e.datas.url,
					}]
				});
				me.comp('data').refreshData();
			},
			error:function(e){
				console.log(2)
			}
		});

	};	


	return Model;
});