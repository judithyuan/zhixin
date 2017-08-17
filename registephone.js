define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};
	
	var common = require("./js/common");
//	var statesPhone;//判断发短信
	Model.prototype.util = common;
	Model.prototype.modelLoad = function(event){
		
		$(this.getElementByXid("mobile")).attr("maxlength",11);
		$(this.getElementByXid("vcode")).attr("maxlength",6);
		var numCount = 0;
		$(this.getElementByXid("mobile")).bind("input propertychange",function(){
			if($(this).val().length=='11'){
				numCount++;
				if(numCount>1){return false;}
			    if(!(/^1(3|4|5|7|8)\d{9}$/.test($(this).val()))){ 
			        common.showPop("手机号码有误，请重填");
			        $(this).val("");
			        return false; 
			    }else{
			    	var url=common.apiPath + '/zhixines/api/xiaoxi/checkmobile';
					var data={
						mobile : $(this).val()
					};
					$.post(url,data,function(d){
						if(d.s){
							sessionStorage.setItem('registerState', '0');
							$("[xid=registerBtn]").css("background-color","#7bc93d");
							$("[xid=getVcode]").css("color","#333333");
						}else{
							common.showPop(d.msg);
							sessionStorage.setItem('registerState', '1');
						}
					});
			    }				
			}else{
				numCount=0;
			}
		});

	};	
	Model.prototype.mobileBlur = function(event){
	
//		    var phone = document.getElementById('phone').value;
//			var me=this;
			var phone = this.comp("mobile").val();
			localStorage.setItem("number", phone);
//
//		var url=this.util.apiPath + '/zhixines/api/xiaoxi/checkmobile';
//		var data={
//			mobile : phone
//		};
//		$.post(url,data,function(d){
//			if(d.s){
//
//				sessionStorage.setItem('registerState', '0');
//			}else{
//				me.util.showPop(d.msg);
//				sessionStorage.setItem('registerState', '1');
//			}
//		});
	};
	
	//判断手机号是否注册过
	Model.prototype.registerBtnClick = function(event){
		var me=this;
						//原来进行短信验证码的验证接口
//		alert(sessionStorage.getItem('registerState'));
		if(sessionStorage.getItem('registerState')=='0'){		
				var mobile = localStorage.getItem("number");
				var captcha = localStorage.getItem("vcode");
				var data = {
					mobile : mobile,
					type : "1",
					code : captcha,
					scode : localStorage.getItem('checkCode'),
				};
				var me=this;
				if (captcha) {
					$.post(me.util.apiPath + "/zhixines/api/CS_SMSAuth/valid", data, function(d) {//saveAuthenticationInfo
					if (d.status) {
						justep.Shell.showPage(require.toUrl('./mima.w'));
					} else {
						me.util.showPop(d.message);
					}
				});
			} else {
				me.util.showPop('请输入六位验证码!');
			}
		};
	};



	Model.prototype.getVcodeClick = function(event){
		if(sessionStorage.getItem('registerState')=='1'){return false;}
		var me =this;
		var mobile = this.comp("mobile").val();
		var data = {
			mobile : mobile,
			type : "1"
		};
		$.post(this.util.apiPath + "/zhixines/api/CS_SMSAuth/getcode", data, function(d) {
//			alert(JSON.stringify(JSON.parse(d)))
			if (!d.status) {
				me.util.showPop(d.message);
				
				return false;
			} else {
					
					me.util.showPop(d.message);
			}
			localStorage.setItem('checkCode',d.checkCode);
		})
		getVcode = this.comp('getVcode');
		getVcode.set('disabled', true);
		this.comp('timer').start();
	};
	//时间
	var getVcode, ture_on;
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
	//存储验证码
	Model.prototype.vcodeBlur = function(event){
		localStorage.setItem("vcode",this.comp('vcode').val());
	};
//	跳转协议内容
	Model.prototype.button1Click = function(event){
		justep.Shell.showPage(require.toUrl('./xieyi.w'),{
			type:"zhuce"
		});
	};
	//返回登录
	Model.prototype.button2Click = function(event){
		justep.Shell.closePage();
	};




	return Model;
});