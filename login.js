define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("css!./paltform.css").load();

	
	var Model = function(){
		this.callParent(); 
	}; 
	//密码的显示与隐藏
	Model.prototype.passwordClick = function(event){
		if(this.getElementByXid("password").type=='password'){
			this.getElementByXid("password").type = 'text';
		$('[xid=image5]').toggle();
		$('[xid=image4]').toggle();
		}else{
			this.getElementByXid("password").type = 'password';
			$('[xid=image5]').toggle();
			$('[xid=image4]').toggle();
		}
	};
	
	Model.prototype.modelLoad = function(event){
	
	
		$("[xid=password]").bind("input propertychange",function(){
//			console.log($(this).val().length)
			if($(this).val().length>5){
				$('[xid=button6]').css("background-color","#7bc93d");
			}
		});
//		var a=1484535190;
//		alert(new Date(a).toLocaleString());
		switchId==undefined;
		$(this.getElementByXid("mobile")).attr("maxlength",11);	
		if(localStorage.getItem('number')){
			this.comp('mobile').val(localStorage.getItem('number'));
			$(this.getElementByXid("password")).focus();
					
		}
	};
	Model.prototype.button1Click = function(event){
		justep.Shell.showPage(require.toUrl("./password.w"));
	};
	Model.prototype.button2Click = function(event){
		justep.Shell.showPage(require.toUrl("./registephone.w"));
	};
	Model.prototype.validate=require("./js/validate");
	Model.prototype.util=require("./js/common");
	var encrypt;
	var userID;
	Model.prototype.loginBtnClick = function(event){
//		var introPageElement = document.getElementById('introPage');
//		$('#introPage').hide();
//		justep.Shell.mobile = justep.Bind.observable();//创建缓存数据
//		justep.Shell.user = justep.Bind.observable();//创建缓存数据
		localStorage.clear(); 
		sessionStorage.setItem("pwd",this.comp("password").val());
		localStorage.setItem("pwd",this.comp("password").val());
		var mobile = this.comp("mobile").val().replace(/\s/g, ""),password = this.comp("password").val();
//		if (!(justep.Shell.user && justep.Shell.user.get())) { 
			if (this.validate.is_mobile(mobile)) {
				//this.util.showMsg('手机号码格式有误！', 'danger');
				this.util.showPop('手机号码格式有误！');
				return false;
			} 
			if (password == '') {
				this.util.showPop('请输入密码！');
				return false;
			}
			var param = {
				mobile : mobile,
				password : password,
//				registration_id : registration_id
			};
//			justep.Shell.mobile.set(mobile);//创建缓存数据
			var me = this;
//			 console.log(localStorage.getItem("pwd"));
			justep.Shell.user.set('');
			$.post(this.util.apiPath + '/api/user/login', param, function(s) {
					//判断用户是否为管理员
					if(s.code=="300"){
						localStorage.setItem("number",mobile);
						$('[xid="backBtn"]').show();
						$('[xid="switch"]').show();
						$('[xid="noSwitch"]').hide();
						encrypt=s.additional.password;
						userID=s.additional.user_id;
						me.switchDta.loadData(s.info);
					}if(s.code=="200"){
//						localStorage.setItem('ridduotao', d.datas.user.rid);//存
						localStorage.clear('ridduotao');
						localStorage.setItem("pwd",password);
						localStorage.setItem("number",mobile);
						sessionStorage.setItem("v", s.user.v);//存
						localStorage.setItem('vv', s.user.v);//存
						sessionStorage.setItem("uid", s.user.id);//存
						localStorage.setItem("uid", s.user.id);//存
						justep.Shell.user.set(s.user);
						justep.Shell.showPage("main.w",{
							//user : JSON.stringify(justep.Shell.user)
						});
					}else{
						me.util.showPop(s.msg);
					}
			});
	};
	
	var switchId;
	//管理员选择小区
	Model.prototype.li2Click = function(event){
		this.comp("switchDta").setValue("state", 0);
		var switchDta=this.comp('switchDta');
		var row = event.bindingContext.$object;
		$(this).find("input[type='radio']").attr("checked",true);
		row.val("state", 1);
		switchId=row.val("room_id");
	};

	//确认选择
	Model.prototype.confirmClick = function(event){
		if(switchId==undefined){
			this.util.showPop('请选择楼盘！');
			return false;
		}
		var param = {
			room_id:switchId,//switchId
			password:encrypt,
			user_id:userID,
		};
		var me = this;
		justep.Shell.user.set('');
		var url =this.util.apiPath+'/api/user/getMultipleHousingList',me=this;
		$.ajax({
			url:url,
			type:'post',
			async: false,	
			data:param,
			dataType:'json',
			success:function(d){
				if (d.datas.s) {
//					me.util.showPop(d.datas.msg);
					localStorage.setItem('ridduotao', d.datas.user.rid);//存
					sessionStorage.setItem("v", d.datas.user.v);//存
					localStorage.setItem('vv', d.datas.user.v);//存
					sessionStorage.setItem("uid", d.datas.user.id);//存
					localStorage.setItem("uid", d.datas.user.id);//存
					justep.Shell.user.set(d.datas.user);
					justep.Shell.showPage("main.w");
				} else {
					me.util.showPop(d.datas.msg);
				}
			},
			error:function(d){
				console.log(d);
			}
		});
	};
	
	Model.prototype.modelActive = function(event){
		switchId==undefined;
	};
	Model.prototype.radio1Click = function(event){
		$('[xid=confirm]').css("background-color","#7bc93d");
	};
	
	Model.prototype.backBtnClick = function(event){
		switchId==undefined;
		$('[xid="switch"]').hide();
		$('[xid="noSwitch"]').show();
		$('[xid="backBtn"]').hide();
	};
	//游客登录
	Model.prototype.touristsLoad = function(event){
		justep.Shell.showPage(require.toUrl("./touristsLoad.w"));	
	};
	return Model;
});
