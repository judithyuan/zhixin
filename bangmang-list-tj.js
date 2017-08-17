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
	var userid;
	
	
//	接受参数
	Model.prototype.modelParamsReceive = function(event){
//		alert(this.params.dataid);
//		dataid = this.params.dataid;
	};
	Model.prototype.nameDataCustomRefresh = function(event){
		var data = {
			id : user.id
		}
		var me=this;
		var url = require.toUrl(this.util.apiPath+'/zhixines/api/bbm/baoming');
		$.post(url,data,function(d){
			//comsole.log(d);
			userid=d.id;
			me.comp('input1').val(d.name);
			me.comp('input2').val(d.mobile);
			me.comp('input3').val(d.addr);
//			$('[xid=input1]').val(d.name);
//			$('[xid=input2]').val(d.mobile);
//			$('[xid=input3]').val(d.addr);
		});
	};
//	报名
	Model.prototype.button4Click = function(event){
//		alert(userid)
		var me=this;
		var data = {
				'id': userid,
				'mobile': me.comp('input2').val(),
				'user_name' : me.comp('input1').val(),
				'addr' : me.comp('input3').val(),
				'help_id' : me.params.id
		};
		$.post(this.util.apiPath +'/zhixines/api/bbm/zx_register',data,function(d){
			if(d.s){
				me.util.showPop(d.msg);
				justep.Shell.closePage();
			}else{
				me.util.showPop(d.msg);
			}
			
		});
	
//		justep.Shell.showPage(require.toUrl('./main.w'),{
//		
//		});
	};
	
	

	return Model;
});