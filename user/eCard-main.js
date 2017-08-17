define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};
	Model.prototype.util = require("../js/common");
	var common = require("../js/common");
	//说明
	Model.prototype.instructClick = function(event){
		$('[xid=div1redBcontent]').empty();
		var url = this.util.apiPath+'/zhixines/api/GetRedPacket/explain',me=this;
		$.ajax({
			url : url,
			dataType: 'json',
			type : 'get',
			async : false,
			success: function(e){
				$('[xid=div1redBcontent]').append(e.explain_msg);
			}
		});
		$('[xid=divredBbonus]').show();
	};

	Model.prototype.knowClick = function(event){
		$('[xid=divredBbonus]').hide();
	};

	//跳转
	Model.prototype.col1Click = function(event){
		justep.Shell.showPage(require.toUrl('../user/redEnvelope.w'));
	};


	return Model;
});