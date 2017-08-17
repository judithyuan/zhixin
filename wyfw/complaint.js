define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
	Model.prototype.common = require("../js/common");
	var user = justep.Shell.user.get();//获取用户缓存信息


//	跳转去投诉
	Model.prototype.toComplainClick = function(event){
		var url = require.toUrl("../wyfw/customer-councel.w");
		justep.Shell.showPage(url);
	};

//跳转详情
	Model.prototype.div1Click = function(event){
//	debugger;
		var row = event.bindingContext.$object;
		var url = require.toUrl("../wyfw/complain-detail.w");
		var pics;
		if(row.val("pics")!= ''){
			pics = row.val("pics");
		}
		justep.Shell.showPage(url,{add_time:row.val("add_time"),content:row.val("desc"),reply:row.val("reply"),reply_time:row.val("reply_time"),pics:pics});
	};


	Model.prototype.modelActive = function(event){
//	页面再次加载重新请求数据
		//	请求数据
			var url = this.common.apiPath+'/wyfw/api/tsjy/list/'+user.id;
			$.ajax({
				type:"get",
				url:url,
				async:false,
				success:function(d){
					if(d.code == 200){
						this.comp('complaintData').loadData(d.data);		
					}
				}.bind(this)
			})

	};


	Model.prototype.complaintDataBeforeRefresh = function(event){
		//	请求数据
			var url = this.common.apiPath+'/wyfw/api/tsjy/list/'+user.id;
			$.ajax({
				type:"get",
				url:url,
				async:false,
				success:function(d){
					if(d.code == 200){
						this.comp('complaintData').loadData(d.data);		
					}else{
						$('[xid=complainNullData]').show();
					}
				}.bind(this)
			})
	};


	return Model;
});