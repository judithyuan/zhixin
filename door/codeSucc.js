define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	//继续选择入口
	Model.prototype.button1Click = function(event){
		justep.Shell.showPage(require.toUrl('../door/entrance.w'));
	};

	//发送邀请码
	Model.prototype.button3Click = function(event){
		justep.Shell.showPage("main.w");
	};

	return Model;
});