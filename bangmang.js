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
	//加载帮忙数据
	 
	Model.prototype.modelLoad = function(event) {
		/*
		 * 判断html标签是否有iosstatusbar,有测表示在苹果手机上运行，顶部需要留出20px，因此修改popover的top
		 */
//		if(device.platform!="Android"){
//			$(".x-panel-top").css({
//				"background-color" : "#7bc93d"
//			});
//			$(".x-titlebar").css({
//				"margin-top" : "10px"
//			});
//		}
	};
	Model.prototype.bangmangDataCustomRefresh = function(event){
		var me=this;
		var url = (this.util.apiPath+'/zhixines/api/bbm/active');
		var param = {
				lp_id:user.lid
		};
		$.post(url,param,function(data){
//			console.log(data);
//			me.comp("bangmangData").loadData(data);
			if(data.s==false){
//				event.source.loadData(data);
				me.util.showPop(data.msg);
			}else{
				me.comp("bangmangData").loadData(data);
			}
		});
	};
	Model.prototype.list1Click = function(event){
		var url = require.toUrl('./bangmang-list.w');
		var a=this.comp("bangmangData").val('id');
//		alert(this.comp("bangmangData").val('id'));
		justep.Shell.showPage(url,{
			dataid : a
		});
//		alert(this.comp("bangmangData").val('id'))
	};
	Model.prototype.tuichu = function(event){
		justep.Shell.closePage();

	};
	return Model;
});