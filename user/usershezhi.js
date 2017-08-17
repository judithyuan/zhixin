define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("$UI/system/lib/cordova/cordova");

	var user = justep.Shell.user.get();//获取缓存用户表信息数据
	var Model = function(){
		this.callParent();
	};
	
	var newname;
	var newname1;
	var newsex;
	Model.prototype.modelLoad = function(event){
//		localStorage.setItem('username', user.name);
	};
	Model.prototype.util=require("../js/common");
	//设置头像
	Model.prototype.showAvatar = function(){
    	if(justep.Shell.user&&justep.Shell.user.get()){
			var user=justep.Shell.user.get();
			if(user.avatar!='')
				return this.util.apiPath+user.avatar;
			else return this.util.default_avatar;
		}
    	return this.util.default_avatar;
    };
    //设置姓名
	Model.prototype.name = function(){
//			alert(newname1)
			if(localStorage.getItem('username')==undefined){
				//newname = undefined;
				return user.name;
				//alert(user.name)
			}else{
				return localStorage.getItem('username');
			}	
			
    };
   //设置性别
	Model.prototype.newsex = function(){
//			alert(newname1)
			if(localStorage.getItem('usersex')==undefined){
				//newname = undefined;
				return user.sex;
				//alert(user.name)
			}else{
				return localStorage.getItem('usersex');
			}	
			
    };
	Model.prototype.avatarClick = function(event){
//		if (justep.Shell.user && justep.Shell.user.get()) {
			justep.Shell.showPage(require.toUrl('./avatar.w'));
//		} else {
//			justep.Shell.showPage("login");
//		}
	};
	//跳转设置修改密码界面
	Model.prototype.col13Click = function(event){
		justep.Shell.showPage(require.toUrl('./set-mima.w'));
	};
	Model.prototype.input1Blur = function(event){
//		alert(this.comp('input1').val());
		var me=this;
		//var newname1 = this.comp('input1').val();
//		this.nameusermain.set(this.comp('input1').val());
		localStorage.setItem('username', this.comp('input1').val());
		
		var data = {
		 name : this.comp('input1').val(),
		 id : user.id
		}
		var url = require.toUrl(this.util.apiPath + '/zhixines/api/xiaoxi/user_info')
		$.post(url,data,function(d){
//			console.log(d);
			justep.userReturnMs(me.comp('input1').val());
//			this.nameusermain.set(me.comp('input1').val());
			newname = d.msg;
			localStorage.setItem('username', me.comp('input1').val());
//			justep.Util.hint(d.msg)
			me.util.showPop(d.msg);
		});
		
	};
//	修改性别
	Model.prototype.input2Blur = function(event){
		localStorage.setItem('usersex', this.comp('input2').val());
		var me=this;
		var data ={
			sex : this.comp('input2').val(),
//			sex : user.sex,
			id : user.id
		};
		var url = require.toUrl(this.util.apiPath + '/zhixines/api/xiaoxi/user_info');
		$.post(url,data,function(d){
//			console.log(d);
			//localstorage.removeitem('usersex');
			newsex = d.msg;
//			justep.Util.hint(d.msg)
			me.util.showPop(d.msg);
		});
	};
	//退出按钮
	Model.prototype.tcBtn = function(event){
//		//退出之前先清除保存的楼盘
//		var user=justep.Shell.user.get();
//		var data = {
//			user_id : user.id
//		}		
//		$.ajax({
//			url:this.util.apiPath+'/api/user/loginout',
//			type:'post',
//			data:data,
//			dataType:'json',
//			async: false,	
//			success:function(d){
//				if(d.s==false){
////					console.log(d);
//					return false;
//				}
//			},
//			error:function(d){
////				console.log(d);
//			}
//		});
		localStorage.clear();
		justep.Shell.user.set('1');
		localStorage.setItem('x5Version + introPage','yes');
//		sessionStorage.setItem("v", '');//存		
		window.location.reload();
	};
	
	return Model;
});
