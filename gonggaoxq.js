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
	var readxq;
//	接受参数
	Model.prototype.modelParamsReceive = function(event){
//		alert(this.params.dataid);
//		dataid = this.params.dataid;
	};
//	报名
	//公告数据加载
	Model.prototype.gonggaoDataCustomRefresh = function(event){
		if(user.is_auth_name=='1'){
			var gonggaoData = event.source,me=this;
			var data = {
				lp_id : user.lid
			};
			$.post(this.util.apiPath +'/zhixines/api/tianqiyubao/gonggao_release',data,function(data){
//				alert()
				if(!data.content){
					gonggaoData.loadData(data);
				}else{
					me.util.showPop('暂无公告！');
				}
				
//				alert(JSON.stringify(data)+"2")
			});	
		}else{
			var gonggaoData = event.source;
			var data = {
//				lp_id : user.lid
			};
			$.post(this.util.apiPath +'/zhixines/api/tianqiyubao/gonggao_release',data,function(data){
				gonggaoData.loadData(data);
//				alert(JSON.stringify(data)+"1")
			});		
		};

	};
	Model.prototype.col3Click = function(event){
		readxq=1;
	};
	Model.prototype.gonggaoListClick = function(event){
//		alert(this.comp('gonggaoData').val('id'));
		if(readxq==1){
			var url = require.toUrl('./gonggaoxqyuedu.w');
//			alert(this.comp('gonggaoData').val('id'));
			if(this.comp('gonggaoData').val('id')>0){
				justep.Shell.showPage(url, {
					id : this.comp('gonggaoData').val('id')
				});
			}
		}
		
	};


	return Model;
});