define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var user = justep.Shell.user.get();//获取缓存用户表信息数据
	var Model = function(){
		this.callParent();
	};
	//引入配置文件
	Model.prototype.validate = require("./js/validate");
	Model.prototype.util = require("./js/common");
	var common = require("./js/common");
	//require("css!./paltforms.css").load();
	//当手机号有值，验证码有值的时候按钮变绿色
	Model.prototype.btnChange = function(event){
		if($('[xid=phone]').val()!=''){
			if($('[xid=vcode]').val()!=''){
				$('[xid=registerBtn]').css('backgroundColor','#7bc83e');
			}
			else{
				$('[xid=registerBtn]').css('backgroundColor','#e3e3e3');
			}
		}else{
			$('[xid=registerBtn]').css('backgroundColor','#e3e3e3');
		}
	}
	
//	提示时间
	/*Model.prototype.phone = function(){
		return user.mobile;
	};*/
	Model.prototype.modelLoad = function(event){
		$(this.getElementByXid("phone")).attr("maxlength",11);
		$(this.getElementByXid("phone")).bind("input propertychange",function(){
			//console.log($(this).val())$("[xid=getVcode]").css("color","#333333");	
			if($(this).val().length==11){
				if(!(/^1(3|4|5|7|8)\d{9}$/.test($(this).val()))){
					common.showPop("手机号码有误，请重填");
					$(this).val('');
					return false;
				}
				$("[xid=getVcode]").css("color","#333333");
			};
			
		});
	};
	//电话是否注册验证
	Model.prototype.phoneBlur = function(event){
		var me =this;
		var phone=this.comp('phone').val();
		if(!(/^1[3|4|5|7|8]\d{9}$/.test(phone))){
			me.util.showPop("手机号码格式有误！");
			return false;
		 }
		var data={
			mobile : phone
		};
		var me=this;
		$.post(this.util.apiPath + "/zhixines/api/CS_User/forgetPwdMobileValid",data,function(d){
			if(d.status){
				me.comp("getVcode").set({
				  "disabled":  false
				});	
			}else{
				me.comp("getVcode").set({
				  "disabled":  true
				});	
			}
		})
	};
	
	
	Model.prototype.timerTimer = function(event) {
		var last = 60 - event.times;
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
//	获取验证码，修改密码
	var scode;
	Model.prototype.getVcodeClick = function(event){
		var phone=this.comp('phone').val();
		localStorage.setItem("number",this.comp('phone').val());
		var data = {
			mobile : phone,
			type : "1"
		};
		var me=this;
		$.post(this.util.apiPath + "/zhixines/api/CS_SMSAuth/getcode", data, function(d) {
			scode=d.checkCode;
			localStorage.setItem('checkCode',d.checkCode);
			if (d.status) {
				me.util.showPop(d.message);
				getVcode = me.comp('getVcode');
				getVcode.set('disabled', true);
				me.comp('timer').start();
				return false;
			} else {
				me.util.showPop(d.message);
			}
			localStorage.setItem('checkCode',d.checkCode);
		})
	};
		//验证验证码
	Model.prototype.vcodeBlur = function(event) {
		sessionStorage.setItem('captcha', this.comp('vcode').val());
	};
		//确认密码
	Model.prototype.password1Change = function(event){
		var me=this;
		var img=this.comp("imgBtn");
		if(this.comp("password1").val()==this.comp("pwd").val()){
			img.set({
				"icon" : "img:$UI/zhixin/img/user/right.png"
			})
			$("[xid=registerBtn]").css("background-color","#7bc93d");
			this.comp("registerBtn").set({
			  "disabled":  false
			});
	//		alert(1);
		}else{
			me.util.showPop("两次输入的密码不一致请重新输入！");
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
//	提交
	Model.prototype.registerBtnClick = function(event){
		var phone=this.comp('phone').val();
		var captcha = this.comp('vcode').val();
		var data = {
			code : captcha,
			type : "1",
			mobile : phone,
			code : captcha,
			scode : localStorage.getItem('checkCode')
		};
		var me =this;
		if (captcha) {
			$.post(this.util.apiPath + "/zhixines/api/CS_SMSAuth/valid", data, function(d) {
				if(d.status){
					justep.Shell.showPage(require.toUrl('./forgotMima.w'));
				}else{
					me.util.showPop(d.message);
				};
			})
		} else {
			me.util.showPop("请输入验证码");
		}
	};

	return Model;
});