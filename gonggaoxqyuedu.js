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
	
//	接受参数
	Model.prototype.modelParamsReceive = function(event){
//		alert(this.params.dataid);
//		dataid = this.params.dataid;
	};
//	报名

	//公告数据加载
	Model.prototype.gonggaoDataCustomRefresh = function(event){
		var gonggaoData = event.source;
		var data = {
			id : this.params.id,
			user_id : user.id
		};
		$.post(this.util.apiPath + '/zhixines/api/tianqiyubao/yuedu',data,function(data){
			console.log([data.gonggao]);
			gonggaoData.loadData([data.gonggao]);
			localStorage.setItem('cont', data.gonggao.content);
		});
	};

	//分享内容
	Model.prototype.button3Click = function(event){
//		console.log(localStorage.getItem('cont').replace(/<[^>]+>/g,""));
		plugins.socialsharing.share(localStorage.getItem('cont').replace(/<[^>]+>/g,""), null, null, null);
	};


	return Model;
});