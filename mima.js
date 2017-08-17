define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};
	//引入配置文件
	Model.prototype.validate = require("./js/validate");
	Model.prototype.util = require("./js/common");
	Model.prototype.modelLoad = function(event){
		//this.getElementByXid("pwdmima").type = 'text';
		$('[xid=button2kejian]').trigger('click');
		$(this.getElementByXid("pwdmima")).bind("input propertychange",function(){
//			console.log($(this).val());
//			debugger;
			sessionStorage.setItem("pwdmima",$(this).val());//存
			if($(this).val().length>'5'){
				
				if(/^(?!\D+$)(?![^a-zA-Z]+$)\S{6,20}$/.test($(this).val())){
					$("[xid=registerBtn]").css("background-color","#7bc93d");
					//密码判断.animate({width:'100px',opacity:'0.8'},"slow")
					var a=0,b=0,c=0,d=0;	
					if(/\d/.test($(this).val())){a=1;}	
					if(/[a-z]/.test($(this).val())){b=1;}
					if(/[A-Z]/.test($(this).val())){c=1;}
					if(/[`~!@#$%^&*_.+<>{}\/'[\]]/im.test($(this).val())){d=1;}
//					console.log(a+b+c)
					if(((a==1&b==1&c==0)||(a==0&b==1&c==1)||(a==1&b==0&c==1))/*&&$(this).val().length<8*/){
						$('[xid=div1ruo]').stop().animate({width:'0%',opacity:'0.8'},"500");
						$('[xid=div2zhong]').stop().animate({width:'100%',opacity:'0.8'},"1000");
						$('[xid=div3qiang]').stop().animate({width:'0%',opacity:'0.8'},"1500");
					}//只有一种的时候
					if(((a==1&b==1&c==0)||(a==1&b==0&c==1))&&$(this).val().length>=8){
						$('[xid=div1ruo]').stop().animate({width:'0%',opacity:'0.8'},"500");
						$('[xid=div2zhong]').stop().animate({width:'100%',opacity:'0.8'},"1000");
						$('[xid=div3qiang]').stop().animate({width:'0%',opacity:'0.8'},"5000");
					}//只有2种的时候
					if(((a==1&b==1&c==1))/*&&$(this).val().length>10*/){
						$('[xid=div1ruo]').stop().animate({width:'0%',opacity:'0.8'},"500");
						$('[xid=div2zhong]').stop().animate({width:'0%',opacity:'0.8'},"1000");
						$('[xid=div3qiang]').stop().animate({width:'100%',opacity:'0.8'},"1500");
					}//只有3种的时候
					if(((a==0&b==0&c==0))||$(this).val().length<=5){
						$('[xid=div1ruo]').stop().animate({width:'0%',opacity:'0.8'},"500");
						$('[xid=div2zhong]').stop().animate({width:'0%',opacity:'0.8'},"1000");
						$('[xid=div3qiang]').stop().animate({width:'0%',opacity:'0.8'},"1500");
					}		
				}			
			}
			if($(this).val().length<='6'){
					$('[xid=div1ruo]').stop().animate({width:'0%',opacity:'0.8'},"500");
					$('[xid=div2zhong]').stop().animate({width:'0%',opacity:'0.8'},"1000");
					$('[xid=div3qiang]').stop().animate({width:'0%',opacity:'0.8'},"1500");
			}
		});

	};
	
	Model.prototype.pwdChange = function(event){
//		alert(/^(?!\D+$)(?![^a-zA-Z]+$)\S{6,20}$/.test(this.comp("pwd").val()))
//		if(/^(?!\D+$)(?![^a-zA-Z]+$)\S{6,20}$/.test(this.comp("pwdmima").val())){
//			$("[xid=registerBtn]").css("background-color","#7bc93d");
////			this.comp("registerBtn").set({
////			  "disabled":  false
////			});			
//		}else{
//			this.util.showPop("请输入至少6位字母加数字组合的密码！");
//			this.comp("pwdmima").val("");
//		}
	};

//	Model.prototype.button1Click = function(event){
//		justep.Shell.showPage(require.toUrl('./xieyi.w'),{
//			type:"zhuce"
//		});
//	};
	Model.prototype.registerBtnClick = function(event){
			localStorage.setItem("pwd",this.comp("pwdmima").val());
//			alert(this.comp("pwdmima").val());
			if(/^(?!\D+$)(?![^a-zA-Z]+$)\S{6,20}$/.test(this.comp("pwdmima").val())){
			$("[xid=registerBtn]").css("background-color","#7bc83e");
//			this.comp("registerBtn").set({
//			  "disabled":  false
//			});			
			}else{
				this.util.showPop("请输入至少6位字母加数字组合的密码！");
				this.comp("pwdmima").val("");
				return false;
			}
			try {
				var user = justep.Shell.user.get();//获取缓存用户表信息数据
				sessionStorage.setItem("pwd",this.comp("pwdmima").val());
				localStorage.setItem("pwd",this.comp("pwdmima").val());
				var me = this;
				
				//			alert(!this.params.ykrz)localstorage
			
				var urls;
				if(this.params.ykrz=='ykrzmima'){
					urls=this.util.apiPath + '/api/user/touristSavePassword';
					var datas={
						"v" : localStorage.getItem('vv'),
						"user_id" : user.id,
						"pwd" : this.comp("pwdmima").val(),
					};
				}else{
					urls=this.util.apiPath + '/api/user/register';
					var datas={
						"name" : localStorage.getItem('number'),
						"mobile" : localStorage.getItem('number'),
						"vcode" : localStorage.getItem("vcode"),
						"pwd" : this.comp("pwdmima").val(),
					};
				}				
			} catch (e) {
				// TODO: handle exception
			}

			$.post(urls, datas, function(s) {
//			$.post(this.util.apiPath + '/api/user/jieshou', datas, function(s) {
//				alert(s.user);
				try {
					if (s.s) {
						justep.Shell.showPage(require.toUrl('./xzlp.w'));
						me.util.showPop(s.msg);
						justep.Shell.user.set(s.user);
						localStorage.setItem('vv',s.user.v);
						localStorage.setItem("uid", s.user.id);//存
						localStorage.setItem("lp", JSON.stringify({
						}));
						justep.Shell.user.set(s.user);
						localStorage.setItem("city", JSON.stringify({
						}));
					} else {
						me.util.showPop(s.msg);
					}
				//存储用户信息uuid
				justep.Shell.user.set(s.user);
				} catch (e) {
					// TODO: handle exception
//					me.util.showPop('用户表出错');
				}

//				console.log(s.user+('用户表'));
			});
	};
	Model.prototype.button2Click = function(event){

		if(this.getElementByXid("pwdmima").type=='password'){
			this.getElementByXid("pwdmima").type = 'text';
			//看见密码的图标隐藏与显示
			$('[xid=image1]').toggle();
			$('[xid=image3]').toggle();
		}else{
			this.getElementByXid("pwdmima").type = 'password';
			$('[xid=image1]').toggle();
			$('[xid=image3]').toggle();
		}
	};
	return Model;
});

