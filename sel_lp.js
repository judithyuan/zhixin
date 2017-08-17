define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
	Model.prototype.util=require('./js/common');
	Model.prototype.lpDataCustomRefresh = function(event){
		var url=this.util.apiPath+'/api/loupan/sel_lp/'+this.params.cid,me=this;
//		var url=this.util.apiPath+'/zhixines/api/xiaoxi/all_ban/'+this.params.cid,me=this;
		this.util.doget(url,function(d){
			event.source.loadData(d.lp);
			me.char.loadData(d.char);
		});
	};

	Model.prototype.list3Click = function(event){
		var $e=$(event.currentTarget),
		val=$e.attr('value'),
		txt=$e.find('.pull-left').text();
		if(justep.Shell.sellp&&justep.Shell.sellp.get()){
			var lp={id:val,txt:txt};
			localStorage.setItem("lp", JSON.stringify(lp));
			justep.Shell.lp.set(lp);
			justep.Shell.sellp.set(false);
			justep.Shell.closePage('selcity');
			justep.Shell.closePage();
		}else{
			var params={cid:this.params.cid,ctxt:this.params.ctxt,lid:val,ltxt:txt};
			if(this.params.data&&this.params.data.callback){
				this.params.data.callback(params);
				params['data']= {callback:this.params.data.callback2};
			}
			justep.Shell.showPage('selban',params);
		}
		
	};

	return Model;
});
