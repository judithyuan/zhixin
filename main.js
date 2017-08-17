define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("$UI/system/lib/cordova/cordova");
	require("css!$UI/demo/native/common/pub").load();
	require("cordova!phonegap-plugin-barcodescanner");
	require("cordova!cordova-plugin-app-version");//版本更新插件
	require("cordova!cordova-plugin-inappbrowser"); //版本更新插件
//	require("cordova!cordova-plugin-fastrde-downloader");//版本更新插件
	require("cordova!cordova-plugin-device");//版本更新插件判断设备信息
	var jpushInstance = require("./js/jpush");

	//判断手机类型
	var phone_type='';
	var ua = navigator.userAgent.toLowerCase();	
	if (/iphone|ipad|ipod/.test(ua)) {
			console.log("iphone");	
			phone_type='ios';
	} else if (/android/.test(ua)) {
		    console.log("android");	
		    phone_type='android';
	}
	numbb = "0";//版本
	uurrll = "";//url
	var Model = function(){
		this.callParent();
		this.STORE_ID = "com.justep.demo.advice.barcodedata";
		this.ggts = justep.Bind.observable("");//公告提示
		this.ggtsTime = justep.Bind.observable("");//公告提示日期
		this.syggtp=justep.Bind.observable("");//首页广告的图片
		this.wyjfdiscount = justep.Bind.observable("");//物业缴费最低折扣
		 //极光推送
		var common = require("./js/common");
        var registration_id ="";
    	jpushInstance.getRegistrationID().done(function(registrationID) {
			registration_id = registrationID;
		});
    	
        //获取极光注册ID。
    	//var i=0; 
		function GetregistrationID(){ 
			jpushInstance.getRegistrationID().done(function(registrationID){
			registration_id = registrationID;
			if(registration_id===""){
	        	GetregistrationID();
	        }else{
	        	localStorage.setItem('jpush',registration_id);//第二次获取
			   var datas={
				user_id : user.id,
				v : localStorage.getItem('vv'),
				jpush_id : registration_id
			};
			$.ajax({
				url:common.apiPath+'/zhixines/api/bbm/edit_jpush',
				type:'post',
				dataType:'json',
				data:datas,
				async: true,
				success:function(d){
					/*日志打印处*/
					glob.logAjax('2.3.11-main-52',d,'/zhixines/api/bbm/edit_jpush',datas,'main_极光推送','3');/*日志打印处*/
				},
				error:function(d){
				}	
			});
	        }
		});
		}
		GetregistrationID();

	};
 	//	定义函数请求-----------------------------------------------------
	$(document).ajaxStart(function() {
//		$('[xid=loadpopOver]').show();
	});
	$(document).ajaxStop(function() {
//		$('[xid=loadpopOver]').hide();
	});
	$(document).ajaxError(function(e) {
//		$('[xid=loadpopOver]').hide();
//		$('[xid=livelineOvermain]').hide();
//		console.log(e);
	});
	//请求出错
	Model.prototype.denglu = function(event){
		localStorage.setItem('x5Version + introPage','yes');
		window.location.reload();
	};
	//	定义函数请求-----------------------------------------------------	   
//	定义函数
	var common = require("./js/common");
	Model.prototype.util = common;
	var user = justep.Shell.user.get();//获取缓存用户表信息数据

	//消息推送
	$(function(){
	  	try {
			var ws = io.connect(common.ioPath);
			ws.on('messages', function (data){ //初始消息队列
			});		
			ws.on('open', function (){//连接成功
				//ws.emit('send', user.id);
				//与服务器建立了连接
		 	}); 
		    ws.on('get', function (data){//接收消息
		    		if(data.body.v!=localStorage.getItem('vv')&&user.id==data.body.user_id&&data.body.v!=undefined){
//		    			$('[xid=livelineOver]').show();
		    			console.log(data);
		    			glob.showOverline();
					}
					if(data.type == 'systemmsg'){
						if(data.body.lp_id == user.lid){
							$('#span98').show();
							$('[xid=span9xiaohondian]').show();
							localStorage.setItem('tips','1');
						}
					}else if(data.type == 'prvmsg'){
						if(data.body.user_id == user.id){
							$('#span98').show();
							$('[xid=span9xiaohondian]').show();
							localStorage.setItem('tips','1');
						}
					}				
	
				
		    });
		} catch (e) {
			console.log(e);
		}
    }); //消息推送----------------------- 
    
//    //监听事件返回物理键----
//    var listener = function(){
//		var exitAppTicker = 0;
//		var msg = $('<div style="display: none;z-index:99999;position: fixed;width: 100%;bottom: 25px;text-align: center;"><span style="font-size:18px;border-radius: 3px;padding: 7px;background-color: #383838;color: #F0F0F0;"></span></div>');//.appendTo('body');
//		exitAppTicker++;
//		msg.fadeIn(400).delay(2000).fadeOut(400,function(){
//			exitAppTicker = 0;
//			msg.remove();
//		});
//		if(exitAppTicker==2){
//			navigator.app.exitApp();
//		}
//		if(exitAppTicker==1){
//			justep.Shell.closePage();
//		}
//		var msgOne = $('<div style="display: none;z-index:99999;position: fixed;width: 100%;bottom: 125px;text-align: center;"><span style="font-size:18px;border-radius: 3px;padding: 7px;background-color: #383838;color: #F0F0F0;"></span></div>');//.appendTo('body');
//		msgOne.fadeIn(400).delay(2000).fadeOut(400,function(){
////			exitAppTicker = 0;
//			msgOne.remove();
//		});
////		alert(exitAppTicker);
//	};
//    document.addEventListener('backbutton', listener, false);
//    //监听事件返回物理键------
	//绑定楼盘信息
	
	//取消游客狂
	Model.prototype.button6Clickcancle = function(event){
		$('[xid=ykrzpopOver]').hide();
	};
	/*立刻认证*/    
	Model.prototype.button7Clicklikerenz = function(event){
		if(user.register_type=='1'){
			var url = require.toUrl('./xzlp.w');
			justep.Shell.showPage(url,{
			
			});
		}else{
			justep.Shell.showPage(require.toUrl('./mima.w'),{
				ykrz :'ykrzmima',
			});
		}
		
	};			
	var a = user.lp;
	Model.prototype.switchText = function(){
		if(a!=undefined){
			$('#image1').attr("src",require.toUrl("./img/main/i.png"));
			return a;
		}else{
			$('#image1').attr("src",require.toUrl("./img/main/dingwei.png"));
			return "熊猫e家";
		}
		
	};
	Model.prototype.modelModelConstruct = function(event){
			//    //监听事件返回物理键----
		var exitAppTicker = 0;
		var listener = function(){	
		exitAppTicker++;
		if(exitAppTicker == 1){
			justep.Shell.closePage();
			var msg = $('<div style="display: none;z-index:99999;position: fixed;width: 100%;bottom: 25px;text-align: center;"><span style="font-size:18px;border-radius: 3px;padding: 7px;background-color: #383838;color: #F0F0F0;"></span></div>');//.appendTo('body');
			msg.fadeIn(400).delay(2000).fadeOut(400,function(){
				exitAppTicker = 0;
				msg.remove();
			});
		}else if(exitAppTicker == 2){

			navigator.app.exitApp();
		}

	};
    document.addEventListener('backbutton', listener, false);
    
//    //监听事件返回物理键------
//		localStorage.setItem('x5Version + introPage','yes'); 
		/*
		 * 1、数据模型创建时事件 2、加载静态图片或从缓存中加载图片
		 */
		try {
			var carousel = this.comp("carousel1");
			var fImgUrl = localStorage.getItem("index_BannerImg_src");
			if(fImgUrl == undefined){
				$(carousel.domNode).find("img").eq(0).attr({
					"src" : "",
					"pagename" : "./detail.w"
				});
			}else{
				var fUrl = localStorage.getItem("index_BannerImg_url");
				$(carousel.domNode).find("img").eq(0).attr({
					"src" : fImgUrl,
					"pagename" : fUrl
				});
			}	

		} catch (e) {
			// TODO: handle exception
		}
	
	};
	var idc;
	Model.prototype.imgDataCustomRefresh = function(event){
		var dataarry = {
				lp_id : user.lid
		};
		var url = this.util.apiPath +'/zhixines/api/tianqiyubao/allbanner_release', me = this;
		$.post(url,dataarry, function(d) {
			event.source.loadData(d);
			callback();
		});
		function callback(){
			var carousel = me.comp("carousel1");
			event.source.each(function(obj) {
//				var src = me.util.apiPath + obj.row.val("banner");
				var src = obj.row.val("image");
				if(me.comp('contentsImg').getLength() > obj.index){
					$(carousel.domNode).find("img").eq(obj.index).attr({
						"src" : src,
						"name" :obj.row.val("id")
					});	
					
					if(obj.index == 0){
						localStorage.setItem("index_BannerImg_src", src);
					}
					idc = obj.row.val("id");
				}else{
					carousel.add('<img name='+obj.row.val("id")+' id="corsol" src="' + src + '" class="kj-img1" bind-click="openPageClick" />');
					idc = obj.row.val("id");
				}
			});
		}
	};
	
//	userReturnMs = function(flag) {
	justep.MaxRoll=function(obj) {
					$(obj).find(".w-h4Box").animate({
						marginTop: "-0.5rem"
			        },1000, function() {
			            $(this).css({ marginTop: "0rem" }).find(".h4even:first").appendTo($(this).find('ul'));
			        });

	};
	//有多少套房
	var houseList=0;
	//首页广告跳转的唯一标识符
	var uniqueSignMain='';
	//首页广告跳转页面的id
	var pageIdMain=0;
	//定时器
	var timers=null;
	//活动入口跳转的唯一标识符
	var uniqueSignActivity='';
	//活动入口跳转页面的id
	var pageIdActivity=0;
	/*活动入口的链接*/
	var hearUrl;
	/*外部链接广告*/
	var hearUrlG;
	/*活动入口的id*/
	var movableentryId;
	/*广告的id*/
	var homeframeId;
	Model.prototype.modelLoad = function(event){
	me=this;
	//------------------加载用户的房屋信息---------------------------------------
	var data = {
			user_id : user.id
		};
		var me=this;
//		glob.redShow(function(e){
//			justep.Shell.showPage(require.toUrl('./mima.w'),{ykrz :"ykrzmima",});
//		});
		/*封好*/
		glob.xmejAjax(this.util.apiPath+'/api/user/getHousingList',data,true,
				function(d){//成功回调
					try {
						me.houseInfo.loadData(d.info);
						if(d.info!=undefined){
							houseList=d.info.length;
						}		
					} catch (e) {
						// TODO: handle exception
						/*日志打印处*/
						glob.logAjax('2.3.11-main-291',e,'/api/user/getHousingList',data,'main_getHousingList'+user.id,'3');/*日志打印处*/
					}	
				},function(e){//失败回调
					console.log(e);
				});		
//		$.ajax({
//			url:this.util.apiPath+'/api/user/getHousingList',//require.toUrl(common.apiPath+'/zhixines/api/tianqiyubao/ceshitianqi'),
//			type:'post',
//			data:data,
//			dataType:'json',
//			async: false,	
//			success:function(d){
//				//event.source.loadData(d.info);
//				/*日志打印处*/
////					glob.logAjax('2.3.11-main-282',d,'/api/user/getHousingList',data,'main','5');/*日志打印处*/
//				try {
//					me.houseInfo.loadData(d.info);
//					if(d.info!=undefined){
//						houseList=d.info.length;
//					}		
//				} catch (e) {
//					// TODO: handle exception
//					/*日志打印处*/
//					console.log(e);
//					glob.logAjax('2.3.11-main-291',e,'/api/user/getHousingList',data,'main_getHousingList'+user.id,'3');/*日志打印处*/
//				}
//				
//			},
//			error:function(d){
//				console.log(d);
//			}
//	 });
	 //------------------首页广告-------------------------------------
	 
	//-------活动广告---------------------------------------------------------
	 if (/android/.test(ua)) {
		 data={
			lp_id:user.lid,
			user_id:user.id,
			v:user.v,
			push_platform : 'android'
		 };
	 }
	 else if(/iphone|ipad|ipod/.test(ua)){
		data={
			lp_id:user.lid,
			user_id:user.id,
			v:user.v,
			push_platform : 'ios'
		 };
	 }
	 $.ajax({
		url:common.apiPath+'/api/homepageads/movableentry',
		type:'post',
		dataType:'json',
		data:data,
		async: false,
		success:function(e){
			localStorage.setItem('online_pay_icon','');
			localStorage.setItem('online_pay_sign','');
			localStorage.setItem('online_pay_id','');
			if(e.s){
				console.log(e.movable_entry);
				if(e.movable_entry.push_platform=='all'||e.movable_entry.push_platform==phone_type){
					for(var i=0,length=e.movable_entry.display_page.length;i<length;i++){
						if(e.movable_entry.display_page[i]==1){
							movableentryId=e.movable_entry.id;
							$('[xid=imgBanner]').attr('src',e.movable_entry.pic);
							$('[xid=div1main]').css('display','block');
							/*优先判断是否由外部链接1内*/
							if(e.movable_entry.type=='1'){
								//跳转功能标识符
								uniqueSignActivity=e.movable_entry.unique_sign;
								//跳转id
								pageIdActivity=e.movable_entry.jump_id;
							}else{
								/*外部链接*/
								uniqueSignActivity=e.movable_entry.type;
								hearUrl = e.movable_entry.link;
								
							}								
						}
						if(e.movable_entry.display_page[i]==2){	
							localStorage.setItem('online_pay_advert',e.movable_entry.id);
							if(e.movable_entry.type=='1'){
								localStorage.setItem('online_pay_icon',e.movable_entry.pic);
								localStorage.setItem('online_pay_sign',e.movable_entry.unique_sign);
								localStorage.setItem('online_pay_id',e.movable_entry.jump_id);
							}else{
								localStorage.setItem('online_pay_icon',e.movable_entry.pic);
								localStorage.setItem('online_pay_sign',e.movable_entry.type);
								localStorage.setItem('hearUrl',e.movable_entry.link);
							}
						}
					}
				}
			}
		}
	});
	//----加载管家、首页icon等数据---------------------------------------------
	 var datas={
		lid : user.lid
	 };
	 $.ajax({
		url:common.apiPath+'/zhixines/api/Icon/getIconList',
		type:'post',
		dataType:'json',
		data:datas,
		async: true,
		success:function(d){
			try {
//				var indexI=0;
				for(var i=0,len=d.home_part1.length;i<len;i++){
					if(d.home_part1[i].short_name=='open_door'&&i!=2){
						var temp=d.home_part1[i];
						d.home_part1[i]=d.home_part1[2];
						d.home_part1[2]=temp;
					}
				}
				localStorage.setItem('home_top_icon',JSON.stringify(d.home_part1));
				localStorage.setItem('all_bottom_icon',JSON.stringify(d.home_part2));
				localStorage.setItem('house',JSON.stringify(d.house));	
				//localStorage.setItem('banner',JSON.stringify(d.banner));
//				if(d.banner!=''){
//					$('[xid=imgBanner]').attr('src',d.banner[0].icon_image);
//					$('[xid=div1main]').css('display','block');
//					localStorage.setItem('online_pay_icon',d.banner[0].icon_image2);
//				}
				this.bottomIconData.loadData(d.home_part2);
				this.topIconData.loadData(d.home_part1);
				/*日志打印处*/
//				glob.logAjax('2.3.11-main-331',d,'/zhixines/api/Icon/getIconList',datas,'main','5');/*日志打印处*/
			} catch (e) {
				// TODO: handle exception
				/*日志打印处*/
				glob.logAjax('2.3.11-main',e,'/zhixines/api/Icon/getIconList',datas,'main_getIconList加载管家、首页icon等数据'+user.id,'3');/*日志打印处*/
			}
			
		}.bind(this),
		error:function(d){
		}	
	});
	//---------------------------------------------------------------------------------------
		/*---------红包-----------*/
	 	datas={
	 			user_id:user.id,
	 			loupan_id:user.lid,
	 			v:user.v,
	 			act:'check'
	 	};
	 	//先请求是否有红包
	 	$.ajax({
	 		url:common.apiPath+'/zhixines/api/GetRedPacket/getRedPacket',
	 		type:'post',
	 		dataType:'json',
	 		data:datas,
	 		async: true,
	 		success:function(d){
	 			try {
	 				//如果有红包，其他不显示
					if(d.s){
		 				$('[xid=div1zzc]').css('display','block');
		 				$('[xid=span1reason]').html(d.redpacket_name);
//		 				$('[xid=ggtspopOver]').css('display','none');
//		 				//首页广告
//		 				$('[xid=advertisementPopOver]').hide();
//		 				clearInterval(timers);
//						timers=null;
		 			}
		 			else{
		 				$('[xid=div1zzc]').css('display','none');
		 				//请求公告
		 				var url = me.util.apiPath+'/zhixines/api/tianqiyubao/unread_notice';
						var datas = {
							user_id : user.id,
							loupan_id : user.lid
						};
						$.ajax({
							url : url,
							data : datas,
							dataType : 'json',
							type : 'post',
							async : true,
							success : function(e){
								if(e.s){
									$('[xid=ggtspopOver]').show();
									me.ggts.set(e.content);//公告提示
									me.ggtsTime.set(e.add_time);//公告提示日期
									localStorage.setItem('ggtsId', e.id);
								}else{
									$('[xid=ggtspopOver]').hide();
									//请求首页广告
									var data;
									if (/android/.test(ua)) {
										data={
											lp_id:user.lid,
											user_id:user.id,
											v:user.v,
											push_platform : 'android'
										 };
									 }
									 else if(/iphone|ipad|ipod/.test(ua)){
										data={
											lp_id:user.lid,
											user_id:user.id,
											v:user.v,
											push_platform : 'ios'
										 };
									 }
									$.ajax({
										url:common.apiPath+'/api/homepageads/homeframe',
										type:'post',
										dataType:'json',
										data:data,
										timeout : 10000,
										async: true,
										success:function(e){
											if(e.s){
												if(e.home_frame.push_platform=='all'||e.home_frame.push_platform==phone_type){
													homeframeId=e.home_frame.id;
													$('[xid=advertisementPopOver]').show();
													me.syggtp.set(e.home_frame.pic);
													var showTime=e.home_frame.show_time;
													timers=setInterval(function(){
														showTime--;
														//console.log(showTime);
														if(showTime==0){
															clearInterval(timers);
															timers=null;
															$('[xid=advertisementPopOver]').hide();
														}
													},1000);
													//是否显示关闭按钮
													if(e.home_frame.gswitch==1){
														$('[xid=imageClose]').show();
													}
													/*判断内外联*/
													if(e.home_frame.type=='1'){
														//存储唯一标识符
														uniqueSignMain=e.home_frame.unique_sign;
														//存储跳转页面的id
														pageIdMain=e.home_frame.jump_id;
													}else{
														hearUrlG=e.home_frame.link;
														uniqueSignMain = e.home_frame.type;
													}						
												}
											}//----------------------------------------
											else{
												$('[xid=advertisementPopOver]').hide();
											}
										}
									});//--------------广告请求完成-----------------------------
								}
								
							},
							error : function(e){ 
								console.log(e.statusText);
							}
						});
		 			}
				} catch (e) {
					// TODO: handle exception
					/*日志打印处*/
					glob.logAjax('2.3.11-main',e,'/zhixines/api/GetRedPacket/getRedPacket',datas,'main先请求是否有红包'+user.id,'3');/*日志打印处*/
				}
	 			
	 		}
	 	});
		/*----------红包------------*/
		localStorage.setItem('x5Version + introPage','yes');
		 
		 if ($('.w-h4Box>*').length == 1) {
		     $('.w-h4Box>*').clone().appendTo($('.w-h4Box').find("ul"));
		 } 
		 setInterval('justep.MaxRoll(".w-scroll")', 5000);
		//我的中心和主页的小红点	
		//判断是否认证
		if(user.is_auth_name=='1'){
//			this.getComponents('rzpopOver').show();
		}else{
			if(user.lid=='10'){/*游客小区10*/
//				$('[xid=ykrzpopOver]').show();
			}else{
				$('[xid=rzpopOver]').show();
			}
		}
		
		//限号
//		var a = new Array("7", "1", "2", "3", "4", "5", "6");  
//		var week = new Date().getDay();
//		if(a[week]>=1&&a[week]<=5){
//			var str = a[week];
//			var str1 = a[week];
//			for(i=0;i<5;i++){
//				str1++;
//				if(str1=='10'){str1=0};
//			}   
//			this.getElementByXid('span4').innerText=str;
//			this.getElementByXid('span6').innerText=str1;
//		}else{
//			document.getElementById("span4").innerText="无";
//			document.getElementById("span6").innerText="无";
//		}
//		$("[xid=span4]").innerText=str;
//		$("[xid=span6]").innerText=str;
//		var urlapiPath = this.util.apiPath;
//		console.log(user) 

	}; 
	
	
	//图片跳转
	Model.prototype.openPageClick = function(event){
		var pageName = event.currentTarget.getAttribute('name');
		var idc=pageName;
//		if(user.is_auth_name=='1'){
			justep.Shell.showPage(require.toUrl('./maz.w'), {
				id : idc
			});
//		}else{
//			if(user.lid=='10'){/*游客小区10*/
//				$('[xid=ykrzpopOver]').show();
//			}else{
//				$('[xid=rzpopOver]').show();
//			}
//			
//		}
	};
	//选择楼盘
	//是否被点击
	var isClick=false;
	Model.prototype.selBuildBtnClick = function(event){
//		alert(2);
		if(houseList<=1){
			return;
		}
		console.log(localStorage.getItem("pwd"));
		isClick=!isClick;
		if(isClick){
			$('[xid=villagepopOver]').css('display','block');
		}
		else{
			$('[xid=villagepopOver]').css('display','none');
		}
	};
	Model.prototype.button1Click = function(event){
		var comp = this.comp('distpicker');
		comp.show();
	};
	//天气预报
	Model.prototype.wenduDataCustomRefresh = function(event){
		var str;
		var str1;
		var a = new Array("7", "1", "2", "3", "4", "5", "6");  
		var week = new Date().getDay();
		if(a[week]>=1&&a[week]<=5){
			str = a[week];
			str1 = a[week];
			for(i=0;i<5;i++){
				str1++;
				if(str1=='10'){str1=0;}
			}   
		}else{
			str="无";
			str1="无";
		}
		var data = {
			z:'one'
		};
		var me=this;
		var url = require.toUrl(this.util.apiPath+'/zhixines/api/tianqiyubao/ceshitianqi');
		$.post(url,data,function(d){
			try {
				me.comp("wenduData").newData({
					"defaultValues" : [ {
							"day_air_temperature" : d.a.day_air_temperature,
							"day_weather" : d.a.day_weather,
							"night_air_temperature" : d.a.night_air_temperature,
							"night_weather_pic" : d.a.night_weather_pic,
							"quality" : d.a.quality,
							"sports" : d.a.sports,
							"xh" : str,
							"xh1" : str1
					} ]
				});				
			} catch (e) {
				// TODO: handle exception
				/*日志打印处*/
					glob.logAjax('2.3.11-main',e,'/zhixines/api/tianqiyubao/ceshitianqi',data,'main天气预报'+user.id,'3');/*日志打印处*/
			}

		});
	};
	//物业呼叫
	Model.prototype.image16Click = function(event){
			var me=this;
			if(user.is_auth_name=='1'){
				var data = {
						id : user.lid
				};
				$.post(this.util.apiPath +'/zhixines/api/tianqiyubao/wyhj',data, function(d){
					if(d.s!=undefined){
						me.util.showPop(d.msg);
					}else{
						var phone = d[0].phone;
						if (d[0].phone) {
							window.location.href = 'tel:' + phone;
						} else {
							me.util.showPop('暂无物业求助电话');
						}
					}	
				});
			}else{
				if(user.lid=='10'){/*游客小区10*/
					$('[xid=ykrzpopOver]').show();
				}else{
					$('[xid=rzpopOver]').show();
				}
			}	
	};
	//公告数据
	Model.prototype.gonggaoDataCustomRefresh = function(event){
		var gonggaoData = event.source;
		var data = {
			lp_id : user.lid,
			user_id : user.id
		};
		$.post(this.util.apiPath +'/zhixines/api/tianqiyubao/gonggao_release',data,function(data){
			gonggaoData.loadData(data);
		});	
	};
	//跳转帮忙页面
	Model.prototype.col19Click = function(event){
		if(user.is_auth_name=='1'){
			var url = require.toUrl('./bangmang.w');
			justep.Shell.showPage(url,function(){
	//			dataid : this.comp("bangmangData").val('id');
			});
		}else{
			if(user.lid=='10'){/*游客小区10*/
				$('[xid=ykrzpopOver]').show();
			}else{
				$('[xid=rzpopOver]').show();
			}
		}

	};
	//跳转公告详情
	Model.prototype.list1Click = function(event){

	};
	Model.prototype.li3Click = function(event){
		var row = event.bindingContext.$object;
		var url = require.toUrl('./gonggaoxqyuedu.w');
		justep.Shell.showPage(url,{
			id : row.val('id')
		});
	};
	//公告列表
	Model.prototype.image18Click = function(event){
		var url = require.toUrl('./linli/linli-main.w');
		justep.Shell.showPage(url,{
//				maingd:'shouyegd'
		});	
	};		
	Model.prototype.button3Click = function(event){
		if(user.is_auth_name=='1'){
			var url = require.toUrl('./gonggaoxq.w');
			justep.Shell.showPage(url,{
				//id : this.comp('gonggaoData').val('id')
			});
		}else{
			if(user.lid=='10'){/*游客小区10*/
				$('[xid=ykrzpopOver]').show();
			}else{
				$('[xid=rzpopOver]').show();
			}
		}
	
	};
	//提示框去认证
	Model.prototype.button7Click = function(event){
		var url = require.toUrl('./xzlp.w');
		justep.Shell.showPage(url,{
		
		});
	};
	//提示框取消
	Model.prototype.button6Click = function(event){
		$('[xid=rzpopOver]').hide();
	};
		//天气跳转
	Model.prototype.row11Click = function(event){
		var url = require.toUrl('./tianqixq.w');
		justep.Shell.showPage(url,{
		
		});
	};	

	Model.prototype.tianqiDataCustomRefresh = function(event){

	};	
	//跳转消息中心
	Model.prototype.span9Click = function(event){
		localStorage.setItem('tips','0');
		$('#span98').hide();
		var url = require.toUrl('./user/entermsg.w');
		justep.Shell.showPage(url,{
			
		});
	};		
	//消息中心回调
	justep.tipsxiaoxi = function(tips){
		$('#span98').hide();
	};
	
	//被挤掉
	Model.prototype.denglu = function(event){
		window.location.reload();
	};
	
	//进入投诉建议界面
	Model.prototype.body3Click = function(event){
		var url = require.toUrl('./user/user-jianyi.w');
		justep.Shell.showPage(url,{
		
		});
	};

	
	//今日特惠
	Model.prototype.topDataCustomRefresh = function(event){
		var url = this.util.shopPath+'/mobile/index.php?act=index&op=panda',me=this;
		var datas={
			key : localStorage.getItem('vv'),//'c229788b27b907fe759a01bba3d02ac5',
			loupan_id : user.lid
		};
		$.ajax({
			url : url,
			dataType: 'json',
			data : datas,
			type : 'get',
			async : false,
			success : function(e){
				try {
					event.source.loadData(e.datas.find_goods);
					var rightData =me.comp('rightData');
					rightData.newData({
						"defaultValues" : [ {
							"goodID" : e.datas.ad_three.rectangle1_data,
							"img" :e.datas.ad_three.rectangle1_image,
							"type" : e.datas.ad_three.rectangle1_type,
							'rectangle1_isintime' : e.datas.ad_three.rectangle1_isintime
						} ]
					});
					var leftData =me.comp('leftData');
					leftData.newData({
						"defaultValues" : [ {
							"goodID" : e.datas.ad_three.rectangle2_data,
							"img" :e.datas.ad_three.rectangle2_image,
							"type" : e.datas.ad_three.rectangle2_type,
							'rectangle1_isintime' : e.datas.ad_three.rectangle2_isintime
						} ]
					});
					var top1Data =me.comp('top1Data');
					top1Data.newData({
						"defaultValues" : [ {
							"goodID" : e.datas.ad_three.square_data,
							"img" :e.datas.ad_three.square_image,
							"type" : e.datas.ad_three.square_type,
						} ]
					});
				} catch (e) {
					// TODO: handle exception
					/*日志打印处*/
					glob.logAjax('2.3.11-main-684',e,'/mobile/index.php?act=index&op=panda',datas,'main'+user.id,'3');/*日志打印处*/
				}
				
			},
			error:function(d){
				console.log(d);
			}
		});
	};
	//今日特惠右边商品
	Model.prototype.rightDataCustomRefresh = function(event){

	};

	//健康Data
	Model.prototype.healthyDtaCustomRefresh = function(event){
		var url =this.util.apiPath+'/zhixines/api/xiaoxi/getEHome';
		var user=justep.Shell.user.get();
		var data={lid:user.lid};
		$.ajax({
			url:url,
			type:'post',
			async: false,	
			data:data,
			dataType:'json',
			success:function(d){
			var flag= 0;
			if(d[0] && ("content" in d[0])){
				flag = 1;
			}
			event.source.loadData(d);
			}.bind(this),
			error:function(d){
				console.log(d);
			}
		});
	};		
	Model.prototype.jiankang = function(event){
		var row = event.bindingContext.$object;
		var id=row.val('id');
		var url = require.toUrl('./linli/ejxq.w');
		justep.Shell.showPage(url,{
			ejid:id
		});
	};	
	//邻里更多
	Model.prototype.linligengduo = function(event){
//		alert(1)
		var url = require.toUrl('./linli/linli-main.w');
		justep.Shell.showPage(url,{
			maingd:'shouyegd'
		});	 	
	};	

	//今日特惠
	Model.prototype.li8Click = function(event){
		var row = event.bindingContext.$object;
		var bb=row.val('goodID');
		justep.Shell.showPage(require.toUrl("./shop/detail.w"), {
			goodsId : bb,
//			shopID : data.getValue("fShopID")
		});
	};	
	
	Model.prototype.li5Click = function(event){
		var row = event.bindingContext.$object;
		var bb=row.val('goodID');
		
		justep.Shell.showPage(require.toUrl("./shop/detail.w"), {
			goodsId : bb,
		});
	};	

	Model.prototype.li7Click = function(event){
		var row = event.bindingContext.$object;
		var bb=row.val('goodID');
		justep.Shell.showPage(require.toUrl("./shop/detail.w"), {
			goodsId : bb,
		});
	};	


	//提示公告
	Model.prototype.ggtsDataCustomRefresh = function(event){
//		var url = this.util.apiPath+'/zhixines/api/tianqiyubao/unread_notice',me=this;
//		var datas = {
//			user_id : user.id,
//			loupan_id : user.lid
//		};
//		$.ajax({
//			url : url,
//			data : datas,
//			dataType : 'json',
//			type : 'post',
//			async : true,
//			success : function(e){
//				if(e.s){
//					$('[xid=ggtspopOver]').show();
//					me.ggts.set(e.content);//公告提示
//					me.ggtsTime.set(e.add_time);//公告提示日期
//					localStorage.setItem('ggtsId', e.id);
//					//有物业广告
//					haveWg=true;
//				}else{
//					$('[xid=ggtspopOver]').hide();
//				}
//				
//			},
//			error : function(e){ 
//				console.log(e.statusText);
//			}
//		});
		var me=this;
		 /*************打折*************************/
		$.ajax({
				url :  this.util.apiPath+'/zhixines/api/xiaoxi/get_lowest_discount',
				data : {lid : user.lid},
				dataType : 'json',
				type : 'post',
				async : true,
				success : function(d){
					
					if(d.discount<10){
						me.wyjfdiscount.set(d.discount+'折');
					}else{
						me.wyjfdiscount.set(false);
					}
				},
				error : function(d){
					console.log(d);
				}
		});
	};	
	//提示公告
	Model.prototype.col2Click = function(event){
		justep.Shell.showPage(require.toUrl('./gonggaoxqyuedu.w'),{
			id : localStorage.getItem('ggtsId')
		});
		$('[xid=ggtspopOver]').hide();
	};	
	//提示公告guanbi
	Model.prototype.ggtsclise = function(event){
		$('[xid=ggtspopOver]').hide();
		var data = {
			id : localStorage.getItem('ggtsId'),
			user_id : user.id
		};
		$.post(this.util.apiPath + '/zhixines/api/tianqiyubao/yuedu',data,function(data){
		});
	};	
	//发现好货
	Model.prototype.findmainshowpage = function(event){
		var row = event.bindingContext.$object;
		justep.Shell.showPage(require.toUrl('./shop/detail.w'), {
				jishida : row.val('data'),
				goodsId : row.val('data')
		});	
	};	

	Model.prototype.button19Click = function(event){
		$('[xid=ykrzpopOver]').hide();
	};
	//首页顶部Icon数据----------------------------------
	Model.prototype.topIconDataCustomRefresh = function(event){
		//console.log(JSON.parse(localStorage.getItem('home_top_icon')));
		event.source.loadData(JSON.parse(localStorage.getItem('home_top_icon')));
	};
	//首页上面的图标对应的功能--------------------------------
	var qbsub=0;
	Model.prototype.topIconClick = function(event){
		var row = event.bindingContext.$object;
		switch(row.val('short_name')){
			//投诉咨询--------------------------------------------------
			case 'suggest':
				if(user.is_auth_name=='1'){
					var url = require.toUrl('./wyfw/customer-councel.w');
					justep.Shell.showPage(url,{});
				}else{
		//			this.util.showPop("该服务目前仅对指定小区的认证住户开通");
					$('[xid=ykrzpopOver]').show();
				}
			break;
			//在线缴费--------------------------------------------------
			case 'online_pay':
				if(user.is_auth_name=='1'){
					var url = require.toUrl('./guanjia/Paycost.w');
					justep.Shell.showPage(url,{
					});			
				}else{
					if(user.lid=='10'){/*游客小区10*/
						$('[xid=ykrzpopOver]').show();
					}else{
						$('[xid=rzpopOver]').show();
					}
				}
				break;
			//快递上门------------------------------------------------
			case 'express_service':
				if(user.is_auth_name=='1'){
					justep.Shell.showPage(require.toUrl('./kuaidi.w'));
				}else{
		//		$(".x-hint-top").css("color","red")
					if(user.lid=='10'){/*游客小区10*/
						$('[xid=ykrzpopOver]').show();
					}else{
						$('[xid=rzpopOver]').show();
					}
				}
				break;
			//开门------------------------------------------------------
			case 'open_door':
				if(user.is_auth_name=='1'){
					var url = require.toUrl('./door/entrance.w');
					justep.Shell.showPage(url,{
						
					});
				}else{
					if(user.lid=='10'){/*游客小区10*/
						$('[xid=ykrzpopOver]').show();
					}else{
						$('[xid=rzpopOver]').show();
					}
				}
				break;
			//物业保修-----------------------------------------------------
			case 'repairs_service':
				if(user.is_auth_name=='1'){
					//报事报修修改简洁版本
					var url = require.toUrl('./wyfw/onebxxq.w');
					justep.Shell.showPage(url,{
						
					});
				}else{
					if(user.lid=='10'){/*游客小区10*/
						$('[xid=ykrzpopOver]').show();
					}else{
						$('[xid=rzpopOver]').show();
					}
				}
				break;
			//智能锁车------------------------------------------
			case 'lock_car':
				if(user.is_auth_name!='1'){
					if(user.lid=='10'){/*游客小区10*/
						$('[xid=ykrzpopOver]').show();
					}else{
						$('[xid=rzpopOver]').show();
					}
					return false;
				}
				var pData = {
					lp_id:user.lid
				};
				$.ajax({
					url : this.util.apiPath+'/zhixines/api/jiaofei/is_nwp',
					data : pData,
					dataType : 'json',
					type : 'post',
					async : false,
					success : function(e){
						if(e.datas.s){//内盘为true
							sessionStorage.setItem('zhesale', '');
							justep.Shell.showPage(require.toUrl('./wyfw/carFee.w'),{
								jftype :'2',
								old : 'yes'
							});	
						}else{
							justep.Shell.showPage(require.toUrl('./wyfw/carFee.w'),{
								jftype :'2',
								waipan : 'waipan'
							});
							//		------------------------------------------------
						}
					},
					error : function(e){
						console.log(e);
					}
				});
				break;
			//社区公告notice
			case 'notice':
				var url = require.toUrl('./linli/linli-main.w');
				justep.Shell.showPage(url,{
		//				id : this.comp('gonggaoData').val('id')
				});
				break;
			//垃圾费garbage_fee
			case 'garbage_fee':
				if(user.is_auth_name!='1'){
		//			this.util.showPop("该服务目前仅对指定小区的认证住户开通");
					$('[xid=ykrzpopOver]').show();
					return false;
				}
				var pData = {
					lp_id:user.lid
				};
				$.ajax({
					url : this.util.apiPath+'/zhixines/api/jiaofei/is_nwp',
					data : pData,
					dataType : 'json',
					type : 'post',
					async : true,
					success : function(e){
						if(e.datas.s){//内盘为true
								var pData={
									lid : user.lid
								},me=this;
								$.ajax({
									url : common.apiPath+'/zhixines/api/xiaoxi/show_payment_category',
									data : pData,
									type : 'post',
									dataType : 'json',
									async : false,
									success : function(es){
										justep.Shell.showPage(require.toUrl('./wyfw/alljiaofei.w'),{
												jftype :'3',
										});
									},
									error : function(es){
										console.log(es);
									}
								});			
						}else{
							justep.Shell.showPage(require.toUrl('./wyfw/alljiaofei.w'),{
								jftype :'3',
								waipan : 'waipan'
							});	
							//		------------------------------------------------
						}
					},
					error : function(e){
						console.log(e);
					}
				});
				break;
			//电费
			case 'power_fee':
				if(user.is_auth_name!='1'){
		//			this.util.showPop("该服务目前仅对指定小区的认证住户开通");
					$('[xid=ykrzpopOver]').show();
					return false;
				}
				var url = require.toUrl('./guanjia/yiruan.w');
				justep.Shell.showPage(url,{
					costType:'power_fee'
				});
				break;
			//气费
			case 'gas_fee':
				if(user.is_auth_name!='1'){
		//			this.util.showPop("该服务目前仅对指定小区的认证住户开通");
					$('[xid=ykrzpopOver]').show();
					return false;
				}
				var url = require.toUrl('./guanjia/yiruan.w');
				justep.Shell.showPage(url,{
					costType:'gas_fee'
				});
				break;
			//电信宽带
			case 'broadband':
				if(user.is_auth_name!='1'){
		//			this.util.showPop("该服务目前仅对指定小区的认证住户开通");
					$('[xid=ykrzpopOver]').show();
					return false;
				}
				var url = require.toUrl('./guanjia/yiruan.w');
				justep.Shell.showPage(url,{
					costType:'broadband'
				});
				break;
			//汽车票
			case 'bus_tickets':
				if(user.is_auth_name!='1'){
		//			this.util.showPop("该服务目前仅对指定小区的认证住户开通");
					$('[xid=ykrzpopOver]').show();
					return false;
				}
				var url = require.toUrl('./guanjia/yiruan.w');
				justep.Shell.showPage(url,{
					costType:'bus_tickets'
				});
				break;
			//手机充值
			case 'mobile_recharge':
				if(user.is_auth_name!='1'){
		//			this.util.showPop("该服务目前仅对指定小区的认证住户开通");
					$('[xid=ykrzpopOver]').show();
					return false;
				}
				var url = require.toUrl('./guanjia/yiruan.w');
				justep.Shell.showPage(url,{
					costType:'mobile_recharge'
				});
				break;
			//违章查询
			case 'query_traffic_violations':
				if(user.is_auth_name!='1'){
		//			this.util.showPop("该服务目前仅对指定小区的认证住户开通");
					$('[xid=ykrzpopOver]').show();
					return false;
				}
				var url = require.toUrl('./guanjia/yiruan.w');
				justep.Shell.showPage(url,{
					costType:'query_traffic_violations'
				});
				break;
			//e家生活
			case 'ehome_life':
				var url = require.toUrl('./linli/linli-main.w');
				justep.Shell.showPage(url,{
				
				});
				break;
			//e家商城
			case 'ehome_shop':
				var url = require.toUrl('./shop/shop-main.w');
				justep.Shell.showPage(url,{
				});	
				break;
			//钱包
			case 'wallet':
				var winopenqb;
				var mycallback;
				var datas = {
					uid : user.id
				};
				//防止重复提交
				if(qbsub>0){
					return false;
				}else{
					$.ajax({
						url : this.util.apiPath+'/zhixines/api/wallet/getwallet',
						data : datas,
						dataType : 'json',
						type : 'post',
						async : false,
						success : function(e){
							qbsub=qbsub+1;
							var myCallback = function(event) {  
								 console.log("event.type"+event.type); 
							};
							if(e.datas.url.length>0){
								winopenqb=window.open(e.datas.url, '_blank', 'location=no,toolbar=no,closebuttoncaption=关闭');
								winopenqb.addEventListener('loadstart',function(event){
									if(event.url.length>0){
										 var stringUrl=event.url;
										   var arr=new Array();
										    arr=stringUrl.split(".html");
										    if(arr[0].length>0){
										    	var substring=arr[0].substring(arr[0].length-5,arr[0].length);
										    	if(substring=="close"){
										    		winopenqb.close();
										    		winopenqb.removeEventListener('loadstart', myCallback);
										    		qbsub=0;
										    	}
										    }	
									}	  	               
					           });	
							}	
						}
					});
				}
				break;
		}
		
		
	};
	//底部的Icon数据
	Model.prototype.bottomIconDataCustomRefresh = function(event){
//		console.log(JSON.parse(localStorage.getItem('all_bottom_icon')));
		event.source.loadData(JSON.parse(localStorage.getItem('all_bottom_icon')));
	};
	//底部的功能
	Model.prototype.bottomIconClick = function(event){
		var row = event.bindingContext.$object;
		//我的--------------------------------------------------------
		if(row.val('short_name')=='mine'){
			var url = require.toUrl('./user/user-main.w');
			justep.Shell.showPage(url,{
				tz:"sy"
			});
		}
		//邻里----------------------------------------------
		if(row.val('short_name')=='neighbourhood'){
			var url = require.toUrl('./linli/linli-main.w');
			justep.Shell.showPage(url,{
			
			});
		}
		//商城-----------------------------------------------
		if(row.val('short_name')=='shop'){
			var url = require.toUrl('./shop/shop-main.w');
			justep.Shell.showPage(url,{
			});	
		}
		//管家steward-------------------------------
		if(row.val('short_name')=='steward'){
				var url = require.toUrl('./guanjia/guanjia-main.w');
				justep.Shell.showPage(url,{
				
				});
		}
	};
	//点击imgBanner跳转活动页面
	Model.prototype.div1mainClick = function(event){
		//请求点击次数的接口
		$.ajax({
			url:common.apiPath + '/api/homepageads/increase_click_num',
			type:'post',
			data:{ads_id:movableentryId},
			dataType:'json',
			timeout : 10000,
			async: true,
			success:function(e){
				console.log(e);
			}
		});
		jumpPage(uniqueSignActivity,pageIdActivity,hearUrl);
	};
	Model.prototype.addrClick = function(event){
		//先隐藏
		$('[xid=villagepopOver]').css('display','none');
		var row = event.bindingContext.$object;
		$(this).addClass('liHouse');
	//	$('[xid=listManyHouse]').css('display','none');
		var me = this;
		//var row = event.bindingContext.$object;
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
		var url =this.util.apiPath+'/api/user/getMultipleHousingList';
		$.ajax({
			url:url,
			type:'post',
			async: true,	
			data:param,
			dataType:'json',
			success:function(d){
				if (d.datas.s) {				
					localStorage.setItem('x5Version + introPage','yes');
					window.location.reload();
				} else {
					me.util.showPop(d.datas.msg);
				}
			},
			error:function(d){
				console.log(d);
			}
		});
	};
	//点击遮罩层的时候
	Model.prototype.divzzcClick = function(event){
		isClick=false;
	};
	//点击领取红包跳转事件
	Model.prototype.span3btnClick=function(event){
		var url = require.toUrl('./user/redDelitle.w');
		justep.Shell.showPage(url,{})
		$('[xid=div1zzc]').css('display','none');
	}
	Model.prototype.span5qxClick = function(event){
		$('[xid=div1zzc]').css('display','none');
	};
	//广告页的关闭
	Model.prototype.imageCloseClick = function(event){
		clearInterval(timers);
		timers=null;
		$('[xid=advertisementPopOver]').hide();
	};
	//广告页的跳转
	Model.prototype.image6AdvertisementClick = function(event){
		clearInterval(timers);
		timers=null;
		$('[xid=advertisementPopOver]').hide();
		//请求点击次数的接口
		$.ajax({
			url:common.apiPath + '/api/homepageads/increase_click_num',
			type:'post',
			data:{ads_id:homeframeId},
			dataType:'json',
			timeout : 10000,
			async: true,
			success:function(e){
				console.log(e);
			}
		});
		jumpPage(uniqueSignMain,pageIdMain,hearUrlG);
	};
	//封装活动跳转的页面
//	var me;
//	alert(hearUrl);
	var jumpPage=function(uniqueSign,pageId,hearUrl){
//		debugger;
		var url='';
		switch(uniqueSign){
			case "2":
				
				if(hearUrl==''||hearUrl==null||hearUrl==undefined){
					return;
				}
				window.open(hearUrl, '_blank', 'location=no,toolbar=no,closebuttoncaption=关闭');
				break;
			case "ejia":
				url=require.toUrl('./linli/ejxq.w');
				justep.Shell.showPage(url,{
					ejid:pageId
				});
				
				break;
			case "active":
				url=require.toUrl('./linli/activityDetail.w');
				justep.Shell.showPage(url,{
					ejid:pageId
				});
				break;
			case "shop":
				url=require.toUrl('./shop/detail.w');
				justep.Shell.showPage(url,{
					goodsId:pageId
				});
				break;
			case "wealth":
				var winopenqb;
				var mycallback;
				var datas = {
					uid : user.id
				};
				//防止重复提交
				if(qbsub>0){
//					qbsub=0
					return false;
				}else{
//					console.log(common.apiPath+'/zhixines/api/wallet/getwallet');
					$.ajax({
						url : common.apiPath+'/zhixines/api/wallet/getwallet',
						data : datas,
						dataType : 'json',
						type : 'post',
						async : false,
						success : function(e){
							
							qbsub=qbsub+1;
							var myCallback = function(event) {  
								 console.log("event.type"+event.type); 
							};
							console.log(e.datas.url);
							if(e.datas.url.length>0){
								winopenqb=window.open(e.datas.url, '_blank', 'location=no,toolbar=no,closebuttoncaption=关闭');
								winopenqb.addEventListener('loadstart',function(event){
									if(event.url.length>0){
										 var stringUrl=event.url;
										   var arr=new Array();
										    arr=stringUrl.split(".html");
										    if(arr[0].length>0){
										    	var substring=arr[0].substring(arr[0].length-5,arr[0].length);
										    	if(substring=="close"){
										    		winopenqb.close();
										    		winopenqb.removeEventListener('loadstart', myCallback);
										    		qbsub=0;
										    	}
										    }	
									}	  	               
					           });	
							}	
						},error:function(e){
							console.log(e);
						}
					});
				}//---钱包----
				break;
			default:
				break;
		}
	};
	/*页面离开*/

	return Model;
});

