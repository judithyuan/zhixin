define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};
	
	Model.prototype.util = require("../js/common");	
	var sub;
	
	Model.prototype.modelLoad = function(event){
		sub=0;
	};
	
	
	Model.prototype.button1Click = function(event){
		var me=this;
		var pj=this.comp('textarea1').val();
		if(pj==""){
//			justep.Util.hint('请先输入评价！',{
//				"type" : "danger"
//			});
			this.util.showPop('请先输入评价！');
			return false;
		}
//		console.log(this.params.eaid);
		if(this.params.eaid!=undefined){
			var data={
				eaid : this.params.eaid,
				content : pj,
			}
			var url=require.toUrl(this.util.apiPath +'/zhixines/api/xiaoxi/kuaidi');
			sub=sub+1;
//			console.log(sub);
			if(sub>1){
//				justep.Util.hint("请勿重复提交", {
//					"type" : "danger"
//				});
				this.util.showPop("请勿重复提交");
			}else{
				$.post(url,data,function(d){
					if(d.s){
//						justep.Util.hint(d.msg);
						me.util.showPop(d.msg);
						justep.Shell.closePage();
					}else{
//						justep.Util.hint(d.msg);
						me.util.showPop(d.msg);
					}
				})
			}
		}else{
			var dataq={
				id : this.params.id,
				state : this.params.state,
				content : pj,
			}
			var url=require.toUrl(this.util.apiPath +'/zhixines/api/baoxiu/repair_pinglun');
			sub=sub+1;
//			console.log(sub);
			if(sub>1){
//				justep.Util.hint("请勿重复提交", {
//					"type" : "danger"
//				});
				this.util.showPop("请勿重复提交");
			}else{
				$.post(url,dataq,function(d){
					if(d.s){
						me.util.showPop(d.msg);
						justep.Shell.closePage();
					}else{
						me.util.showPop(d.msg);
					}
				})
			}
		}
	};

	return Model;
});