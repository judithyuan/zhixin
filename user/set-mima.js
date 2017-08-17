define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var user = justep.Shell.user.get();//获取缓存用户表信息数据
	var Model = function(){
		this.callParent();
		
	};
	//引入配置文件
	Model.prototype.validate = require("../js/validate");
	Model.prototype.util = require("../js/common");
//	提示时间
	Model.prototype.phone = function(){
		var usermobile = user.mobile;
		var reg = /^(\d{3})\d{4}(\d{4})$/;
		usermobile = usermobile.replace(reg, "$1****$2");
		return usermobile;
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
	Model.prototype.modelLoad = function(event){
//		$(this.getElementByXid("password1")).bind("input propertychange",function(){
////		$(this.getElementByXid("password1").bind('input propertychange'),function(){
//			console.log($(this).val());
//		});
	};
//	获取验证码，修改密码
	Model.prototype.getVcodeClick = function(event){
		var me =this;
		var mobile = localStorage.getItem("number");
		var data = {
			mobile : user.mobile,
			type : "1"
		};
		$.post(this.util.apiPath + "/zhixines/api/CS_SMSAuth/getcode", data, function(d) {
//			alert(JSON.stringify(JSON.parse(d)))
			if (!d.status) {
				yzm=0;
				me.util.showPop(d.message);
				return false;
			} else {
				getVcode = me.comp('getVcode');
				getVcode.set('disabled', true);
				me.comp('timer').start();
				me.util.showPop(d.message);
				yzm=0;
			}
			localStorage.setItem('checkCode',d.checkCode);
		})
//		getVcode = this.comp('getVcode');
//		getVcode.set('disabled', true);
//		if(d.status){
//			this.comp('timer').start();
//		}
//		this.comp('timer').start();
	};
		//验证验证码
		//验证成功为1,失败为0
	var yzm;
	Model.prototype.vcodeBlur = function(event) {
		var mobile = localStorage.getItem("number");
		var me =this;
		var captcha = this.comp('vcode').val();
		var data = {
			mobile : mobile,
			type : "1",
			code : captcha,
			scode : localStorage.getItem('checkCode'),
		};
		if (captcha) {
			$.post(this.util.apiPath + "/zhixines/api/CS_SMSAuth/valid", data, function(d) {
				if (d.status) {
					me.util.showPop(d.message);
					me.comp("registerBtn").set({
					  "disabled":  false
					});
					yzm=1;
					//判断密码输入格式是否正确
					if($("[xid=password1]").val().length>=6&&$("[xid=password1]").val().length<=20){
						$("[xid=registerBtn]").css("background-color","#7bc83e");
						this.comp("registerBtn").set({
							"disabled":  false
						});
					}
				} else {
					me.util.showPop(d.message);
					me.comp("registerBtn").set({
					  "disabled":  true
					});
					yzm=0;
				}
			})
		} else {
			me.util.showPop('请输入验证码！');
		}

	};
		//确认密码
//	Model.prototype.password1Change = function(event){
////		alert(this.comp("password1").val())
//		var me=this;
//		var img=this.comp("imgBtn");
//		if(this.comp("password1").val()==this.comp("pwd").val()){
//		img.set({
//			"icon" : "img:$UI/zhixin/img/user/right.png"
//		})
//		$("[xid=registerBtn]").css("background-color","#7bc93d");
//		this.comp("registerBtn").set({
//		  "disabled":  false
//		});
////		alert(1);
//		}else{
//			me.util.showPop("两次输入的密码不一致重新输入");
//			this.comp("password1").val("")
//			img.set({
//			"icon" : ""
//			});
//			$("[xid=registerBtn]").css("background-color","#cccccc");
//			this.comp("registerBtn").set({
//				  "disabled":  true
//			});
//		}
//	};
	//判断密码
	Model.prototype.password1Change = function(event){
		if(this.comp('vcode').val()==''||yzm==0){
			$("[xid=registerBtn]").css("background-color","#e3e3e3");
			this.comp("registerBtn").set({
				"disabled":  true
			});
			this.util.showPop("请输入正确的验证码");
			return;
		}
		if($("[xid=password1]").val().length>=6&&$("[xid=password1]").val().length<=20&&yzm==1){
			$("[xid=registerBtn]").css("background-color","#7bc83e");
			this.comp("registerBtn").set({
				"disabled":  false
			});
		}
		else{
			//this.util.showPop("密码格式不对，请输入6-20位数字、字母");
			this.comp("password1").val("");
			$("[xid=registerBtn]").css("background-color","#e3e3e3");
			this.comp("registerBtn").set({
				"disabled":  true
			});
		}
	}
	//密码的显示与隐藏
	Model.prototype.passwordClick = function(event){
		if(this.getElementByXid("password1").type=='password'){
			this.getElementByXid("password1").type = 'text';
		$('[xid=image5]').toggle();
		$('[xid=image4]').toggle();
		}else{
			this.getElementByXid("password1").type = 'password';
			$('[xid=image5]').toggle();
			$('[xid=image4]').toggle();
		}
	};
	
//	提交
	Model.prototype.registerBtnClick = function(event){
//		alert(1);
//		console.log(this.comp("password1").val());
		if(this.comp('vcode').val()==''&&yzm==1){
			$("[xid=registerBtn]").css("background-color","#e3e3e3");
			this.comp("registerBtn").set({
				"disabled":  true
			});
			this.util.showPop("请输入正确的验证码");
			return;
		}
		var me=this;
		var url = require.toUrl(this.util.apiPath+'/zhixines/api/xiaoxi/mima');
		var data = {
				id: user.id,
				password: this.comp("password1").val()
		};
		$.post(url,data,function(d){
			console.log(d);
			if(d.s){
				me.util.showPop(d.msg);
				justep.Shell.closePage();
			}else{
				me.util.showPop(d.msg);
			}
		});
		
	};
	Model.prototype.pwdChange = function(event){
		if(/^(?!\D+$)(?![^a-zA-Z]+$)\S{6,20}$/.test(this.comp("pwd").val())){
			
		}else{
			this.util.showPop("请输入至少6位字母加数字组合的密码！");
			this.comp("pwd").val("");
		}
	};

	return Model;
});define(function(require){
	var $ = require("jquery");
	var Model = function(){
		this.callParent();
	};

	return Model;
});
