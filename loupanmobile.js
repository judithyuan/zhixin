define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
		//	定义函数
	var common = require("./js/common");
	Model.prototype.util = common;
	var user = justep.Shell.user.get();//获取缓存用户表信息数据
	Model.prototype.checkbox1Change = function(event){
//		alert(1)
//		$("input[type='checkbox2']").attr('checked','false');
//		$("input[type='checkbox']").find('checkbox2')
//		$('[xid=checkbox2]').attr('checked','false')
		
	};
	
		//点击获取当前号码
	//获取电话号码
	Model.prototype.phoneDataCustomRefresh = function(event){
		try {
			var n=0;
			var lpid = {
//					rid  : '1879'
					rid  : this.params.rid
			}
			$.post(this.util.apiPath + '/zhixines/api/xiaoxi/telphone',lpid,function(lpdata){
				var arr;
				var bb=[];
				for(var i=0;i<lpdata.mobile.length;i++){
//					var tel = lpdata.mobile[i];
//					tel = tel.replace(/^(\d{3})\d{4}(\d{4})$/, "$1****$2");
					lpdata[i];
					arr={mobile: lpdata.mobile[i]};
					bb[n++]=arr;
				}
				if(lpdata.mobile==''){
					bb=[{mobile: '无业主手机号！'}];
				}else{
				
				}
				event.source.loadData(bb);
				$('.x-radio').eq(0).trigger('click');
			});
			
		} catch (e) {
			// TODO: handle exception
//			bb={mobile: '请联系物业'};
		}

	};
	
	
	
	//获取当前号码
	var mobile;
	Model.prototype.li2Click = function(event){
		this.comp("phoneData").setValue("state", 0);
		var phoneData=this.comp('phoneData');
		var row = event.bindingContext.$object;
		$(this).find("input[type='radio']").attr("checked",true);
		row.val("state", 1);
//		$(this).find("input[type='radio']").attr("checked",true);
		mobile=row.val('mobile');
		//console.log(mobile);
		document.getElementById('span1').innerText=mobile.replace(/^(\d{3})\d{4}(\d{4})$/, "$1****$2");
		this.comp('getVcode').set({
			 "disabled":  false
		});
//		var my=this.comp(radio)
//		my.set({
//				"icon" : "img:$UI/kjlife/img/sywxz.png|"
//			});
	};
	Model.prototype.modelModelConstructDone = function(event){
		$("[xid=vcode]").bind("input propertychange",function(){
//			console.log($(this).val().length)
			if($(this).val().length>5){
//				$('[xid=button6]').css("background-color","#7bc93d");
//				Model.prototype.vcodeBlur();
			}
		});
		if(localStorage.getItem('shenfenid')=='15'){
			document.getElementById("span3").innerText = "请选择有效的手机号码，如无有效手机号码请携带身份证件及房产证至物业服务中心修改！";
		}else{
			document.getElementById("span3").innerText = "请选择有效的业主手机号码，并向其获取验证码！";
		};
		
	};

	//获取验证码
	Model.prototype.getVcodeClick = function(event){
//		alert(this.comp('phoneData').val('mobile'))
		//var mobile = localStorage.getItem("number");
		//console.log(mobile);
		var me=this;
		if(mobile==undefined){
			this.util.showPop('请选择号码');
			}else{
//				var mobile = this.comp('phoneData').val('moblie');
				var data = {
					mobile : mobile,
					type : "1"
				};
				$.post(this.util.apiPath + "/zhixines/api/CS_SMSAuth/getcode", data, function(d) {
		//			alert(JSON.stringify(JSON.parse(d)))
					if (!d.status) {
//						justep.Util.hint(d.message, {
//							type : "danger"
//						});
						me.util.showPop(d.message);
						return false;
					} else {
							me.util.showPop(d.message);
//							justep.Util.hint(d.message);
					}
					//console.log(d.checkCode);
					localStorage.setItem('checkCode',d.checkCode);
				})
				getVcode = this.comp('getVcode');
				getVcode.set('disabled', true);
				this.comp('timer').start();
		}
	};
	//timer
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
	
	Model.prototype.vcodeBlur = function(event){

	};

	var inyes;
	var steps=0;
	Model.prototype.registerBtnClick = function(event){
		var mobile = this.comp('phoneData').val('mobile');
		var captcha = this.comp('vcode').val();
		var me=this;
//		debugger;
		var data = {
			mobile : mobile,
			type : "1",
			code : captcha,
			scode : localStorage.getItem('checkCode'),
			//user_id : user.id
		};
		if (captcha) {
			$.post(this.util.apiPath + "/zhixines/api/CS_SMSAuth/valid", data, function(d) {
				if (d.status) {
						var code = {
							shenfen  : localStorage.getItem('shenfenid'),
							cid  : localStorage.getItem('cid'),
							lid  : localStorage.getItem('lid'),
							bid  : localStorage.getItem('bid'),
							rid  : localStorage.getItem('rid'),
							addr  : localStorage.getItem('param'),
							mobile  : localStorage.getItem('number')
						 };
					if(steps>'0'){
//						me.util.showPop('请勿重复提交');
//						return false;
					}
					
//					$.post(me.util.apiPath + '/zhixines/api/xiaoxi/baocun', code, function(s) {//saveAuthenticationInfo
					$.post(me.util.apiPath + '/zhixines/api/xiaoxi/saveAuthenticationInfo', code, function(d) {//saveAuthenticationInfo
							steps++;
							if(d.s){
								var param = {
									mobile : localStorage.getItem("number"),
									password : localStorage.getItem("pwd")/*sessionStorage.getItem("pwd")*/,
								};
								justep.Shell.user.set('');
								var my =me;
								$.post(me.util.apiPath + '/api/user/login', param, function(s) {
										if(s.code=="200"){
											console.log(localStorage.getItem('vv'));
											if(localStorage.getItem('vv')==null){
												sessionStorage.setItem('nodiyici', 'nodiyici');
											}//是否第一次){}
											localStorage.setItem("number",mobile);
											sessionStorage.setItem("v", s.user.v);//存
											localStorage.setItem('vv', s.user.v);//存
											sessionStorage.setItem("uid", s.user.id);//存
											localStorage.setItem("uid", s.user.id);//存
											justep.Shell.user.set(s.user);
											if(sessionStorage.getItem('nodiyici')=='nodiyici'){
												justep.Shell.showPage("main.w",{});
											}else{
												localStorage.setItem('x5Version + introPage','yes');
												window.location.reload();
											}
											
										}else{
											my.util.showPop(s.msg);
//											if(sessionStorage.getItem('nodiyici')=='nodiyici'){
//												justep.Shell.showPage("main.w",{});
//											}else{
//												localStorage.setItem('x5Version + introPage','yes');
//												window.location.reload();
//											}
											/*日志打印处*/
											glob.logAjax('loupanmobile',s,'/api/user/login',param,'loupanmobile失败异常','4');/*日志打印处*/
										}
								});
							}
							if(!d.s){
								me.util.showPop(d.msg);
							}
						});//---------------
//					 }
					inyes=true;
//					me.util.showPop(d.message);
				} else {
					me.util.showPop(d.message);
				}
			})
		} else {
			this.util.showPop('请输入验证码！');
		}
//		alert(localStorage.getItem('shenfenid'))
//debugger;
//		};//----------------------inyes 	
	};

	return Model;
});