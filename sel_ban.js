define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
	Model.prototype.util=require('./js/common');
	Model.prototype.banDataCustomRefresh = function(event){
		var url=this.util.apiPath+'/api/ban/sel_ban/'+this.params.lid,me=this;
		this.util.doget(url,function(d){
			event.source.loadData(d.ban);
			me.char.loadData(d.char);
		});
	};

	Model.prototype.list3Click = function(event){
		var $e=$(event.currentTarget),
		val=$e.attr('value'),
		txt=$e.find('.pull-left').text(),
		params={cid:this.params.cid,ctxt:this.params.ctxt,
				lid:this.params.lid,ltxt:this.params.ltxt,
				bid:val,btxt:txt};
		if(this.params.data&&this.params.data.callback){
			this.params.data.callback({bid:val,rid:0,brtxt:txt+'-'});
			params['data']= {callback:this.params.data.callback};
		}
		justep.Shell.showPage(require.toUrl('./sel_room.w'),params);
	};

	return Model;
});
