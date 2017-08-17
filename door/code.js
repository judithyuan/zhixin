define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	
	var Model = function(){
		this.callParent();
	};
	//定义
	var yqm;
	var ble = window.ble;
	var BleDoor=navigator.bleDoor;
	//	定义函数
	var common = require("../js/common");
	Model.prototype.util = common;
	var user = justep.Shell.user.get();//获取缓存用户表信息数据

	Model.prototype.modelLoad = function(event){
		/*
		 * 判断html标签是否有iosstatusbar,有测表示在苹果手机上运行，顶部需要留出20px，因此修改popover的top
		 */

	};
	Model.prototype.modelParamsReceive = function(event){
//		alert(this.params.mima);
		document.getElementById('span9code').innerText = this.params.mima;
		yqm = this.params.mima;
	};

	Model.prototype.button1Click = function(event){
		var mode = {
				'mac': this.params.mac
		};
		function suCallBack(e){
//			alert(e);
			me.util.showPop('以刷新');
			if(e!='OK'){
				document.getElementById('span9code').innerText = e;
				yqm = this.params.mima;
			}
		}
		function errCallBack(error){
				me.util.showPop('生成失败');
		}
		BleDoor.generatesecretKey(mode,suCallBack,errCallBack);
	};
	Model.prototype.button3Click = function(event){
//		alert(yqm);
		plugins.socialsharing.share(yqm, null, null, null);
//		var me =this;
//		var urls = require.toUrl(this.util.apiPath+'/zhixines/api/CS_SMSAuth/sendInvitationCode');
//		var data  ={
//				code:yqm,
//				mobile:this.comp("vcode").val()
//		};
////		alert(JSON.stringify(data));
//		$.post(urls,data,function(d){
//			console.log(d);
//			if(d.status){
//				me.util.showPop(d.message);
//			}else{
//				me.util.showPop("发送失败，请重试！");
//			}
//			
//		});
//		var url=require.toUrl('./codeSucc.w');
//		justep.Shell.showPage(url,{
//		
//		});
	};



	return Model;
});