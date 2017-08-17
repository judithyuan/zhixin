define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
	Model.prototype.util=require('../js/common');
	Model.prototype.userInfo = function(k){
    	if(!justep.Shell.user) return '';
		var user=justep.Shell.user.get();
		return user[k];
    };
	Model.prototype.button1Click = function(event){
		var param=this.params.data,me=this,
			nv=$.trim(this.comp('infoedit').val()),
			user=justep.Shell.user.get();
		if(nv!=''&&param.ov!=nv){
			this.util.dopost(this.util.apiPath+'/api/user/edit/'+user.id,
				{f:param.field,nv:nv},
				function(s){
					if(s.s){
						var redata=me.params.data;
						redata['nv']=nv;
						me.util.showMsg(s.msg);
						user[param.field]=nv;
						localStorage.setItem("userUUID", JSON.stringify(user));
						justep.Shell.user.set(user);
//						me.owner.send(redata);
						me.owner.close();
					}else{
						me.util.showMsg(s.msg,'danger');
//						justep.Util.hint(s.msg, {"type" : "danger"});
					}
				});
		}else{
			me.owner.close();
		}
	};
	
	return Model;
});
