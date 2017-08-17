define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
//	all提交评论
	Model.prototype.button1Click = function(event){
		justep.Util.hint('评论成功');
	};
//	已申请评论
	Model.prototype.button2Click = function(event){
		justep.Util.hint('评论成功');
	};
//	已上门评论
	Model.prototype.button3Click = function(event){
		justep.Util.hint('评论成功');
	};
//	已取消评论
	Model.prototype.button4Click = function(event){
		justep.Util.hint('评论成功');
	};

	return Model;
});