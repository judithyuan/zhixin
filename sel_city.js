define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
	Model.prototype.util=require('./js/common');
	Model.prototype.cityDataCustomRefresh = function(event){
		var url=this.util.apiPath+'/api/district/sel_city',me=this;
//		var url=this.util.apiPath+'/zhixines/api/xiaoxi/chengshi',me=this;
		this.util.doget(url,function(d){
//			console.log(d);
			event.source.loadData(d.city);
			me.char.loadData(d.char);
		});
	};
	
	
	Model.prototype.list3Click = function(event){
		var $e=$(event.currentTarget),
		val=$e.attr('value'),
		txt=$e.find('.pull-left').text(),
		params={cid:val,ctxt:txt};
		console.log(params);
		if(this.params&&this.params.data&&this.params.data.callback){
			this.params.data.callback(params);
			params['data']= {callback:this.params.data.callback2,callback2:this.params.data.callback3};
		}
		justep.Shell.showPage('sellp',params);
	};

	return Model;
});
