define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
	//	定义函数
	var common = require("../js/common");
	Model.prototype.util = common;
	var user = justep.Shell.user.get();//获取缓存用户表信息数据
	
	Model.prototype.modelLoad = function(event){
		/*
		 * 判断html标签是否有iosstatusbar,有测表示在苹果手机上运行，顶部需要留出20px，因此修改popover的top
		 */
//		if (!device.platform=="Android") {
//			$(".x-full").css({
//				"top" : "5px"
//			});
//		}
	};
	Model.prototype.jfDataCustomRefresh = function(event){
//		document.getElementById('span5').innerText ='当前积分:'+ds.row;
		this.getElementByXid('span4').innerText=localStorage.getItem('jifen');
		var url =require.toUrl(this.util.apiPath +'/zhixines/api/jiaofei/jifenlist');
		var data = {
				id : user.id
		}
		$.post(url,data,function(d){
			console.log(d);
			event.source.loadData(d)
		});
	};

	Model.prototype.right1Click = function(event){
		justep.Shell.showPage(require.toUrl('../xieyi.w'),{
			id : user.lid
		});
	};

	return Model;
});