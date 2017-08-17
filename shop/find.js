define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	//	定义函数
	var common = require("../js/common");
	Model.prototype.util = common;
	var user = justep.Shell.user.get();//获取缓存用户表信息数据
	Model.prototype.modelLoad = function(event){
		/*
		 * 1、搜索关键词搜索
		 */
		$("#input3findserach").on('keypress',function(e) {  
                var keycode = e.keyCode;  
                var searchName = $(this).val();  
                if(keycode=='13') {  
                    e.preventDefault();    
                    //请求搜索接口  
//                     alert(searchName);
                    justep.Shell.showPage(require.toUrl('./detailList.w'),{
                    	keyword : searchName
                    }) 
                }  
        }); 
	};
	
	 //通过判断系统来改变已认证样式
	//判断是否为IOS
	var ua = navigator.userAgent.toLowerCase();	
	if (/iphone|ipad|ipod/.test(ua)) {
		    $('[xid=col2]').css({'margin-top':'0.3rem'});
	}
	
	//被挤掉
	Model.prototype.denglu = function(event){
//		justep.Shell.showPage(require.toUrl('./login.w'));
		window.location.reload();
	};
    //消息推送----------------------- 	
	//发现好货
	Model.prototype.findDtaCustomRefresh = function(event){
		var url = this.util.shopPath+'/mobile/index.php?act=index&op=find_goods',me=this;
//		console.log(url);
		var datas={
			key : localStorage.getItem('vv'),//'c229788b27b907fe759a01bba3d02ac5',
			loupan_id : user.lid
		}
		$.ajax({
			url : url,
			data : datas,
			async :false,
			dataType : 'json',
			type: 'get',
			success : function(e){
				event.source.loadData(e.datas);
			}
		});		
	};
	Model.prototype.li1Click = function(event){
		var row = event.bindingContext.$object;
//		console.log(row.val('data'));
		justep.Shell.showPage(require.toUrl('./detail.w'),{
			goodsId : row.val('data')
		});
	};



	return Model;
});