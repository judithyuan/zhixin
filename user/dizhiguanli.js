define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
	var common = require("../js/common");
	Model.prototype.util = common;
	Model.prototype.modelLoad = function(event){
		/*
		 * 判断html标签是否有iosstatusbar,有测表示在苹果手机上运行，顶部需要留出20px，因此修改popover的top
		 */
//		if(device.platform!="Android"){
//			$(".x-full").css({
//				"top" : "5px"
//			});
//		}
	};	
	Model.prototype.button1Click = function(event){
		var url = require.toUrl('./add-dizhi.w');
		justep.Shell.showPage(url,{
		
		});
	};
	
	Model.prototype.addressDataCustomRefresh = function(event){
		var user=justep.Shell.user.get();
		console.log(user);
		var data={
			key:localStorage.getItem('vv'),
			
		};
		if(this.params.intersection_loupan_id){
			console.log(this.params.intersection_loupan_id);
			data.intersection_loupan_id=this.params.intersection_loupan_id;
		}
		var url =this.util.shopPath + '/mobile/index.php?act=member_address&op=address_list',me=this;
		$.ajax({
			url:url,
			type:'post',
			async: false,	
			data:data,
			dataType:'json',
			success:function(d){
				//如果有地址的话就不显示‘暂无地址’
				//console.log(d.datas.address_list=='');
				if(d.datas.address_list!=''){
					//console.log('地址的显示'+d.datas.address_list);
					$('[xid=div2]').hide();
					$('[xid=div7]').show();
				}
				else{
					$('[xid=div2]').show();
					$('[xid=div7]').hide();
				}
				//如果没有数据就直接返回
				if(d.datas.address_list==''){
					return;
				}
				//将默认地址放在第一位
				var index=0;
				for(var i=0,length=d.datas.address_list.length;i<length;i++){
					if(d.datas.address_list[i].is_default==1){
						index=i;
					}
				}
				var temp=0;
				temp=d.datas.address_list[0];
				d.datas.address_list[0]=d.datas.address_list[index];
				d.datas.address_list[index]=temp;
				event.source.loadData(d.datas.address_list);
				//console.log(d.datas.address_list);
				
			},
			error:function(d){
				console.log(d);
				$('[xid=div2]').show();
				$('[xid=div7]').hide();
			}
		});
		//当前小区及时达商品数量
		//this.intime_count = justep.Bind.observable("");
		url =this.util.shopPath + '/mobile/index.php?act=member_address&op=get_intime_goods_nums';	
		data={
			key:localStorage.getItem('vv'),
			loupan_id:user.lid
		};
		$.ajax({
			url:url,
			type:'post',
			async: false,	
			data:data,
			dataType:'json',
			success:function(d){
				//me.intime_count.set(d.datas.nums);
				localStorage.setItem('intime_count', d.datas.nums);
			}
		});
	};

	Model.prototype.col8Click = function(event){
		var row = event.bindingContext.$object;
		var address=row.val('address_id');
//		alert(address_id);
		justep.Shell.showPage(require.toUrl('./reviseAddr.w'),{
			addressID : address 
		})
	};

	Model.prototype.col9Click = function(event){
		var row = event.bindingContext.$object;
		var user=justep.Shell.user.get();
		var address_id=row.val("address_id");
		var me=this;
		
		
		
		var data={
			key:user.v,
			address_id:address_id,
		};
		var url =this.util.shopPath + '/mobile/index.php?act=member_address&op=address_del',me=this;
		$.ajax({
			url:url,
			type:'post',
			async: false,	
			data:data,
			dataType:'json',
			success:function(d){
				if(d.datas==1){
//					me.util.showPop("删除成功");
					setTimeout(function(){me.comp("addressData").refreshData();me.comp('list1dizhiguanli').refresh();}, 300);
					me.comp("addressData").deleteData(row);
				}else{
//					me.util.showPop("删除失败请稍后重试");
				}
			},
			error:function(d){
				console.log(d);
			}
		});
	};

	Model.prototype.modelActive = function(event){
		this.comp('addressData').refreshData();
	};
 

	// 点击切换默认地址
	Model.prototype.col7Click = function(event){
		var row = event.bindingContext.$object;
		var address_id=row.val("address_id");
		var user=justep.Shell.user.get();
		var data={
			key:user.v,
			address_id:address_id,
		};
		var url =this.util.shopPath + '/mobile/index.php?act=member_address&op=edit_default',me=this;
		$.ajax({
			url:url,
			type:'post',
			async: false,	
			data:data,
			dataType:'json',
			success:function(d){
				if(d.datas==1){
					me.util.showPop("设置成功");
					me.comp("addressData").refreshData();
				}else{
					me.util.showPop("设置失败请稍后重试");
				}
			},
			error:function(d){
				console.log(d);
			}
		});
	};
 



	return Model;
});