define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
		this.adress = justep.Bind.observable("");//地址
	};
	//引入配置文件
	Model.prototype.validate = require("../js/validate");
	Model.prototype.util = require("../js/common");
	var user = justep.Shell.user.get();//获取缓存用户表信息数据
	
	Model.prototype.modelLoad = function(event){
		this.adress.set(user.addr);
	};	
	Model.prototype.roomDataCustomRefresh = function(event){
//		
//		var data = {
//			id : user.id
//		}
//		var url = require.toUrl(this.util.apiPath+'/zhixines/api/xiaoxi/fwgl');
//		$.post(url,data,function(d){
//			event.source.loadData(d);
//		})
		try {
			
		} catch (e) {
		}
	};

	Model.prototype.col12Click = function(event){
//		this.comp("roomData").setValue("state", 0);
		var phoneData=this.comp('roomData');
		var row = event.bindingContext.$object;
		$(this).find("input[type='radio']").attr("checked",true);
		row.val("state", 1);
//		$(this).find("input[type='radio']").attr("checked",true);
//		mobile=row.val('mobile');
//		console.log(mobile);
//		document.getElementById('span1').innerText=mobile;
//		this.comp('getVcode').set({
//			 "disabled":  false
//		});
	};

	Model.prototype.col26Click = function(event){
//		this.util.showPop('暂时只支持认证一套房屋，并认证后暂不能修改！');
		sessionStorage.setItem("addRoomoneID",user.id);
		sessionStorage.setItem("addRoomone",'addRoomone');
		localStorage.setItem("number",user.mobile);
		justep.Shell.showPage(require.toUrl('../xzlp.w'));
	};

	Model.prototype.roomnewDataCustomRefresh = function(event){
//		var data = {
//			id : user.id
//		}		
//		$.ajax({
//			url:this.util.apiPath+'/zhixines/api/xiaoxi/ceshifwgl',//require.toUrl(common.apiPath+'/zhixines/api/tianqiyubao/ceshitianqi'),
//			type:'post',
//			data:data,
//			//dataType:'json',
//			async: false,	
//			success:function(d){
//				//console.log(d);
//				event.source.loadData(d);
//			},
//			error:function(d){
//				//console.log(d);
//			}
//		})		
	};


	Model.prototype.confirmClick = function(event){

	};

	Model.prototype.switchDtaCustomRefresh = function(event){
		var data = {
			user_id : user.id
		}		
		$.ajax({
			url:this.util.apiPath+'/api/user/getHousingList',//require.toUrl(common.apiPath+'/zhixines/api/tianqiyubao/ceshitianqi'),
			type:'post',
			data:data,
			dataType:'json',
			async: false,	
			success:function(d){
				if(d.s){
					event.source.loadData(d.info);
				}
			},
			error:function(d){
				console.log(d);
			}
		})		
	};


//点击切换楼盘
	Model.prototype.li1Click = function(event){
//		var me = this;
//		var row = event.bindingContext.$object;
//		var isdefault=row.val("default");
//		if(isdefault==1){
//			me.util.showPop("当前套不能切换");
//			return false;
//		}
//		var password=row.val("password");
//		var room_id=row.val("room_id");
//		var user_id=row.val("user_id");
//		var param = {
//			room_id:room_id,//switchId
//			password:password,
//			user_id:user_id,
//		};	
//		justep.Shell.user.set('');
//		var url =this.util.apiPath+'/api/user/getMultipleHousingList',me=this;
//		$.ajax({
//			url:url,
//			type:'post',
//			async: false,	
//			data:param,
//			dataType:'json',
//			success:function(d){
//				if (d.datas.s) {
//					sessionStorage.setItem("v", d.datas.user.v);//存
//					localStorage.setItem('vv', d.datas.user.v);//存
//					sessionStorage.setItem("uid", d.datas.user.id);//存
//					localStorage.setItem("uid", d.datas.user.id);//存
//					justep.Shell.user.set(d.datas.user);
//					window.location.reload();
//				} else {
//					me.util.showPop(d.datas.msg);
//				}
//			},
//			error:function(d){
//				console.log(d);
//			}
//		});
	};





	Model.prototype.col7Click = function(event){
		var me = this;
		var row = event.bindingContext.$object;
		var isdefault=row.val("default");
		if(isdefault==1){
			me.util.showPop("当前套不能切换");
			return false;
		}
		var password=row.val("password");
		var room_id=row.val("room_id");
		var user_id=row.val("user_id");
		localStorage.setItem('password', password);//存password
		localStorage.setItem('room_id', room_id);//存room_id
		localStorage.setItem('user_id', user_id);//存user_id
		var param = {
			room_id:room_id,//switchId
			password:password,
			user_id:user_id,
		};	
		localStorage.setItem('chooseRoom', JSON.stringify(param));//存
		justep.Shell.user.set('');
		var url =this.util.apiPath+'/api/user/getMultipleHousingList',me=this;
		$.ajax({
			url:url,
			type:'post',
			async: false,	
			data:param,
			dataType:'json',
			success:function(d){
//				alert(d.datas.user.v);rid
				if (d.datas.s) {				
					localStorage.setItem('x5Version + introPage','yes');
//					localStorage.setItem('ridduotao', d.datas.user.rid);//存
//					sessionStorage.setItem("v", d.datas.user.v);//存
//					localStorage.setItem('vv', d.datas.user.v);//存
//					sessionStorage.setItem("uid", d.datas.user.id);//存
//					localStorage.setItem("uid", d.datas.user.id);//存
//					justep.Shell.user.set(d.datas.user);
//					localStorage.setItem('x5Version + introPage','nmb');
//					console.log(justep.Shell.user.get());
//					justep.Shell.showPage('main')
					window.location.reload();
//					justep.Shell.showPage("main.w");
				} else {
					me.util.showPop(d.datas.msg);
				}
			},
			error:function(d){
				console.log(d);
			}
		});
	};





	return Model;
});