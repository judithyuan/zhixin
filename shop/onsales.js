define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var common = require("../js/common");
	var Model = function(){
		this.callParent();
	};


	
	
	
//	点击进入商品详情页
	Model.prototype.image2Click = function(event){
	var row = event.bindingContext.$object;
	var url = require.toUrl('./detail.w');
	justep.Shell.showPage(url,{
		goodsId: row.val('goods_id')
//		goodsId: 1179
	});

	}.bind(this);
		
	Model.prototype.modelLoad = function(event){
		//	请求促销商品
		$.ajax({
			url:common.apiPath+'/zhixines/api/Icon/specialSubject',//require.toUrl(common.apiPath+'/zhixines/api/tianqiyubao/ceshitianqi'),
			type:'get',
			dataType:'json',
			async: false,	
			success:function(d){

				if(d){
					$("[xid=activityTitle]").attr("src",d.main_img);
					this.comp('activityGoodsData').loadData(d.img_list);
				}
			}.bind(this),
			error:function(d){
				
			}
		 });

	};
	return Model;
});