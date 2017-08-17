define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	require("cordova!com.justep.cordova.plugin.bleDoor");
	require("cordova!cordova-plugin-ble-central");
	require("cordova!cordova-plugin-vibration");
	
	var Model = function(){
		this.callParent();
	};
	//定义
	var ble = window.ble;
	var BleDoor=navigator.bleDoor;
	var user = justep.Shell.user.get();//获取缓存用户表信息数据
	Model.prototype.util = require("../js/common");
	var common = require("../js/common");
	var name; //设备硬件名称
	var address;//设备硬件地址
	var mac;//设备软件	 
	var rssi;//设备信号强度
	//大门
//	debugger;
	var newmacs=user.damenmac;
	var passwords=user.mima; 
	//单元门
	var dnewmacs=user.danyuanmenmac;
	//接收mac地址
	Model.prototype.modelLoad = function(event){
		var macDataParams={
				bid:user.bid,
				lid:user.lid,
				user_id:user.id
		};
//		console.log(user.damenmac==""&&user.mima==""&&user.damenmac==null&&user.mima==null);
		if(user.damenmac==""||user.mima==""||user.danyuanmenmac==""||user.damenmac==null||user.mima==null||user.danyuanmenmac==null){
			/*日志打印处*/
			glob.logAjax('entrance',user,'用户表没MAC信息user.damenmac==""',user.id,'entrance用户表没MAC'+user.id,'3');/*日志打印处*/
		 	$.ajax({
		 		url:common.apiPath+'/zhixines/api/user/getmenmac',
		 		type:'post',
		 		dataType:'json',
		 		data:macDataParams,
		 		async: true,
		 		timeout : 10000,
		 		success:function(e){		
		 			newmacs=e.info.damenmac,
		 			passwords=e.info.mima,
		 			dnewmacs=e.info.danyuanmenmac;
		 		}
		 	});
		}/**/
		//加载开门成功回调
		function openDoorsucc(e){
			}
		//加载失败回调
		function openDoorError(e){
			
			}
		//大门
	    //安卓版本的预先加载开门的函数，以便初始化
		var ua = navigator.userAgent.toLowerCase();	
		if(/android/.test(ua)){
			var mode = {
					mac : newmacs,
					time : "60",
					password : passwords
				};
				BleDoor.openDoorWithAndroid(mode,openDoorsucc,openDoorError);
	   }	
		//如果是蓝牙手机点击进来的时候就先加载
	};
	Model.prototype.row1Click = function(event){
		var url=require.toUrl('./doorControl.w');
		justep.Shell.showPage(url,{
		
		});
		localStorage.setItem('dm', "damen");
	};
	Model.prototype.row3Click = function(event){
		var url=require.toUrl('./doorControl.w');
		justep.Shell.showPage(url,{
			
		});
		localStorage.setItem('dm', "danyuanmen");
	};

	Model.prototype.backBtnClick = function(event){
		justep.Shell.closePage();

	};
	//使用说明
	Model.prototype.span1Click = function(event){
		var url=require.toUrl('../xieyi.w');
		justep.Shell.showPage(url,{
			type : "mj",
		});
	};
	//大门
	Model.prototype.image1Click = function(event){
		//打开蓝牙	
		var me=this;
		$('[xid=loadpopOver]').show();
		if(device.platform=="Android"){
				
				function opendoorsucc(e){
					/*日志打印处*/
				glob.logAjax('entrance',e,'监听开门结果函数opendoorsucc'+mode,user.id,'entrance门opendoorsucc'+user.id,'5');/*日志打印处*/
				 //返回值e=0，表示开门成功；e=1表示参数错误；e=2 表示开门中。。e=3 表示服务启动中，蓝牙未开启。
					me.util.showPop("请稍等开门中...",1000);
				 if(e==0){
//						me.util.showPop("开门中请稍等...",1000);
						$('[xid=loadpopOver]').hide();
						$('#img1open').attr("src",require.toUrl("../img/start/dmgreen.png"));
						$('#dmimg1').attr("src",require.toUrl("../img/start/greenopen.png"));
						setTimeout(function(){	
							$('#img1open').attr("src",require.toUrl("../img/start/dmwhite.png"));
							$('#dmimg1').attr("src",require.toUrl("../img/start/whiteopen.png"));	
						}, 5000); 
				 }else if(e==2){
//						alert("newmacs"+newmacs);
						//me.util.showPop("开门中请稍等...",1000);
						$('[xid=loadpopOver]').hide();
						BleDoor.openDoorWithAndroid(mode,opendoorsucc,opendoorfailre);
				 }

		   }
			//监听开门结果函数
			function opendoorfailre(e){
				$('[xid=loadpopOver]').hide();
//				me.util.showPop("开门失败，请联系客服",1000);
				/*日志打印处*/
				glob.logAjax('entrance',e,'监听开门结果函数opendoorfailre'+mode,user.id,'entrance门opendoorfailre'+user.id,'3');/*日志打印处*/
			}
			function openBleSuccess(result) {//安卓蓝牙功能打开			
				var mode = {
		         	mac : newmacs,
		           	time : "60",
		         	password :passwords
			 	};
				
				BleDoor.openDoorWithAndroid(mode,opendoorsucc,opendoorfailre);	     
			}
			function openBleError(error) {
				$('[xid=loadpopOver]').hide();
				//alert('打开蓝牙失败');
				me.util.showPop('请手动打开蓝牙在点击开门');
			}
			//安卓蓝牙功能打开
			ble.enable(openBleSuccess,openBleError);
		}else{
			//ios打开蓝牙成功回调
			function openBleMacSuccess(error) {
				//ios开门成功回调
				function openDoorMacsucc(e){
					//me.util.showPop("开门成功");
						me.util.showPop("请稍等开门中...",1000);
						$('[xid=loadpopOver]').hide();
						$('#img1open').attr("src",require.toUrl("../img/start/dmgreen.png"));
						$('#dmimg1').attr("src",require.toUrl("../img/start/greenopen.png"));
						setTimeout(function(){	
							$('#img1open').attr("src",require.toUrl("../img/start/dmwhite.png"));
							$('#dmimg1').attr("src",require.toUrl("../img/start/whiteopen.png"));	
						}, 5000); 
					}
				//ios失败回调
				function openDoorMacError(e){
					me.util.showPop(e);
					}
				var mode = {
					mac : newmacs,
					time : "100",
					password : passwords//"3490EF216687AC34BF890932CD64FFEA"
				};
				//IOS开门中。。。。。
				
				BleDoor.openDoorWithMac(mode,openDoorMacsucc,openDoorMacError);
			}
			//ios打开蓝牙失败回调
			function openBleMacError(error) {
				$('[xid=loadpopOver]').hide();
				me.util.showPop('请手动打开蓝牙在点击开门');
			}
			ble.isEnabled(openBleMacSuccess,openBleMacError);	
		}
	};
	//单元门
	Model.prototype.image2Click = function(event){
		var me=this;
		//打开蓝牙
		$('[xid=loadpopOver]').show();
		if(device.platform=="Android"){
			function opendoorsucc(e){
//				 alert("开门成功"+e);
				me.util.showPop("开门中请稍等...",1000);
				$('[xid=loadpopOver]').hide();
				$('#img2open').attr("src",require.toUrl("../img/start/dymgreen.png"));
				$('#dymimg2').attr("src",require.toUrl("../img/start/greenopen.png"));
				setTimeout(function(){	
					$('#img2open').attr("src",require.toUrl("../img/start/dymwhite.png"));
					$('#dymimg2').attr("src",require.toUrl("../img/start/whiteopen.png"));	
				}, 5000); 
			}
			//监听开门结果函数
			function opendoorfailre(e){
//				me.util.showPop("开门中请稍等...");
				$('[xid=loadpopOver]').hide();
//				me.util.showPop("开门失败，请联系客服",1000);
				/*日志打印处*/
				glob.logAjax('entrance',e,'监听开门结果函数opendoorfailre'+mode,user.id,'entrance单元门opendoorfailre'+user.id,'3');/*日志打印处*/
			}
			function openBleSuccess(result) {//安卓蓝牙功能打开
				var mode = {
		         	mac : dnewmacs,
		           	time : "60",
		         	password :passwords
			 	};	
				BleDoor.openDoorWithAndroid(mode,opendoorsucc,opendoorfailre);	     
			}
			function openBleError(error) {
				$('[xid=loadpopOver]').hide();
				//alert('打开蓝牙失败');
				me.util.showPop('请手动打开蓝牙在点击开门');
				
			}
			//安卓蓝牙功能打开
			ble.enable(openBleSuccess,openBleError);
		}else{
			//alert(device.platform);
			//ios打开蓝牙成功回调
			function openBleMacSuccess(error) {
				//ios开门成功回调
				function openDoorMacsucc(e){
					//me.util.showPop("开门成功");
//						me.util.showPop("请稍等开门中...");
						$('[xid=loadpopOver]').hide();
						$('#img2open').attr("src",require.toUrl("../img/start/dymgreen.png"));
						$('#dymimg2').attr("src",require.toUrl("../img/start/greenopen.png"));
						setTimeout(function(){	
							$('#img2open').attr("src",require.toUrl("../img/start/dymwhite.png"));
							$('#dymimg2').attr("src",require.toUrl("../img/start/whiteopen.png"));	
						}, 5000);
					}
				//ios失败回调
				function openDoorMacError(e){
					me.util.showPop(e);
					}
				var mode = {
					mac : dnewmacs,
					time : "100",
					password : passwords//"3490EF216687AC34BF890932CD64FFEA"
				};
				//IOS开门中。。。。。
				BleDoor.openDoorWithMac(mode,openDoorMacsucc,openDoorMacError);
			}
			//ios打开蓝牙失败回调
			function openBleMacError(error) {
				$('[xid=loadpopOver]').hide();
				me.util.showPop('请手动打开蓝牙在点击开门');
			}
			ble.isEnabled(openBleMacSuccess,openBleMacError);	
		}	
	};
	//邀请码passmac大门
	Model.prototype.button1Click = function(event){
		var me =this;
		var mode = {
		 'mac': newmacs
		};
		//alert(JSON.stringify(mode))
		var urls = require.toUrl(this.util.apiPath+'/zhixines/api/jiaofei/menjin')
		$.post(urls,mode,function(d){
			try {
				if(JSON.parse(d).data[0].info.length==4){
					var url=require.toUrl('./code.w');
					console.log(JSON.parse(d).data[0].info);
					justep.Shell.showPage(url,{
						mima : JSON.parse(d).data[0].info,
						mac : newmacs
					});
				}else{
					me.util.showPop('生成失败请重试！');
				};
				/*日志打印处*/
				glob.logAjax('entrance',d,'/zhixines/api/jiaofei/menjin',mode,'entrance门径邀请码大门'+user.id,'5');/*日志打印处*/
			} catch (e) {
				// TODO: handle exception
//				me.util.showPop('error:xmej(门禁配置出错)！');
				/*日志打印处*/
				glob.logAjax('entrance',e,'/zhixines/api/jiaofei/menjin',mode,'entrance门径邀请码大门异常'+user.id,'4');/*日志打印处*/
			}
			
					
		});
	}; 
	//邀请码passmac
	Model.prototype.button2Click = function(event){
		var me =this; 
		var mode = {
		 'mac': dnewmacs
		};
		//alert(JSON.stringify(mode))
		var urls = require.toUrl(this.util.apiPath+'/zhixines/api/jiaofei/menjin')
		$.post(urls,mode,function(d){
			try {
				if(JSON.parse(d).data[0].info.length==4){
					var url=require.toUrl('./code.w');
					justep.Shell.showPage(url,{
						mima : JSON.parse(d).data[0].info,
						mac : dnewmacs
					});
						
				}else{
					me.util.showPop('生成失败请重试！');
				};
				/*日志打印处*/
				glob.logAjax('entrance',d,'/zhixines/api/jiaofei/menjin',mode,'entrance门径邀请码单元门'+user.id,'5');/*日志打印处*/
			} catch (e) {
				// TODO: handle exception
				me.util.showPop('单元门MAC未配置，请联系客服配置');
				/*日志打印处*/
				glob.logAjax('entrance',e,'/zhixines/api/jiaofei/menjin',mode,'entrance门径邀请码单元门异常'+user.id,'4');/*日志打印处*/
			}
			
					
		});
	};



	return Model;
});