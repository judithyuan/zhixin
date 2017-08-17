define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};
	var user = justep.Shell.user.get();
	Model.prototype.common = require('../js/common');

	Model.prototype.modelLoad = function(event){

	}
	var activity_fee,original_money;
	var activity_id;
	Model.prototype.activityDataBeforeRefresh = function(event){

	};
	//到支付方式选择页
	var repeated_submit = false;
	
	Model.prototype.button1Click = function(event){
	if(!repeated_submit){
			repeated_submit = true;
			var lid = ''.room_id = '';
			//活动费用为零元时
//		if(user.is_auth_name=='1'){
		//如果是住户
		
		//	justep.Shell.showPage(require.toUrl('../user/user-orderlist.w'));
//		}else{
//			$('[xid=choosepopOver]').show();
//		}
			if(activity_fee == 0){
				var data = {
					user_id : user.id,//id
					lid:user.lid,
					bid:user.bid,
					room_id:user.rid,
					activity_id:activity_id,
					v:localStorage.getItem('vv'),
					payment_code :'free',//支付方式
				}
				$.post(this.common.apiPath +'/zhixines/api/activity/CreatefreeActiveOrder', data, function(d) {
					var newData = JSON.parse(d);
					try{
						if(newData.datas.s){
							this.common.showPop('成功创建活动订单');	
							justep.Shell.showPage(require.toUrl('../user/user-main.w'));
						}else{
							this.common.showPop('报名失败:'+newData.datas.msg);
							repeated_submit = false;
						}
						
						this.comp('activityData').refreshData();

					}catch(e){
						console.log(e)
					}
	
				}.bind(this))
			}
				
		}else{
			this.common.showPop('请勿重复提交！');	
		}
			//活动费用为非零元
			if(original_money != 0){
				justep.Shell.showPage(require.toUrl('./activityPay.w'),{
				original_money:original_money,
				money:activity_fee,
				activity_id:activity_id,
				order_amount:activity_fee
			})
			}


	};


	Model.prototype.modelParamsReceive = function(event){

	};


	Model.prototype.activityDataCustomRefresh = function(event){
		var user=justep.Shell.user.get(),me=this;
		var url = this.common.apiPath+'/zhixines/api/activity/getActivityinfo';
		$.ajax({
			type:"post",
			url:url,
			async:false,
			data:{id:this.params.ejid,user_id:user.id},
			dataType:'json',
			success:function(d){
			if(d.code == 200){
				event.source.loadData(d.datas.msg);
				original_money = d.datas.msg[0].activity_cost;//原始金额
				activity_fee =d.datas.msg[0].activity_cost*d.datas.msg[0].wallet_allowance/100 ;//余额计算金额
				activity_id = d.datas.msg[0].id;
//				(function(){if(  $model.activityData.val("activity_state") && $model.activityData.val("activity_state")==1)return "招募中";if( $model.activityData.val("activity_state") && $model.activityData.val("activity_state") === 0)return "待招募";if( $model.activityData.val("activity_state") && $model.activityData.val("activity_state")==2)return "已招募";if( $model.activityData.val("activity_state") && $model.activityData.val("activity_state")==3)return "进行中";if($model.activityData.val("activity_state") && $model.activityData.val("activity_state")==4) return "已结束"})()
				var activityState = d.datas.msg[0].activity_state;
				switch(activityState){
					case 0:activityState = '待招募';break;
					case 1:activityState = '招募中';break;
					case 2:activityState = '已招募';break;
					case 3:activityState = '进行中';break;
					case 4:activityState = '已结束';break;
				}
				$('[xid=activityStateP]').text(activityState);
				$('[xid=activityContentInfoParent]').html(d.datas.msg[0].content);
				$('[xid=activityDetaiImg]').css('background-image','url('+d.datas.msg[0].default_picture+')');
			}
			
		}.bind(this)})
		repeated_submit = false;
	};


	Model.prototype.modelActive = function(event){
		repeated_submit = false;
		this.comp('activityData').refreshData()
	};
 
 
	return Model;
});