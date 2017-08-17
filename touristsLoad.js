define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	//设定验证的手机号码是否通过，默认为false
	var getVcode;
	var Model = function() {
		this.callParent();
	};
	var common = require("./js/common");
	Model.prototype.util = common;
	Model.prototype.modelActive = function(event){
		$("[xid=mobile]").val('');
		$("[xid=mobile]").focus();
		localStorage.setItem('checkCode','');
	};	
	Model.prototype.modelLoad = function(event){
		getVcode = this.comp('getVcode');
		var mobileXid = this.getElementByXid("mobile");
		var vcodeXid = this.getElementByXid("vcode");
		$(mobileXid).attr("maxlength",11);
		$(vcodeXid).attr("maxlength",6);
		$(mobileXid).bind('input propertychange',function(){
			var thisval = $(this);
			if(!(/^1(3|4|5|7|8)\d{9}$/.test(thisval.val()))){
				if(thisval.val().length==11){common.showPop("手机号码有误，请重填");};
//				thisval.val('');
				return false;
			}else{
				$("[xid=getVcode]").css("color","#333333");
			}
			
		});
		
		$(vcodeXid).bind('input propertychange',function(){
			var thisval = $(this);
			if(thisval.val().length==6){
				$("[xid=button6loadyk]").css("backgroundColor","#7bc83e");
			};
		});
	};
		
	Model.prototype.timerTimer = function(event){
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
	Model.prototype.getVcodeClick = function(event){
		var mobile = this.comp('mobile').val(),me=this;
		var url = common.apiPath+'/zhixines/api/CS_SMSAuth/getcode';
		var Params = {
			mobile : mobile,
			type : "1",
			send_type :'tourist_login'
		};
		$.ajax({
			url : url,
			type:'post',
			dataType:'json',
			data:Params,
			async: true,
			timeout : '5000',
			success:function(e){
				if (!e.status) {
					me.util.showPop(e.message);
					return false;
				} else {
					me.util.showPop(e.message);
				}
				localStorage.setItem('checkCode',e.checkCode);
				getVcode.set('disabled', true);
				me.comp('timer').start();
			},
		});
	};


	Model.prototype.houseLoad = function(event){
		justep.Shell.showPage(require.toUrl("./login.w"));
	};


	Model.prototype.loginBtnClick = function(event){
		var mobile = this.comp('mobile').val(),me=this;
		var url = common.apiPath+'/api/user/touristlogin';
		var Params = {
			mobile : mobile,
			scode: this.comp('vcode').val()//localStorage.getItem('checkCodes')
		};
		$.ajax({
			url : url,
			type:'post',
			dataType:'json',
			data:Params,
			async: true,
			timeout : '5000',
			success:function(e){
				if(e.s){
					localStorage.setItem("number",mobile);
					sessionStorage.setItem("v", e.user.v);//存
					localStorage.setItem('vv', e.user.v);//存
					sessionStorage.setItem("uid", e.user.id);//存
					localStorage.setItem("uid", e.user.id);//存
					justep.Shell.user.set(e.user);
					justep.Shell.showPage("main.w");
				}else{
					$('[xid=vcode]').focus();
					me.util.showPop(e.msg);
					if(e.identity=="proprietor"){
						localStorage.setItem('number',mobile);
						justep.Shell.showPage(require.toUrl("./login.w"));
					}
				}
			},
		});		
	};





	Model.prototype.button2Click = function(event){
		justep.Shell.showPage(require.toUrl("./registephone.w"));
	};





	return Model;
});
