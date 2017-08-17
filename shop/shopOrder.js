define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
//	定义函数
	var common = require("../js/common");
	Model.prototype.util = common;
//	var user = justep.Shell.user.get();//获取缓存用户表信息数据
	//被挤掉
	Model.prototype.denglu = function(event){
//		justep.Shell.showPage(require.toUrl('./login.w'));
		localStorage.setItem('x5Version + introPage','yes');
		window.location.reload();
	};
	Model.prototype.modelLoad = function(event){
		var complete=this.comp('list2orderList');
		complete.set({
			'filter' : '$row.val("order_state")!="40"'
		});
		this.comp('orderList').refreshData();
	};
	Model.prototype.modelActive = function(event){
		var complete=this.comp('list2orderList');
		complete.set({//50
			'filter' : '$row.val("order_state")!="50"'
		});
		
		this.comp('orderList').refreshData();
		$('[xid=button3all]').trigger('click');
	};
	
    //消息推送----------------------- 	
	Model.prototype.orderListCustomRefresh = function(event){
//		justep.userReturnMs = function(flag) {
//			if(flag=='sh'){
//				this.comp('orderList').refreshData();
//			}
//		}
		var url=this.util.shopPath+'/mobile/index.php?act=member_order&op=order_list&page=10&curpage=1',me=this;
		var Pdata={
			key:localStorage.getItem('vv'),//'c229788b27b907fe759a01bba3d02ac5'
		}
		$.ajax({
			url : url,
			dataType:'json',
			data:Pdata,
			type:'post',
			async: false,
			success:function(e){
				if(!e.datas.error){
//					console.log(e.datas.order_group_list.order_list.length);
					if(e.datas.order_group_list.order_list.length=='0'){
						me.util.showPop('暂无订单');
					}else{
						me.comp('orderList').loadData(e.datas.order_group_list.order_list);
						me.comp('goodsData').loadData(e.datas.order_group_list.goods_list);
					}
				}else{
					me.util.showPop(e.datas.error);
				}
				
			}
		});
	};
	//取消
	Model.prototype.buttonquxiaoClick = function(event){
		var row = event.bindingContext.$object;		
		var url = this.util.shopPath+'/mobile/index.php?act=member_order&op=order_cancel',me=this;
		var Pdata = {
			key : localStorage.getItem('vv'),//'c229788b27b907fe759a01bba3d02ac5',
			order_id : row.val('order_id')
		};
		$.ajax({
			url : url,
			data : Pdata,
			dataType : 'json',
			type : 'post',
			async : false,
			success : function(e){
				if(!e.datas.error){
//					justep.Shell.showPage(require.toUrl('./showOrder.w'));
					me.comp('orderList').refreshData();
					me.util.showPop('取消成功');
				}else{
					me.util.showPop(e.datas.error);
				}
			}
		});		
	};
	//删除
	Model.prototype.button3DEletClick = function(event){
//		console.log(this.util.shopPath)
		var row = event.bindingContext.$object;
		var url = this.util.shopPath+'/mobile/index.php?act=member_order&op=order_delete',me=this;
		var Pdata = {
			key : localStorage.getItem('vv'),//'c229788b27b907fe759a01bba3d02ac5',
			order_id : row.val('order_id')
		};
		$.ajax({
			url : url,
			data : Pdata,
			dataType : 'json',
			type : 'post',
			async : false,
			success : function(e){
				if(!e.datas.error){
//					justep.Shell.showPage(require.toUrl('./showOrder.w'));
//					justep.deletcartnum('deletcartnum');
					me.comp('orderList').deleteData(row);
					me.comp('orderList').refreshData();
					me.util.showPop('删除成功');
				}else{
					me.util.showPop(e.datas.error);
				}
			}
		});			
	};
	//确认收货
	Model.prototype.button5querenClick = function(event){
		var row = event.bindingContext.$object;
		var url = this.util.shopPath+'/mobile/index.php?act=member_order&op=order_receive',me=this;
		var Pdata = {
			key : localStorage.getItem('vv'),//'c229788b27b907fe759a01bba3d02ac5',
			order_id : row.val('order_id')
		};
		$.ajax({
			url : url,
			data : Pdata,
			dataType : 'json',
			type : 'post',
			async : false,
			success : function(e){
				if(!e.datas.error){
//					justep.Shell.showPage(require.toUrl('./showOrder.w'));
					me.comp('orderList').refreshData();
					me.util.showPop('确认成功');
				}else{
					me.util.showPop(e.datas.error);
				}
			}
		});		
	};
	//再次购买
	Model.prototype.button4zaigouClick = function(event){

	};
	//去支付
	Model.prototype.button2ZHifClick = function(event){
		var row = event.bindingContext.$object;
//		console.log(row.val('order_amount'));
		justep.Shell.showPage(require.toUrl('./orderPay.w'),{
			pay_snSend : row.val('pay_sn'),
			money : row.val('order_amount'),
			order_amount : row.val('order_amount')
		})
	};
	//订单详情跳转
	Model.prototype.row4Click = function(event){
		var row = event.bindingContext.$object;
		justep.Shell.showPage(require.toUrl('./orderDetail.w'),{
			order_id : row.val('order_id'),
//			'money' : row.val('order_amount')
		})
//		console.log(row.val('order_id'));
	};

	Model.prototype.backBtnClick = function(event){
		if(!this.params.tfpay){
			justep.Shell.closePage();
		}else{
			justep.Shell.showPage(require.toUrl('../user/user-main.w'));
		}
		
	};


	Model.prototype.myclick = function(event){
		justep.Shell.showPage(require.toUrl('../user/user-main.w'));
	};

	//已付款
	Model.prototype.button8Click = function(event){
		var complete=this.comp('list2orderList');
		complete.set({
			'filter' : ' $row.val("order_state")=="10"'
		});
		this.comp('orderList').refreshData();
	};
	//待收货
	Model.prototype.button9Click = function(event){
		var complete=this.comp('list2orderList');
		complete.set({
			'filter' : ' $row.val("order_state")=="30"'
		});
		this.comp('orderList').refreshData();
	};
	//待发货
	Model.prototype.button10Click = function(event){
		var complete=this.comp('list2orderList');
		complete.set({
			'filter' : ' $row.val("order_state")=="20"'
		});
		this.comp('orderList').refreshData();
	};
	//已取消
	Model.prototype.button27Click = function(event){
		var complete=this.comp('list2orderList');
		complete.set({
			'filter' : ' $row.val("order_state")=="0"'
		});
		this.comp('orderList').refreshData();
	};

	//已完成
	Model.prototype.button2Click = function(event){
		var complete=this.comp('list2orderList');
		complete.set({
			'filter' : ' $row.val("order_state")=="40"'
		});
		this.comp('orderList').refreshData();
	};
	//全部s
	Model.prototype.allClick = function(event){
		var complete=this.comp('list2orderList');
		complete.set({
			'filter' : ' $row.val("order_state")!="100"'
		});
		this.comp('orderList').refreshData();
	};

	return Model;
});