define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
	Model.prototype.common = require('../js/common');
	//跳转消息中心
	Model.prototype.button2Click = function(event){
		localStorage.setItem('tips','0');
//		$('#span98').hide();
		var url = require.toUrl('../user/entermsg.w');
		justep.Shell.showPage(url,{
			
		});
	};
	Model.prototype.div4Click = function(event){
		var row = event.bindingContext.$object;
		console.log(row.val('activity_id'));
		var url = require.toUrl("../linli/activityDetail.w");
		justep.Shell.showPage(url,{ejid:row.val('activity_id')});
	};

	Model.prototype.myActivityDataCustomRefresh = function(event){
		var user=justep.Shell.user.get(),me=this;
		var url = this.common.apiPath+'/zhixines/api/activity/ActiveOrderList';
		$.ajax({
			type:"post",
			url:url,
			async:false,
			data:{user_id:user.id},
			dataType:'json',
			success:function(d){
			if(d.code == 200){
				if(!d.datas.state){
					$('[xid=activityNullData]').show();
				}else{
					event.source.loadData(d.datas.msg);
				}

//				$('[xid=activityDetaiImg]').css('background-image',this.common.apiPath+d.msg[0].default_picture);
			}
			
		}.bind(this)})
	};

	Model.prototype.modelActive = function(event){
		this.comp('myActivityData').refreshData();
	};

	return Model;
});