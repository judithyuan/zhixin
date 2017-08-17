define(function(require) {
	var $ = require("jquery");
	require("./js/autoSize");
	var justep = require("$UI/system/lib/justep");
	var ShellImpl = require('$UI/system/lib/portal/shellImpl');
	var CommonUtils = require("$UI/system/components/justep/common/utils");
	require("$UI/system/lib/cordova/cordova");
	require("cordova!de.appplant.cordova.plugin.background-mode");
	require("cordova!cn.jpush.phonegap.JPushPlugin");
	require("cordova!cordova-plugin-statusbar");
	require("cordova!Umeng");
	//require("css!$UI/zhixin/paltform").load();
	var common = require("./js/common");
	glob = require("./js/globalBox");
	var Model = function() {
		this.callParent();
		this.qdggtp=justep.Bind.observable("");//启动页广告图片
		var shellImpl = new ShellImpl(this, {
			"contentsXid" : "pages",
			"pageMappings" : {
				"main" : {
					url : require.toUrl('./main.w')
				},"login" : {
					url : require.toUrl('./login.w')
				},
				"register" : {
					url : require.toUrl('./register.w')
				},
				"selcity" : {
					url : require.toUrl('./sel_city.w')
				},
				"sellp" : {
					url : require.toUrl('./sel_lp.w')
				},
				"selban" : {
					url : require.toUrl('./sel_ban.w')
				},
				"yanzheng" : {
					url : require.toUrl('./yanzheng.w')
				}
			}
			
		});
		shellImpl.useDefaultExitHandler = false;
		CommonUtils.attachDoubleClickExitApp(function() {
			if (shellImpl.pagesComp.getActiveIndex() === 1) {
				return true;
				this.enableClick();
			}
			return false;
		});
	};
	/**--------------------------*/
	var me;
	var timers=null;
	var startpageads;
	//启动页广告的id
	var startPageId;
	Model.prototype.modelLoad = function(event) {
		me=this;
	//	debugger;
		//手机类型
		var phoneType='';
		var ua = navigator.userAgent.toLowerCase();
		 if (/android/.test(ua)) {
			 phoneType='android';
			 try {
				 MobclickAgent.init("appkey", "all-channels");
			} catch (e) {
				// TODO: handle exception
			}
			
		 }
		else if(/iphone|ipad|ipod/.test(ua)){
			 phoneType='ios';
			try {
				StatusBar.styleDefault(false);	
			} catch (e) {
			}
		}
			//启动页广告
			if (!!localStorage.getItem('x5Version + introPage')) {
				$('[xid=loginGg]').show();
				console.log(!!localStorage.getItem('x5Version + introPage'));
				var url =common.apiPath+'/api/homepageads/startpageads';
				$.ajax({
					url:url,
					type:'post',
					dataType:'json',
					data:{push_platform:phoneType},
					async: true,
					success:function(e){
//						console.log(e);
						try {
							startpageads = e.startpage_ads;
						} catch (e) {
							// TODO: handle exception
						}					
						if(e.s){
							if(e.startpage_ads.push_platform=='all'||e.startpage_ads.push_platform==phoneType){
								//存储启动页的id
								startPageId=e.startpage_ads.id;
								me.qdggtp.set(e.startpage_ads.pic);
								var showTime=e.startpage_ads.show_time;
								if(e.startpage_ads.gswitch==1){
									$('[xid=span1jump]').show();
								}
								timers=setInterval(function(){
								showTime--;
			//					console.log(showTime);
								if(showTime==0){
									clearInterval(timers);
									timers=null;
									$('[xid=loginGg]').hide();
									$('[xid=span1jump]').hide();
									jumpPage();
								}
								},1000);
							}
							else{
								jumpPage();
							}
						}
						else{
							jumpPage();
						}
					},
					error:function(){
						jumpPage();
					}
				});/*ajax*/
			}else{
				jumpPage();
			}
		
	};
	//封装要跳转的页面
	var jumpPage=function(){
		// 获取用户信息
//		$('#introbox').hide();
		$('[xid=loginGg]').hide();
		localStorage.setItem('introlQdy', 'nmb');
//		localStorage.clear();
		justep.Shell.user = justep.Bind.observable();//创建缓存数据
		justep.Shell.lp = justep.Bind.observable();//创建缓存数据
		justep.Shell.city = justep.Bind.observable();//创建缓存数据
		justep.Shell.payyouhui = justep.Bind.observable();//创建缓存数据
		//var usermobile = localStorage.getItem('number');
		var windowContainer=me.comp('windowContainer1');
//		alert(localStorage.getItem('chooseRoom'));
		if(localStorage.getItem('chooseRoom')!=''&&localStorage.getItem('chooseRoom')!=null){//切换房屋过来的
			console.log(localStorage.getItem('chooseRoom'));
//			windowContainer.refresh(require.toUrl('./main.w'));
			var roomChoose={
				room_id:localStorage.getItem('room_id'),//存room_id,//switchId
				password:localStorage.getItem('password'),//存password,//switchId,
				user_id:localStorage.getItem('user_id'),//存user_id,//switchId,,
			};
			$.ajax({
				url:common.apiPath+'/api/user/getMultipleHousingList',
				type:'post',
				async: true,
//				timeout : 10,	
				data:roomChoose,
				dataType:'json',
				success:function(d){
					if (d.datas.s) {				
						localStorage.setItem('x5Version + introPage','yes');
						localStorage.setItem('ridduotao', d.datas.user.rid);//存
						sessionStorage.setItem("v", d.datas.user.v);//存
						localStorage.setItem('vv', d.datas.user.v);//存
						sessionStorage.setItem("uid", d.datas.user.id);//存
						localStorage.setItem("uid", d.datas.user.id);//存
						justep.Shell.user.set(d.datas.user);
						localStorage.setItem('x5Version + introPage','nmb');
						console.log(justep.Shell.user.get());
						windowContainer.refresh(require.toUrl('./main.w'));
					} else {
						common.showPop(d.datas.msg);
					}
				},
				error:function(d,textStatus){
					 if(textStatus=='timeout'){
				        //处理超时的逻辑
				        common.showPop('无网络/网络异常/网络超时：正在重连...');
				        jumpPage();
				      }
				      else{
				        //其他错误的逻辑
				      }
				}
			});
			localStorage.setItem('chooseRoom','');
			return false;
		}
		if(localStorage.getItem('vv')!=''&&localStorage.getItem('vv')!=null){
			var data = {
				uid:localStorage.getItem('uid'),//存
				v:localStorage.getItem('vv'),//存
			}; 
			$.ajax({
				url:common.apiPath + '/api/user/validCk',
				type:'post',
				dataType:'json',
				data:data,
				timeout : 10000,
				async: true,	
				success:function(d){
					if(d.s){
						justep.Shell.user.set(d.user);//保存用户数据表
						sessionStorage.setItem("v", d.user.v);//存
						localStorage.setItem('vv', d.user.v);
						windowContainer.refresh(require.toUrl('./main.w'));
					} else {
						justep.Shell.showPage(require.toUrl('./login.w'));		
					}
				},
				error:function(d,textStatus){
					justep.Shell.showPage(require.toUrl('./login.w'));
					 
					 if(textStatus=='timeout'){
				        //处理超时的逻辑
						 common.showPop('无网络/网络异常：连接信号太弱，请检查网络');
				      }
				      else{
				        //其他错误的逻辑
				      }
				}
			});
		}else{
			justep.Shell.showPage(require.toUrl('./login.w'));
		}		
	}
	//点击跳过广告
	Model.prototype.span1jumpClick = function(event){
		$('[xid=loginGg]').hide();
		$('[xid=span1jump]').hide();
		clearInterval(timers);
		timers=null;
		jumpPage();
	};
	Model.prototype.loginGgClick = function(event){
//		console.log(startpageads);
		$.ajax({
			url:common.apiPath + '/api/homepageads/increase_click_num',
			type:'post',
			data:{ads_id:startPageId},
			dataType:'json',
			timeout : 10000,
			async: true,
			success:function(e){
				console.log(e);
			}
		});
		try {
			if(startpageads.type = '2'){/*外部链接*/
				if(startpageads.link==''){
					return;
				}
				window.open(startpageads.link, '_blank', 'location=no,toolbar=no,closebuttoncaption=关闭')
			}
		} catch (e) {
			// TODO: handle exception
			console.log(e);
		}		
	};
	return Model;
});
