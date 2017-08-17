define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Model = function(){
		this.callParent();
	};
	//	定义函数
	var common = require("./js/common");
	Model.prototype.util = common;

	Model.prototype.vcodeBlur = function(event){
		var me=this;
		var xm = this.getElementByXid('vcode').value;
		var sfz = this.getElementByXid('input1').value;
		//验证身份证
		var code = {
			realname : xm,
			idcard : sfz,
			mobile : localStorage.getItem("number"),
		};
		$.post(this.util.apiPath + '/zhixines/api/RealInfoAuth/valid', code, function(s) {
			if(s.status){
				sessionStorage.setItem('dasdsafdgfew',s.status);	
				me.comp("registerBtn").set({
					"disabled":  false
				});
			}else{
//			common.showPop('验证失败，请重新输入');
			}	
		});	
	};
	Model.prototype.registerBtnClick = function(event){
		var xm = this.getElementByXid('vcode').value;
		var sfz = this.getElementByXid('input1').value;
		//验证身份证
		var code = {
			realname : xm,
			idcard : sfz,
			mobile : localStorage.getItem("number"),
		};
		var codes = {
			shenfen  : localStorage.getItem('shenfenid'),
			cid  : localStorage.getItem('cid'),
			lid  : localStorage.getItem('lid'),
			bid  : localStorage.getItem('bid'),
			rid  : localStorage.getItem('rid'),
			addr  : localStorage.getItem('param'),
			mobile  : localStorage.getItem('number')
		};
		$.post(this.util.apiPath + '/zhixines/api/RealInfoAuth/valid', code, function(s) {
//			debugger;
			if(s.status){
//					justep.Util.hint(s.message)
					sessionStorage.setItem('dasdsafdgfew',s.status);
//					console.log(common.showPop);	
//					common.showPop(s.message);
//					me.comp("registerBtn").set({
//						"disabled":  false
//					});
					//------------------
					$.post(common.apiPath + '/zhixines/api/xiaoxi/saveAuthenticationInfo', codes, function(s) {
						if(s.code=="200"){
							common.showPop(s.msg);
				//			localStorage.setItem("number",mobile);
							sessionStorage.setItem("v", s.user.v);//存
							localStorage.setItem('vv', s.user.v);//存
							sessionStorage.setItem("uid", s.user.id);//存
							localStorage.setItem("uid", s.user.id);//存
							justep.Shell.user.set(s.user);
				//			console.log(s.user)
				//			justep.Shell.showPage("main.w",{
				//												//user : JSON.stringify(justep.Shell.user)
				//			});\
							localStorage.setItem('x5Version + introPage','yes');
							window.location.reload();
						}else{
							common.showPop(s.msg);
						}
					});
					//-------------------
			}else{
//					me.comp("registerBtn").set({
//						"disabled":  true
//					});
					common.showPop('验证失败，请重新输入');
					return false;
					
			}
				
		});

		
//		debugger;

		
	};

	Model.prototype.input1Focus = function(event){
		this.comp("registerBtn").set({
			"disabled":  false
		});
	};

	return Model;
});