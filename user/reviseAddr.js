define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};
	
	var common = require("../js/common");
	Model.prototype.util = common;
	Model.prototype.modelLoad = function(event){
		$(this.getElementByXid("phone")).attr("maxlength",11);	
	};	
	//自动获取焦点，以作提示
	$("[xid=name]").focus();
	Model.prototype.registerBtnClick = function(event){
		var user=justep.Shell.user.get();
		var name=$.trim(this.comp('name').$domNode.val());
		var phone=$.trim(this.comp('phone').$domNode.val());
		var addr=this.comp("msgData").val("address");
		var area=this.comp("msgData").val("area_info");
		var address_id=this.comp("msgData").val("address_id");
		if (name == '') {
			me.util.showPop("请输入名字");
			return false;
		}
		if (this.comp('phone').$domNode.val() == '') {
			me.util.showPop("请输入电话");
			return false;
		}
		var data={
			key:user.v,
			address_id:address_id,
			true_name : name,
			area_info:area,
			address:addr,
			mob_phone : phone,
		};
		var url =this.util.shopPath + '/mobile/index.php?act=member_address&op=address_edit',me=this;
		$.ajax({
			url:url,
			type:'post',
			async: false,	
			data:data,
			dataType:'json',
			success:function(d){
				if(d.datas==1){
					me.util.showPop("修改成功");
					justep.Shell.closePage();
				}else{
					me.util.showPop("修改失败请稍后重试");
				}
			},
			error:function(d){
				console.log(d);
			}
		});
	};
	
	Model.prototype.msgDataCustomRefresh = function(event){
		if(this.params.addressID==undefined){
			return false;
		}
		var address_id=this.params.addressID;
		var user=justep.Shell.user.get();
		var data={
			address_id:address_id,
			key:user.v,
		};
		var url =this.util.shopPath + '/mobile/index.php?act=member_address&op=address_info',me=this;
		$.ajax({
			url:url,
			type:'post',
			async: false,	
			data:data,
			dataType:'json',
			success:function(d){
				var msgData =me.comp('msgData');
				try {
					msgData.newData({
						"defaultValues" : [ {
							"address" : d.datas.address_info.address,
							"address_id" :d.datas.address_info.address_id,
							"area_id" : d.datas.address_info.area_id,
							"area_info" : d.datas.address_info.area_info,
							"loupan_id" :d.datas.address_info.loupan_id,
							"mob_phone" : d.datas.address_info.mob_phone,
							"true_name" : d.datas.address_info.true_name,
							"member_id" :d.datas.address_info.member_id,
						} ]
					});
				} catch (e) {
					// TODO: handle exception
				}
				
			},
			error:function(d){
				console.log(d);
			}
		});
	};
	

	
	return Model;
});