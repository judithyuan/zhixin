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
	
	//改变按钮颜色
	Model.prototype.btnChange = function(event){
		if($('[xid=textarea1]').val()!=''){
			$('[xid=registerBtn]').css("backgroundColor",'#7bc83e');
			this.comp('registerBtn').set({
				 "disabled":  false
			});
		}
		else{
			$('[xid=registerBtn]').css("backgroundColor",'#e3e3e3');
			this.comp('registerBtn').set({
				 "disabled":  true
			});
		}
	}
	Model.prototype.registerBtnClick = function(event){
//		alert(this.comp('textarea1').val());
		var me=this;
		var data ={
			user_id : user.id,
			content : this.comp('textarea1').val(),
			lp_id : user.lid,
			type:0
		}
		var url = require.toUrl(this.util.apiPath+'/zhixines/api/xiaoxi/tsjy');
		$.post(url,data,function(d){
			try {
				if(JSON.parse(d).s){
				//justep.Util.hint(JSON.parse(d).msg);
				me.util.showPop(JSON.parse(d).msg);
				justep.Shell.closePage();
//				justep.Shell.showPage(require.toUrl('./user-main.w'));
				}else{	
					//justep.Util.hint(JSON.parse(d).msg);
					me.util.showPop(JSON.parse(d).msg);
				}	
			} catch (e) {
				// TODO: handle exception
				me.util.showPop('error:'+e);
			}
		
			
		});
	};

	return Model;
});