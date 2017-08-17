define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.util = require("../js/common");
	
	Model.prototype.backBtnClick = function(event){
		justep.Shell.closePage();
	};
	
	//获取所有订单信息
	Model.prototype.allDataCustomRefresh = function(event){
		var user =justep.Shell.user.get();
		var url =require.toUrl(this.util.apiPath +'/zhixines/api/baoxiu/all_baoxiu_repair');
		var data={
			id : user.id
		};
		$.post(url,data,function(d){
			event.source.loadData(d);
			if(d[0]==undefined){
				$('[xid=div5]').show();
			}
		})
	};
	
	//获取已申请信息
	Model.prototype.applyDataCustomRefresh = function(event){
		var user =justep.Shell.user.get();
		var url =require.toUrl(this.util.apiPath +'/zhixines/api/baoxiu/apply_baoxiu_repair');
		var data={
			id : user.id
		};
		$.post(url,data,function(d){
			event.source.loadData(d);
		})
	};	
	
	//获取已处理信息
	Model.prototype.dealDataCustomRefresh = function(event){
		var user =justep.Shell.user.get();
		var url =require.toUrl(this.util.apiPath +'/zhixines/api/baoxiu/deal_baoxiu_repair ');
		var data={
			id : user.id
		};
		$.post(url,data,function(d){
			event.source.loadData(d);
		})
	};
	
	//获取已取消信息
	Model.prototype.cancelDataCustomRefresh = function(event){
		var user =justep.Shell.user.get();
		var url =require.toUrl(this.util.apiPath +'/zhixines/api/baoxiu/cancel_baoxiu_repair');
		var data={
			id : user.id
		};
		$.post(url,data,function(d){
			event.source.loadData(d);
		})
	};	
	
	//全部发表评价
	Model.prototype.button1Click = function(event){
		var row = event.bindingContext.$object;
		var id =row.val('id');
		var state=row.val('state');
		justep.Shell.showPage(require.toUrl('./evaluate.w'),{
			id : id ,
			state : state,
		});
	};
	
	//已申请发表评价
	Model.prototype.button2Click = function(event){
		
	};	

	
		

	//已处理发表评价
	Model.prototype.button3Click = function(event){
		var row = event.bindingContext.$object;
		var id =row.val('id');
		var state=row.val('state');
		justep.Shell.showPage(require.toUrl('./evaluate.w'),{
			id : id ,
			state : state,
		});
	};	
		

	
	Model.prototype.modelActive = function(event){
		this.comp('allData').refreshData();
		this.comp('applyData').refreshData();
		this.comp('cancelData').refreshData();
		this.comp('dealData').refreshData();
	};	
		

	
	return Model;
});