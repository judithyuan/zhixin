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
	Model.prototype.modelLoad = function(event){
		/*
		 * 判断html标签是否有iosstatusbar,有测表示在苹果手机上运行，顶部需要留出20px，因此修改popover的top
		 */
//		if(device.platform!="Android"){
//			$(".x-full").css({
//				"top" : "10px"
//			});
//		}
	};	
	Model.prototype.shujuDataCustomRefresh = function(event){
//		alert(this.params.type);
		var me=this;
		if(this.params.type=="mj"){
			document.getElementById("span3").innerText="使用说明";
			var url = require.toUrl(this.util.apiPath+"/zhixines/api/xiaoxi/mjxy");
			var data = {
				lp_id : user.lid,
				type : this.params.type
			};
		}else if(this.params.type=="kd"){
			document.getElementById("span3").innerText="快递协议";
			var url = require.toUrl(this.util.apiPath+"/zhixines/api/xiaoxi/mjxy");
			var data = {
				lp_id : user.lid,
				type : this.params.type
			};
//			alert(JSON.stringify(data));
		}
		else{
			if(this.params.type=="zhuce"){
				document.getElementById("span3").innerText="注册协议";
			}else{
				document.getElementById("span3").innerText="积分规则";
			}
			
			var url = require.toUrl(this.util.apiPath+"/zhixines/api/xiaoxi/xieyi");
			var data = {
				lp_id : this.params.id,
				type : this.params.type
			};
		}
		//var url = require.toUrl(this.util.apiPath+"/zhixines/api/xiaoxi/xieyi");
		
		$.post(url,data,function(d){
			//console.log(d.s);
			if(d.s==undefined){
//				document.getElementById('texte').innerText = d.content;
//				document.getElementById('span2').append(d.content);
				$("#span2").append(d.content);
				//document.getElementById('h4').innerText = d.title;				
			}else{
				me.util.showPop(d.msg);
			}
			
		});
	};



	return Model;
});