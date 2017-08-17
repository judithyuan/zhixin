define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
	Model.prototype.util=require('./js/common');
	Model.prototype.roomDataCustomRefresh = function(event){
		var url=this.util.apiPath+'/api/room/sel_room/'+this.params.bid,me=this;
		this.util.doget(url,function(d){
			event.source.loadData(d.room);
			console.log(d.room)
			me.char.loadData(d.char);
		});
	};

	Model.prototype.list3Click = function(event){
		var $e=$(event.currentTarget),
		val=$e.attr('value'),
		txt=$e.find('.pull-left').text(),
		params={bid:this.params.bid,rid:val,
				brtxt:this.params.btxt+'-'+txt
				};
		console.log(params)
		if(this.params.data&&this.params.data.callback){
			this.params.data.callback(params);
		}
		justep.Shell.closePage('selcity');
		justep.Shell.closePage('sellp');
		justep.Shell.closePage('selban');
		justep.Shell.closePage();
//		alert(this.comp('roomData').val('code'))
		localStorage.setItem('code',val);
	};

	return Model;
});
