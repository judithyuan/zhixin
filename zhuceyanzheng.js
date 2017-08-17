define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Timer = require("$UI/system/components/justep/timer/timer");
	//设定验证的手机号码是否通过，默认为false
	var myBoolean=false;
	var Model = function() {
		this.callParent();
		
	};
	//引入配置文件
	Model.prototype.validate = require("./js/validate");
	Model.prototype.util = require("./js/common");
	Model.prototype.registerBtnClick = function(event) {
//		alert(this.comp('vcode').val().length==6);
		var mobile = localStorage.getItem("number");
		var captcha = this.comp('vcode').val();
		var data = {
			mobile : mobile,
			type : "1",
			code : captcha,
			scode : localStorage.getItem('checkCode'),
		};
		var me=this;
		if (captcha) {
			$.post(this.util.shopPath + "/zhixines/api/CS_SMSAuth/valid", data, function(d) {
				if (d.status) {
					justep.Shell.showPage(require.toUrl('./mima.w'));
					me.util.showPop(d.message);
				} else {
					me.util.showPop(d.message);
				}
			})
		} else {
			me.util.showPop('请输入六位验证码!');
		}
//		alert(this.comp("pwd").val())
//			localStorage.setItem("vcodeyz",this.comp('vcode').val());
//			var me = this;
//			 datas={
//					 "name" : localStorage.getItem('number'),
//					 "mobile" : localStorage.getItem('number'),
//					 "vcode" : this.comp('vcode').val(),
//					 "pwd" : this.comp("pwd").val(),
////					 "shenfen" : localStorage.getItem('shenfenid'),
////					 "occupation_id" : "6",
////					 "cid" : "7",
////					 "lid" : "5",
////					 "bid" : "1",
////					 "rid" : "2",
////					 "addr" : localStorage.getItem("ctxt") + ' ' + localStorage.getItem("ltxt") + ' ' + localStorage.getItem("brtxt"),
//			 	}
//			$.post(this.util.apiPath + '/api/user/register', datas, function(s) {
////			$.post(this.util.apiPath + '/api/user/jieshou', datas, function(s) {
//				if (s.s) {
//					justep.Shell.showPage(require.toUrl('./suc.w'));
//					me.util.showPop(s.msg);
//					justep.Shell.user.set(s.user);
//					localStorage.setItem("lp", JSON.stringify({
////						id : s.user.lid,
////						txt : s.user.lp
//					}));
//
//					justep.Shell.user.set(s.user);
//					localStorage.setItem("city", JSON.stringify({
////						id : s.user.cid,
////						txt : s.user.city
//					}));
////					justep.Shell.closePage('login');
////					justep.Shell.closePage();
////					justep.Shell.showPage("main.w");
//				} else {
////					justep.Util.hint(s.msg, {
////						"type" : "danger"
////					});
//					me.util.showPop(s.msg);
//				}
//				//存储用户信息uuid
//				//localStorage.setItem("userUUID", JSON.stringify(s.user));
//				justep.Shell.user.set(s.user);
//				console.log(s.user+('用户表'));
//			});
	};

	Model.prototype.modelLoad = function(event) {
		$(this.getElementByXid("vcode")).attr("maxlength",6);
	};


	var getVcode, ture_on;
	Model.prototype.timerTimer = function(event) {
		var last = 120 - event.times;
		if (last === 0) {
			this.comp('timer').stop();
			getVcode.set({
				label : '获取验证码',
				disabled : false
			});
		} else {
			getVcode.set('label', last + '秒后获取');
		}
	};
	//验证码返回
	Model.prototype.getVcodeClick = function(event) {
		var me =this;
		var mobile = localStorage.getItem("number");
		var data = {
			mobile : mobile,
			type : "1"
		};
		$.post(this.util.shopPath + "/zhixines/api/CS_SMSAuth/getcode", data, function(d) {
//			alert(JSON.stringify(JSON.parse(d)))
			if (!d.status) {
//				justep.Util.hint(d.message, {
//					type : "danger"
//				});
				me.util.showPop(d.message);
				return false;
			} else {
//					justep.Util.hint(d.message);
					me.util.showPop(d.message);
			}
			localStorage.setItem('checkCode',d.checkCode);
		})
		getVcode = this.comp('getVcode');
		getVcode.set('disabled', true);
		this.comp('timer').start();
	};
	//验证验证码
	Model.prototype.vcodeBlur = function(event) {
		localStorage.setItem("vcode",this.comp('vcode').val());
		//原来进行短信验证码的验证接口		
//		var mobile = localStorage.getItem("number");
//		var captcha = this.comp('vcode').val();
//		var data = {
//			mobile : mobile,
//			type : "1",
//			code : captcha,
//			scode : localStorage.getItem('checkCode'),
//		};
//		var me=this;
//		if (captcha) {
//			$.post(this.util.shopPath + "/zhixines/api/CS_SMSAuth/valid", data, function(d) {
////				console.log(d)
////				alert(d.state)
//				if (d.status) {
////					justep.Util.hint(d.message);
//					me.util.showPop(d.message);
//					me.comp("registerBtn").set({
//					  "disabled":  false
//					});
//				} else {
////					justep.Util.hint(d.message);
//					me.util.showPop(d.message);
//					me.comp("registerBtn").set({
//						  "disabled":  true
//					});
//				}
//			})
//		} else {
////			justep.Util.hint("请输入验证码！", {
////				type : "danger"
////			});
//			me.util.showPop('请输入验证码！');
//		}

	};

	
	Model.prototype.nextBtn = function(event){

	};
	//页面创建完成
	Model.prototype.modelModelConstructDone = function(event){
		
		
	};
	//确认密码
	Model.prototype.password1Change = function(event){
//		alert(this.comp("password1").val())
		
//		alert(this.comp("pwd").val())
		var img=this.comp("imgBtn");
		if(this.comp("password1").val()==this.comp("pwd").val()){
//		img.set({
//			"icon" : "img:$UI/zhixin/img/user/right.png"
//		});
		$("[xid=registerBtn]").css("background-color","#7bc93d");
		this.comp("registerBtn").set({
		  "disabled":  false
		});
//		alert(1);
		}else{
//			justep.Util.hint("两次输入的密码不一致重新输入");
			this.util.showPop("两次输入的密码不一致重新输入");
			this.comp("password1").val("");
//			img.set({
//			"icon" : ""
//			});
			$("[xid=registerBtn]").css("background-color","#cccccc");
			this.comp("registerBtn").set({
				  "disabled":  true
			});
		}
	};
//	跳转协议内容
	Model.prototype.button1Click = function(event){
		justep.Shell.showPage(require.toUrl('./xieyi.w'),{
			type:"zhuce"
		});
	};
	
	return Model;
});

define(function(require){
	var $ = require("jquery");
	var Model = function(){
		this.callParent();
	};
	Model.prototype.button1Click = function(event){

	};

	return Model;
});
