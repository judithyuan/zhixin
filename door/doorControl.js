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
	var name; //设备硬件名称
	var address;//设备硬件地址
	var mac;//设备软件
	
	var rssi;//设备信号强度
	var newmacs;
	var passwords; 
	//接收mac地址
	Model.prototype.modelLoad = function(event){
		/*
		 * 判断html标签是否有iosstatusbar,有测表示在苹果手机上运行，顶部需要留出20px，因此修改popover的top
		 */

		var me=this;
		var url = require.toUrl(this.util.apiPath+'/zhixines/api/xiaoxi/rukou_check');
		if(localStorage.getItem('dm')=="damen"){
			var data ={
			lp_id : user.lid,
			ban_id :"damen",
			};
		}else{
			var data ={
			lp_id : user.lid,
			ban_id : user.bid,
			};
		}
		$.post(url,data,function(d){
//			alert(JSON.stringify(d)+"aaaaaaaaaaaaaaaaaaaaaaaaaaaa2113123123123");
			if(!d.s){ 
				me.util.showPop(d.msg);
			}else{
				localStorage.removeItem('dm');
				passmac = d.passmac;
				newmacs =d.mishi;
				passwords=d.mima;
			}
		});
		//alert(passwords+"22222222222222222222222222"+newmacs);
	};
	Model.prototype.image1Click = function(event){
		//打开蓝牙
//		if(device.platform=="Android"){
//				//device.platform;
//		}else{
//			BleDoor.openDoorWithMac(mode,opendoorsucc,opendoorfailre);
//		}
		$('[xid=loadpopOver]').show();
		var me =this;
//		navigator.vibration.vibrate([3000,1000,2000]);
		if(device.platform=="Android"){					
			//监听开门结果函数
			function opendoorsucc(e){
				   //alert("开门成功"+e);
				   console.log(JSON.parse(e));
		   }
			//监听开门结果函数
			function opendoorfailre(e){
				   //alert("失败"+e);
				   console.log(JSON.parse(e));
			   }
	   
			function openBleSuccess(result) {
				      var mode = {
		            		mac : newmacs,
		            		time : "60",
		            		password :passwords
		            		
		            	};
				        me.util.showPop("开门中请稍等...");
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
						$('[xid=loadpopOver]').hide();
						$('#img4').attr("src",require.toUrl("../img/start/1.png"));
						$('#img1').attr("src",require.toUrl("../img/start/2.png"));
						setTimeout(function(){	
							$('#img4').attr("src",require.toUrl("../img/start/dian1.png"));
							$('#img1').attr("src",require.toUrl("../img/start/km.png"));	
						}, 5000); 
					}
				//ios失败回调
				function openDoorMacError(e){
					me.util.showPop(e);
					}
				var mode = {
					mac : newmacs,
					time : "60",
					password : passwords
				};
				//IOS开门中。。。。。
				me.util.showPop("请稍等开门中...");
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
//	var mima;
	//邀请码passmac
	Model.prototype.button1Click = function(event){
//		alert(newmacs)http://cyying.com/reformer/member/api/device/keypad/generatePassword?accessToken=bt01xyn04f0h1xto5hlu4u1p|3.e79dad05d701072fde53c97305ee2b325ffca2e1cb1b927ec3acfb9d49799d48.1800.1463486379379-1&data={"macs":"03146385F423534323","proId":1}
		var me =this;
		var mode = {
		 'mac': passmac
		};
		//alert(JSON.stringify(mode))
		var urls = require.toUrl(this.util.apiPath+'/zhixines/api/jiaofei/menjin')
		$.post(urls,mode,function(d){
			console.log(d);
			if(JSON.parse(d).data[0].info.length==4){
				var url=require.toUrl('./code.w');
				justep.Shell.showPage(url,{
					mima : JSON.parse(d).data[0].info,
					mac : passmac
				});
					
			}else{
				me.util.showPop('生成失败请重试！');
			};
					
		});
//		function suCallBack(e){
////			console.log(e); 
////			mima = e;
//			var url=require.toUrl('./code.w');
//			justep.Shell.showPage(url,{
//				mima : e,
//				mac : newmacs
//			});
//		}
//		function errCallBack(error){
//				me.util.showPop('生成失败');
//				//$('[xid=loadpopOver]').hide();
//		}
//		BleDoor.generatesecretKey(mode,suCallBack,errCallBack);	
	};
//	协议
	Model.prototype.span1Click = function(event){
		var url=require.toUrl('../xieyi.w');
		justep.Shell.showPage(url,{
			type : "mj",
		});
	};



	Model.prototype.backBtnClick = function(event){
		justep.Shell.closePage();

	};



	return Model;
});