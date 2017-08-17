define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};
	//引入配置文件
	Model.prototype.validate = require("./js/validate");
	Model.prototype.util = require("./js/common");
	Model.prototype.pwdChange = function(event){
//		alert(/^(?!\D+$)(?![^a-zA-Z]+$)\S{6,20}$/.test(this.comp("pwd").val()))
		if(/^(?!\D+$)(?![^a-zA-Z]+$)\S{6,20}$/.test(this.comp("pwd").val())){
			
		}else{
			this.util.showPop("请输入至少6位字母加数字组合的密码！");
			this.comp("pwd").val("");
		}
	};
	//确认密码
	Model.prototype.password1Change = function(event){
//		alert(this.comp("password1").val())
		
		
		var img=this.comp("imgBtn");
		if(this.comp("password1").val()==this.comp("pwd").val()){
	//		img.set({
	//			"icon" : "img:$UI/zhixin/img/user/right.png"
	//		});
			$("[xid=registerBtn]").css("background-color","#7bc83d");
			this.comp("registerBtn").set({
			  "disabled":  false
			});
		}else{
//			justep.Util.hint("两次输入的密码不一致重新输入");
			this.util.showPop("两次输入的密码不一致重新输入");
			this.comp("password1").val("");
//			img.set({
//			"icon" : ""
//			});
			$("[xid=registerBtn]").css("background-color","#e3e3e3");
			this.comp("registerBtn").set({
				  "disabled":  true
			});
		}
	};
	//改变按钮颜色
	Model.prototype.btnChange = function(event){
		if($("[xid=password1]").val().length>5&&$("[xid=pwd]").val().length>5){
			$("[xid=registerBtn]").css("background-color","#7bc83d");
		}
		else{
			$("[xid=registerBtn]").css("background-color","#e3e3e3");
		}
	}
	Model.prototype.button1Click = function(event){
		justep.Shell.showPage(require.toUrl('./xieyi.w'),{
			type:"zhuce"
		});
	};

	Model.prototype.registerBtnClick = function(event){
		var me=this;
		var phone=localStorage.getItem("number");
		var captcha = sessionStorage.getItem('captcha');
		var pwd = me.comp("password1").val();
		var datas={
			mobile : phone,
			code : captcha,
			scode : localStorage.getItem('checkCode'),
			password : pwd
		};
		var url = require.toUrl(me.util.apiPath+'/zhixines/api/xiaoxi/mima');
		$.post(url,datas,function(ds){
			if(ds.s){
				me.util.showPop(ds.msg);
				localStorage.setItem('x5Version + introPage','yes');
				window.location.reload();
//				justep.Shell.showPage(require.toUrl('./suc.w'));
			}else{
				me.util.showPop(ds.msg);
			}
		});
	};

	return Model;
});