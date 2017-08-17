define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
	
	//	定义函数
	var common = require("../js/common");
	Model.prototype.util = common;
	
 	//	定义函数请求-----------------------------------------------------
	$(document).ajaxStart(function() {
//		$('[xid=loadpopOver]').show();
	});
	$(document).ajaxStop(function() {
//		$('[xid=loadpopOver]').hide();
	});
	$(document).ajaxError(function() {
//		$('[xid=loadpopOver]').hide();
//		$('[xid=Overlineerrorlinli]').show();
	});
	//请求出错
	Model.prototype.denglu = function(event){
//		justep.Shell.showPage(require.toUrl('./login.w'));
		localStorage.setItem('x5Version + introPage','yes');
		window.location.reload();
	};
	//	定义函数请求-----------------------------------------------------
    //消息推送----------------------- 	
	//返回首页
	Model.prototype.buttonshoueClick = function(event){
//		justep.Shell.closePage();
//		var url = require.toUrl('../index.w');
//		justep.Shell.showPage(url);	
//		window.location.reload();
//		justep.Shell.showMainPage();
		justep.Shell.showPage("main.w");
//		if(localStorage.getItem('x5Version + introPage')!='yes'){
//			localStorage.setItem('x5Version + introPage','yes');
//			window.location.reload();
//		}else{
//			justep.Shell.showPage('main');
//		}
	};
	//公告详情
	Model.prototype.li1Click = function(event){
		var row = event.bindingContext.$object;
		var id=row.val('id');
////		alert(id);
//		var url = require.toUrl('../linli/ggxq.w');
//		justep.Shell.showPage(url,{
//			ggid:id
//		});	
		var url = require.toUrl('../gonggaoxqyuedu.w');
//			alert(this.comp('gonggaoData').val('id'));
//			if(this.comp('ggDta').val('id')>0){
				justep.Shell.showPage(url, {
					id :id
				});
//			}
	};
	
	//e家 Data
	Model.prototype.ejiaDtaCustomRefresh = function(event){
		var url =this.util.apiPath+'/zhixines/api/xiaoxi/getEHomeList',me=this;
		var user=justep.Shell.user.get();
		var data={cid:2,lid:user.lid};
		$.ajax({
			url:url,
			type:'post',
			async: false,	
			data:data,
			dataType:'json',
			success:function(d){
				event.source.loadData(d);
			},
			error:function(d){
				console.log(d);
			}
		});
	};

	//跳转至e家生活详情和活动详情
	Model.prototype.li2Click = function(event){
		var url;
		var row = event.bindingContext.$object;
		var type = row.val("type");
		if(type==1){
			url = require.toUrl('../linli/activityDetail.w');

		}else{
			url = require.toUrl('../linli/ejxq.w');
		}
		var id=row.val('id');
		justep.Shell.showPage(url,{
			ejid:id
		});	
	};

	//获取物业公告
	Model.prototype.ggDtaCustomRefresh = function(event){
//		var url =this.util.apiPath+'/zhixines/api/xiaoxi/getEHomeList',me=this;
		var url =this.util.apiPath+'/zhixines/api/tianqiyubao/gonggao_release',me=this;
		var user=justep.Shell.user.get();
		var data={cid:3,lid:user.lid,lp_id : user.lid,uid:user.id};
		$.ajax({
			url:url,
			type:'post',
			async: false,	
			data:data,
			dataType:'json',
			success:function(d){
				event.source.loadData(d);
			},
			error:function(d){
				console.log(d);
			}
		});
	};

	//跳转到消息中心
	Model.prototype.right1Click = function(event){
		var url = require.toUrl('../user/entermsg.w');
		justep.Shell.showPage(url,{
			
		});
	};
	
	

	Model.prototype.span9Click = function(event){
		localStorage.setItem('tips','0');
		$('#span99').hide();
		var url = require.toUrl('../user/entermsg.w');
		justep.Shell.showPage(url,{
			
		});
	};

	Model.prototype.modelLoad = function(event){
		if(this.params.maingd=='shouyegd'){
		$('[xid=tabItem8ejiashenghuo]').trigger('click');
		}
		var url =this.util.apiPath+'/api/user/getbanner',me=this;
		var user=justep.Shell.user.get();
		console.log(user);
		var data={
			user_id:user.id,
			lid:user.lid
		}
		$.ajax({
			url:url,
			type:'post',
			async: false,	
			data:data,
			dataType:'json',
			success:function(d){
				try {
					$("#banner").attr('src',d.info.image);
				} catch (e) {
					// TODO: handle exception
				}
				
			},
			error:function(d){
				console.log(d);
			}
		});
	};

	Model.prototype.modelActive = function(event){
		this.comp('ggDta').refreshData();
		this.comp('ejiaDta').refreshData();
		console.log('refreshData')
	};
	//底部icon
	Model.prototype.bottomIconDataCustomRefresh = function(event){
//		console.log(JSON.parse(localStorage.getItem('all_bottom_icon')));
		event.source.loadData(JSON.parse(localStorage.getItem('all_bottom_icon')));
	};
	//底部的功能
	Model.prototype.bottomIconClick = function(event){
		var row = event.bindingContext.$object;
		//我的--------------------------------------------------------
		if(row.val('short_name')=='mine'){
			var url = require.toUrl('../user/user-main.w');
			justep.Shell.showPage(url,{
				tz:"sy"
			});
		}
		//邻里----------------------------------------------
		if(row.val('short_name')=='neighbourhood'){
			
		}
		//商城-----------------------------------------------
		if(row.val('short_name')=='shop'){
			var url = require.toUrl('../shop/shop-main.w');
			justep.Shell.showPage(url,{
			});	
		}
		//主页steward-------------------------------
		if(row.val('short_name')=='home_page'){
			justep.Shell.showPage("main.w");
		}
		//管家
		if(row.val('short_name')=='steward'){
			var url = require.toUrl('../guanjia/guanjia-main.w');
				justep.Shell.showPage(url,{
				
			});
		}
	};
	

	
	
	return Model;
});