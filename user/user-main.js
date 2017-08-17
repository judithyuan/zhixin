define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("cordova!cordova-plugin-x-socialsharing");
	require("cordova!cordova-plugin-inappbrowser"); //版本更新插件
	var Model = function(){
		this.callParent();
		this.nameusermain = justep.Bind.observable('');
		this.shopOrdernum =	justep.Bind.observable('');//商城待支付订单
		//身份
		try {
			this.sfstr=justep.Bind.observable('');
			//判断登录的身份
			if(user.shenfen==15){
				this.sfstr.set("业主");
			}
			else if(user.shenfen==16){
				this.sfstr.set("家属");
			}
			else if(user.shenfen==17){
				this.sfstr.set("已认证");
			}
			else{
				this.sfstr.set("未认证");
			}
		} catch (e) {
			// TODO: handle exception
		}
		
	};
	Model.prototype.validate = require("../js/validate");
	Model.prototype.util = require("../js/common");
	var common = require("../js/common");
	var user = justep.Shell.user.get();//获取缓存用户表信息数据
	//消息推送
	$(function(){ 
		var ws = io.connect(common.ioPath);
		ws.on('messages', function (data) { //初始消息队列
		});		
		ws.on('open', function () {//连接成功
	 	}); 
	    ws.on('get', function (data) {//接收消息
			if(data.type == 'systemmsg'){
				if(data.body.lp_id == user.lid) {
					$('#span98').show();	
				}
			}else if(data.type == 'prvmsg'){
				if(data.body.user_id == user.id){
					$('#span98').show();
				}
			}
	    });
	    ws.on('disconnect', function(data){ //连接断开
		});
    });  	
    
    //通过判断系统来改变已认证样式
	//判断是否为IOS
	var ua = navigator.userAgent.toLowerCase();	
	if (/iphone|ipad|ipod/.test(ua)) {
//		    console.log("iphone");	
		    $('[xid=span35]').css({'top':'0.08rem'});
		    $('[xid=span18shopOrdernum]').css({'top':'0.01rem'});
		    //button8
		    $('[xid=button8]').css({'paddingTop':'0.12rem'});
	} else if (/android/.test(ua)) {
//		    console.log("android");	
	}
    
 	//	定义函数请求-----------------------------------------------------
	$(document).ajaxStart(function() {
//		$('[xid=loadpopOveruser]').show();
	});
	$(document).ajaxStop(function() {
//		$('[xid=loadpopOveruser]').hide();
	});
	$(document).ajaxError(function(e) {
//		$('[xid=loadpopOveruser]').hide();
//		$('[xid=Overlineerror]').show();
		console.log(e);
	});
	//请求出错
	Model.prototype.denglu = function(event){
//		justep.Shell.showPage(require.toUrl('./login.w'));
		localStorage.setItem('x5Version + introPage','yes');
		window.location.reload();
	};
	//	定义函数请求-----------------------------------------------------
    //消息推送----------------------- 	
	
	Model.prototype.phone = function(event){
	var user = justep.Shell.user.get();
		try 
		{ 
		//在此运行代码 
		var usermobile = user.mobile;
		return usermobile.replace(/^(\d{3})\d{4}(\d{4})$/, "$1****$2");
		} 
		catch(err) 
		{ 
		//在此处理错误 
			var usermobile = user.mobile;
			return usermobile;
		} 
	};
	//设置头像
	Model.prototype.showAvatar = function(){
    	
    	if(justep.Shell.user&&justep.Shell.user.get()){
//			var user=justep.Shell.user.get();
			if(user.avatar!='')
				return this.util.apiPath+user.avatar;
			else return this.util.default_avatar;
		}
    	return this.util.default_avatar;
//		if(1){
////			var user=justep.Shell.user.get();
//			if(user.avatar!='')
//				return this.util.apiPath+user.avatar;
//		}
//		return "img/user_davatar.png";
    }
	Model.prototype.modelLoad = function(event){
		var me =this;
		this.nameusermain.set(user.nick_name);
		justep.userReturnMs = function(flag) {
           me.nameusermain.set(flag);  
        };	
		if(localStorage.getItem('tips')=='1'){
			$('#span98').show();
		}
	};
	

	//图片头像获取
	Model.prototype.showAvatar = function() {
		if (justep.Shell.user && justep.Shell.user.get()) {
			var user = justep.Shell.user.get();
			if (user.avatar != '')
				return this.util.picDomain + user.avatar;
			else
				return this.util.default_avatar;
		}
		return this.util.default_avatar;
	};
	Model.prototype.span28Click = function(event){
		var url = require.toUrl('../user/usershezhi.w');
		justep.Shell.showPage(url,{
		
		});
	};
//	//跳转我的积分
//	Model.prototype.col7Click = function(event){
//		var url = require.toUrl('../user/wdjf.w');
//		justep.Shell.showPage(url,{
//		
//		});
//	};

	//房屋认证
	Model.prototype.col1Click = function(event){
		var me =this;
		var data = {
			id : user.id
		};
		var urls = require.toUrl(this.util.apiPath+'/zhixines/api/xiaoxi/checkregister');
		$.post(urls,data,function(d){
			if(d.s){
//				me.util.showPop(d.msg);
				var url = require.toUrl('./roomrz.w');
				justep.Shell.showPage(url,{
				
				});
			}else{
//				var url = require.toUrl('../xzlp.w');
//				justep.Shell.showPage(url,{
//				
//				});
				$('[xid=choosepopOver]').show();
			};
		});
		
	};
	//去认证
	Model.prototype.button18Click = function(event){
		$('[xid=choosepopOver]').hide();
//				var url = require.toUrl('../xzlp.w');
//				justep.Shell.showPage(url,{
//				
//				});
		if(user.register_type=='1'){
			var url = require.toUrl('../xzlp.w');
			justep.Shell.showPage(url,{
			
			});
		}else{
			justep.Shell.showPage(require.toUrl('../mima.w'),{
			ykrz :'ykrzmima',
		});
		}
	};
	//再看看
	Model.prototype.button19Click = function(event){
		$('[xid=choosepopOver]').hide();
	};
	//关闭按钮
	Model.prototype.button6Click = function(event){
		$('[xid=choosepopOver]').hide();
	};
	
	//跳转地址管理页面
	Model.prototype.col6Click = function(event){
		var url = require.toUrl('../user/dizhiguanli.w');
		justep.Shell.showPage(url,{
		
		});
	};
	//跳转密码管理页面dizhiguanli
	Model.prototype.mimaClick = function(event){
		var url = require.toUrl('../user/Tradepassword.w');
		justep.Shell.showPage(url,{
		
		});
	};
	//跳转投诉建议页面
	Model.prototype.col13Click = function(event){
		var url = require.toUrl('../user/user-jianyi.w');
		justep.Shell.showPage(url,{
		
		});
//		if(user.is_auth_name=='1'){
//			var url = require.toUrl('../user/user-jianyi.w');
//			justep.Shell.showPage(url,{
//			
//			});		
//		}else{
//			this.util.showPop("请先进行");
//		}
	};

	//	缴费订单跳转页面
	Model.prototype.col15Click = function(event){
		if(user.is_auth_name=='1'){
			var url = require.toUrl('../user/jiaofeiorder.w')
			justep.Shell.showPage(url,{});
		}else{
			$('[xid=choosepopOver]').show();
		}	
	};
	//订单数量等等
	Model.prototype.countDataCustomRefresh = function(event){
	
	};

	Model.prototype.col45Click = function(event){
//		var url = "http://og9p826ue.bkt.clouddn.com/%E7%86%8A%E7%8C%ABe%E5%AE%B6.apk";
//		plugins.socialsharing.share("【熊猫e家】打造有温度的生活服务！", null, null, url);
//		var urls = require.toUrl('');
		$('[xid=div7qrcodeusershare]').show();
		require("../js/jquery.qrcode.min");	
		$("#qrcode").html("");
		$("#qrcode").qrcode("http://pandaehome.com/api/DownloadApp/download");
		var qrcodeBox = document.getElementById('qrcode');
		qrcodeBox.style.left = (window.innerWidth-256)*0.5+'px';
		qrcodeBox.style.top = (window.innerHeight-256)*0.5+'px';
		
	};
	Model.prototype.div7qrcodeusershareClick = function(event){
		$('[xid=div7qrcodeusershare]').hide();
	};
	//	客服
	Model.prototype.phoneDataCustomRefresh = function(event){

	};
	Model.prototype.div9Click = function(event){
		$('[xid=phonePopOver]').hide(); 
	};
//	客服热线
	Model.prototype.button1Click = function(event){
//		window.location.href = 'tel:' + "12345";
	};

	
	Model.prototype.list1Click = function(event){
		window.location.href = 'tel:' + this.comp('phoneData').val('phone');
	};

	//	消息中心
	Model.prototype.right1Click = function(event){
		justep.tipsxiaoxi("tips");
		localStorage.setItem('tips','0');
		$('#span98').hide();
		var url = require.toUrl('../user/entermsg.w');
		justep.Shell.showPage(url,{
			
		});
	};
	

	//跳转首页
	Model.prototype.buttonshoueClick = function(event){
//		var url = require.toUrl('../main.w');
//		justep.Shell.showPage(url,{
//			
//		});
//		justep.Shell.showMainPage();
		localStorage.setItem('x5Version + introPage','yes');
		justep.Shell.showPage("main.w");
//		if(localStorage.getItem('x5Version + introPage')!='yes'){
//			localStorage.setItem('x5Version + introPage','yes');
//			window.location.reload();
//		}else{
////		debugger;
//			justep.Shell.fireEvent("onHomeContent",{});
////			justep.Shell.showMainPage();
//			justep.Shell.showPage('main');
//		}
	};
	//钱包
	var qbsub=0
	Model.prototype.div14Click = function(event){
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
//					 console.log("event.type"+event.type); 
					 					 };
				
				if(e.datas.url.length>0){
					//winopenqb=window.open(e.datas.url, '_blank', 'location=no');
					//winopenqb=window.open(e.datas.url, 'toolbarposition=top,location=no,enableViewportScale=yes');
					// toolbar=yes 仅iOS有效,提供关闭、返回、前进三个按钮
					// toolbarposition=top/bottom 仅iOS有效,决定toolbar的位置
					// closebuttoncaption=关闭 仅iOS有效
					winopenqb=window.open(e.datas.url, '_blank', 'location=no,toolbar=no,closebuttoncaption=关闭');
					winopenqb.addEventListener('loadstart',function(event){
					//alert("loadstart"+event.url);
					if(event.url.length>0){
						 var stringUrl=event.url;
						   var arr=new Array();
						    arr=stringUrl.split(".html");
						    if(arr[0].length>0){
						    	var substring=arr[0].substring(arr[0].length-5,arr[0].length);
						    	if(substring=="close"){
						    		winopenqb.close();
//						    		winopenqb.removeEventListener('loadstart', myCallback);
						    		qbsub=0;
						    	}
						    }	
					}
					  	               
		           })
		           /*exit*/
		           winopenqb.addEventListener('exit',function(event){
		        	   var stringUrl=event.url;
						   var arr=new Array();
						    arr=stringUrl.split(".html");
						    if(arr[0].length>0){
						    	var substring=arr[0].substring(arr[0].length-5,arr[0].length);
						    	if(substring=="close"){
						    		winopenqb.close();
//						    		winopenqb.removeEventListener('exit', myCallback);
						    		qbsub=0;
						    	}
						    }
		           });
				   
					
				}
				
		}
		});
		}

	};
	//充值
	var czsub=0;
	Model.prototype.div10Click = function(event){
		var winopencz;
		var datas = {
			uid : user.id
		};
		//防止重复提交
		if(czsub>0){
			return false;
		}else{
		$.ajax({
			url : this.util.apiPath+'/zhixines/api/wallet/getWalletRecharge',
			data : datas,
			dataType : 'json',
			type : 'post',
			async : true,
			success : function(e){
				czsub=czsub+1;
				var myCallback = function(event) {  
//					 console.log("event.type"+event.type); 
				};
				if(e.datas.url.length>0){
					//winopencz=window.open(e.datas.url, 'toolbarposition=top,location=no,enableViewportScale=yes');
					//winopencz=window.open(e.datas.url, '_blank', 'location=no');
					// toolbar=yes 仅iOS有效,提供关闭、返回、前进三个按钮
					// toolbarposition=top/bottom 仅iOS有效,决定toolbar的位置
					// closebuttoncaption=关闭 仅iOS有效
					winopencz=window.open(e.datas.url, '_blank', 'location=no,toolbar=no,closebuttoncaption=关闭');
					winopencz.addEventListener('loadstart',function(event){
					//alert("loadstart"+event.url);
					if(event.url.length>0){
						 var stringUrl=event.url;
						   var arr=new Array();
						    arr=stringUrl.split(".html");
						    if(arr[0].length>0){
						    	var substring=arr[0].substring(arr[0].length-5,arr[0].length);
						    	if(substring=="close"){
						    		winopencz.close();
//						    		winopencz.removeEventListener('loadstart', myCallback);
						    		czsub=0;
						    	}
						    }	
					}
					  	               
		           });	
		           /*exit*/
		           winopencz.addEventListener('exit',function(event){
		        	   var stringUrl=event.url;
						   var arr=new Array();
						    arr=stringUrl.split(".html");
						    if(arr[0].length>0){
						    	var substring=arr[0].substring(arr[0].length-5,arr[0].length);
						    	if(substring=="close"){
						    		winopenqb.close();
//						    		winopenqb.removeEventListener('exit', myCallback);
						    		qbsub=0;
						    	}
						    }
		           });													
				}
				
		}
		});
		}

	};
	
	//报修
	Model.prototype.baoxiu = function(event){	
		if(user.is_auth_name=='1'){
			var url = require.toUrl('../user/user-repair.w');
			justep.Shell.showPage(url,{});
		}else{
			$('[xid=choosepopOver]').show();
		}	
	};
	//快递
	Model.prototype.kuaidi = function(event){
		if(user.is_auth_name=='1'){
			justep.Shell.showPage(require.toUrl('../user/user-orderlist.w'));
		}else{
			$('[xid=choosepopOver]').show();
		}
	};
	//商城订单
	Model.prototype.order = function(event){
		justep.Shell.showPage(require.toUrl('../shop/shopOrder.w'));
	};

	//钱包
	Model.prototype.col19Click = function(event){

		////zhixines/api/wallet/getWalletRecharge
		
	};
	Model.prototype.numcartCustomRefresh = function(event){
	
        /***************第一次加载**********/
        var datas = {
			key : localStorage.getItem('vv'),
		},me=this;
		$.ajax({
			url : this.util.shopPath+'/mobile/index.php?act=member_order&op=get_unpay_order_nums',
			data : datas,
			dataType : 'json',
			type : 'post',
			async : false,
			success : function(e){
				if(parseInt(e.datas.num)>0){
					me.shopOrdernum.set(parseInt(e.datas.num));
					$('[xid=span8shopOrdernum]').show();
					$('[xid=span18shopOrdernum]').show();
				}else{
//					me.shopOrdernum.set('无');
					$('[xid=span8shopOrdernum]').hide();
					$('[xid=span18shopOrdernum]').hide();
				}
			},
			error : function(e){
//				console.log(e);
			}
		});		
	};
	Model.prototype.modelActive = function(event){
		this.comp('numcart').refreshData();
	};
	//底部icon
	Model.prototype.bottomIconDataCustomRefresh = function(event){
//		console.log(JSON.parse(localStorage.getItem('all_bottom_icon')));
		event.source.loadData(JSON.parse(localStorage.getItem('all_bottom_icon')));
	};
	//底部的功能
	Model.prototype.bottomIconClick = function(event){
		var row = event.bindingContext.$object;
		//我的--------------------------------------------------------
		if(row.val('short_name')=='mine'){
		}
		//邻里----------------------------------------------
		if(row.val('short_name')=='neighbourhood'){
			var url = require.toUrl('../linli/linli-main.w');
			justep.Shell.showPage(url,{
			
			});
		}
		//商城-----------------------------------------------
		if(row.val('short_name')=='shop'){
			var url = require.toUrl('../shop/shop-main.w');
			justep.Shell.showPage(url,{
			});	
		}
		//主页steward-------------------------------
		if(row.val('short_name')=='home_page'){
			justep.Shell.showPage("main.w");
		}
		//管家
		if(row.val('short_name')=='steward'){
			var url = require.toUrl('../guanjia/guanjia-main.w');
				justep.Shell.showPage(url,{
				
			});
		}
	};


	//E卡跳的界面
	Model.prototype.eCardClick = function(event){
		var url = require.toUrl('../user/eCard-main.w');
		justep.Shell.showPage(url,{
			
		});
	};



	Model.prototype.activityClick = function(event){
		justep.Shell.showPage(require.toUrl('../linli/myActivity.w'));
	};


	//投诉咨询
	Model.prototype.complaint = function(event){
		if(user.is_auth_name=='1'){
			var url = require.toUrl('../wyfw/complaint.w');
			justep.Shell.showPage(url,{});
		}else{
			$('[xid=choosepopOver]').show();
		}	
	};



	return Model;
});