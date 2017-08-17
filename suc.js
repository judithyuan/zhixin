define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Timer = require("$UI/system/components/justep/timer/timer");
	//设定验证的手机号码是否通过，默认为false
	var myBoolean=false;
	var Model = function() {
		this.callParent();
		
	};
	Model.prototype.validate = require("./js/validate");
	Model.prototype.util = require("./js/common");

	
	Model.prototype.registerBtnClick = function(event){
		//justep.Shell.showPage("main.w");
//		localStorage.removeItem('cid');
//		localStorage.removeItem('lid');
//		localStorage.removeItem('bid');
//		localStorage.removeItem('rid');
//		localStorage.removeItem('param');
//		localStorage.removeItem('shenfenid');
//		localStorage.removeItem('checkCode');
		window.location.reload();
	};

	
	return Model;
});
