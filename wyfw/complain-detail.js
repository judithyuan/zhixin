define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	Model.prototype.modelParamsReceive = function(event){
			$('[xid=complainimgbox]').html("");
		var params = this.getContext().model.params;
		console.log( this.getContext());
		if(params.reply != "" && params.reply != null){
			$('[xid=replyBox]').show();
			$('[xid=alreadyReply]').show();
			$('[xid=notReply]').hide();
		}else{
			$('[xid=notReply]').show();
			$('[xid=alreadyReply]').hide();
			$('[xid=replyBox]').hide();
		}
		$('[xid=complaincontent]').text(params.content);
		$('[xid=replyContent]').text(params.reply);
		$('[xid=complainaddTime]').text(params.add_time);
		$('[xid=replyTime]').text(params.reply_time);
		
		if(params.pics instanceof Array){
		var str = '';
			for(var i=0;i<params.pics.length;i++){
				str +="<img src="+params.pics[i]+" class='complain-img' >"+"</img>";
			}
			$('[xid=complainimgbox]').append(str);
		}else{
			$('[xid=complainimgbox]').html("");
		}
	};
//	跳转去投诉
	Model.prototype.toComplainClick = function(event){
		var url = require.toUrl("../wyfw/customer-councel.w");
		justep.Shell.showPage(url);
	};

	Model.prototype.modelLoad = function(event){
		var params;
	};

	return Model;
});