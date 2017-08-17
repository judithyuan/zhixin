define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};
	var dataid ;//帮忙传递过来的参数
	var ary;//传参数组
//	定义函数
	var common = require("./js/common");
	Model.prototype.util = common;
	
	Model.prototype.modelParamsReceive = function(event){
 
	};
	Model.prototype.bangmangDataCustomRefresh = function(event){
//		var my = this.comp('bangmangList');
//		my.set({
////			'filter':"'$row.val('id')=='dataid"
//		});
		var me=this;
		var data={
			'id':this.params.dataid
		};
		var url = (this.util.apiPath +'/zhixines/api/bbm/one_active');
		$.post(url,data,function(data){
//			event.source.loadData(data);
			me.comp("bangmangData").loadData(data);
			$("#span1").append(data[0].content);
		});
		
	};
//	接受参数

	
	Model.prototype.dataCustomRefresh = function(event){
//		ary={
//			"id": dataid,
//			"rec_id": "1962",
//		}
//		alert(JSON.stringify(ary));
//		this.comp('data').loadData(ary);

		
	};
	//y页面跳转
	Model.prototype.button4Click = function(event){
		var url = require.toUrl('./bangmang-list-tj.w');
		//var ids = this.params.dataid;
		justep.Shell.showPage(url,{
			id : this.params.dataid
		});
	};

	return Model;
});