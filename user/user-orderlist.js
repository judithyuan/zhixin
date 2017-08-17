define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
//	var allData = require("../js/load");
	var Model = function(){
		this.callParent();
	};
	//	定义函数
	var common = require("../js/common");
	Model.prototype.util = common;
	
	var user=justep.Shell.user.get();
	
	Model.prototype.modelLoad = function(event){

	};
	Model.prototype.backBtnClick = function(event){
		justep.Shell.closePage();
	};
	
	//全部订单
	Model.prototype.allDataCustomRefresh = function(event){
		var data={
			ds:0,
			userid:user.id,
			page:1
		};
		$.post(this.util.apiPath + '/zhixines/api/ExpressAccept/gets',data,function(d){
			event.source.loadData(d.rows);
//			console.log(d);
			if(d.total==0){
				$('[xid=div3]').show();
			}
		});
	};
	//已申请
	Model.prototype.applyDataCustomRefresh = function(event){
		var data={
			ds:1,
			userid:user.id,
			page:1
		};
		$.post(this.util.apiPath + '/zhixines/api/ExpressAccept/gets',data,function(d){
			event.source.loadData(d.rows);
//			console.log(d).rows;
		});
	};
	//已上门
	Model.prototype.doorDataCustomRefresh = function(event){
		var data={
			ds:2,
			userid:user.id,
			page:1
		};
		$.post(this.util.apiPath + '/zhixines/api/ExpressAccept/gets',data,function(d){
			event.source.loadData(d.rows);
		});
	};
	//已取消
	Model.prototype.cancelDtaCustomRefresh = function(event){
		var data={
			ds:3,
			userid:user.id,
			page:1
		};
		$.post(this.util.apiPath + '/zhixines/api/ExpressAccept/gets',data,function(d){
			event.source.loadData(d.rows);
			if(d.total==0){  //如果订单为0，显示订单为空
//				alert(d.total);
			}
		});
	};
	Model.prototype.button2Click = function(event){
		var row = event.bindingContext.$object;
		var eaid =row.val('eaid');
		justep.Shell.showPage(require.toUrl('./evaluate.w'),{
			eaid : eaid
		});
	};
	Model.prototype.modelActive = function(event){
		this.comp('allData').refreshData();
		this.comp('applyData').refreshData();
		this.comp('doorData').refreshData();
		this.comp('cancelDta').refreshData();
	};
	return Model;
});