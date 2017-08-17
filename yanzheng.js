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
	Model.prototype.registerBtnClick = function(event) {
//		alert(1)
		localStorage.setItem("vcodeyz",this.comp('vcode').val());
		
			var me = this;
//			debugger;
			//param['addr'] =localStorage.getItem("ctxt") + ' ' + localStorage.getItem("ltxt") + ' ' + localStorage.getItem("brtxt");
			//验证手机号码
			//param['phone_munber']=this.getElementByXid('inputyanzheng').value;
			 //console.log(param['addr']);
			 datas={
					 "name" : "1",
					 "mobile" : localStorage.getItem('number'),
					 "vcode" : this.comp('vcode').val(),
					 "pwd" : this.comp("pwd").val(""),
					 "shenfen" : localStorage.getItem('shenfenid'),
					 "occupation_id" : "6",
					 "cid" : "7",
					 "lid" : "5",
					 "bid" : "1",
					 "rid" : "2",
					 "addr" : localStorage.getItem("ctxt") + ' ' + localStorage.getItem("ltxt") + ' ' + localStorage.getItem("brtxt"),
			 	}
//			 alert(JSON.stringify(datas))
			$.post(this.util.apiPath + '/api/user/register', datas, function(s) {
//				alert(JSON.stringify(JSON.parse(s.user)))
				if (s.s) {
					justep.Shell.showPage(require.toUrl('./suc.w'));
					justep.Util.hint(s.msg);
					localStorage.setItem("userUUID", JSON.stringify(s.user));
					justep.Shell.user.set(s.user);
					localStorage.setItem("lp", JSON.stringify({
						id : s.user.lid,
						txt : s.user.lp
					}));
//					alert(id)
					lp={id:s.user.lid,txt:s.user.lp};
					justep.Shell.lp.set(lp);
					justep.Shell.user.set(s.user);
					localStorage.setItem("city", JSON.stringify({
						id : s.user.cid,
						txt : s.user.city
					}));
//					justep.Shell.closePage('login');
//					justep.Shell.closePage();
//					justep.Shell.showPage("main.w");
					
				} else {
					justep.Util.hint(s.msg, {
						"type" : "danger"
					});
				}
			});
	};

	Model.prototype.modelLoad = function(event) {
		//localStorage.getItem('number');
//		var me = this;
//		$.get(this.util.apiPath + '/api/user/initreg', function(data) {
//			me.sfData.loadData(data.shenfen);
//			me.zyData.loadData(data.occupation);
//		});
//		console.log(this.util.callback);
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
		var mobile = localStorage.getItem("number");
		var data = {
			mobile : mobile,
			type : "1"
		};
		$.post(this.util.shopPath + "/mobile/index.php?act=login&op=get_captcha", data, function(d) {
//			alert(JSON.stringify(JSON.parse(d)))
			if (!JSON.parse(d).state) {
				justep.Util.hint(JSON.parse(d).msg, {
					type : "danger"
				});
				return false;
			} else {
					justep.Util.hint(JSON.parse(d).msg);
			}
		})
		getVcode = this.comp('getVcode');
		getVcode.set('disabled', true);
		this.comp('timer').start();
	};
	//验证验证码
	Model.prototype.vcodeBlur = function(event) {
		var mobile = localStorage.getItem("number");
		var captcha = this.comp('vcode').val();
		var data = {
			mobile : mobile,
			type : "1",
			captcha : captcha
		};
		if (captcha) {
			$.post(this.util.shopPath + "/mobile/index.php?act=login&op=check_captcha", data, function(d) {
				if (JSON.parse(d).state) {
					justep.Util.hint(JSON.parse(d).msg);
				} else {
					justep.Util.hint(JSON.parse(d).msg);
				}
			})
		} else {
			justep.Util.hint("请输入验证码！", {
				type : "danger"
			});
		}

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
		img.set({
			"icon" : "img:$UI/zhixin/img/xuanze.png"
		})
		$("[xid=registerBtn]").css("background-color","#7bc93d");
		this.comp("registerBtn").set({
		  "disabled":  false
		});
//		alert(1);
		}else{
			justep.Util.hint("两次输入的密码不一致重新输入");
			this.comp("password1").val("")
			img.set({
			"icon" : ""
			});
			$("[xid=registerBtn]").css("background-color","#cccccc");
			this.comp("registerBtn").set({
				  "disabled":  true
			});
		}
	};

	
	return Model;
});
