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

	};
	//系统消息
	Model.prototype.row12Click = function(event){
		var url = require.toUrl('./msg.w');
		justep.Shell.showPage(url,{
			type :'xitong'
		});
	};
	//个人消息
	Model.prototype.row1Click = function(event){
		var url = require.toUrl('./msg.w');
		justep.Shell.showPage(url,{
			type :'geren'
		});
	};
	
	return Model;
});