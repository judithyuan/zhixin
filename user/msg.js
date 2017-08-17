define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	Model.prototype.validate = require("../js/validate");
	Model.prototype.util = require("../js/common");
	
	var user = justep.Shell.user.get();//获取缓存用户表信息数据
	
	Model.prototype.msgDataCustomRefresh = function(event){
//		alert(this.params.type);
		var id=user.id;
		var me=this;
		var url =require.toUrl(this.util.apiPath +'/zhixines/api/xiaoxi/message');
		var data={
			user_id:id,
			v:localStorage.getItem('vv'),
			type:this.params.type
		};
		$.post(url,data,function(d){
			console.log(d);
			event.source.loadData(d);
			//me.msgData.loadData(d);
			//alert(event.source.val('content'))
		})
	};
	
	return Model;
});