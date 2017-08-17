define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	//引入自适应的JS
	require("../js/autoSize");

	var Model = function(){
		this.callParent();
	};
	
	//	定义函数
	var common = require("../js/common");
	Model.prototype.util = common;
	var user = justep.Shell.user.get();//获取缓存用户表信息数据\
	
	Model.prototype.span9Click = function(event){
		localStorage.setItem('tips','0');
		$('#span99').hide();
		var url = require.toUrl('../user/entermsg.w');
		justep.Shell.showPage(url,{
			
		});
	};

	Model.prototype.modelLoad = function(event){
		//icon
		//localStorage.setItem('online_pay_icon',d.banner[0].icon_image2);
		if(localStorage.getItem('online_pay_icon')!=''){
			$('[xid=online_pay_icon]').attr('src',localStorage.getItem('online_pay_icon'));
			$('[xid=div2paycost]').css('display','block');
		}
		else{
			$('[xid=div2paycost]').css('display','none');
		}
		var pData={
			lid : user.lid
		},me=this;
		$.ajax({
			url : this.util.apiPath+'/zhixines/api/xiaoxi/show_payment_category',
			data : pData,
			type : 'post',
			dataType : 'json',
			async : false,
			success : function(e){
//				console.log(e)
				me.comp('payDta').loadData(e);
			},
			error : function(e){
				console.log(e)
			}
		});
	};
	//list列表
	Model.prototype.li1Click = function(event){
		var row = event.bindingContext.$object;
		sessionStorage.setItem('pay_awy', row.val('cost_id'));
		var pData = {
			lp_id:user.lid
		};
		$.ajax({
			url : this.util.apiPath+'/zhixines/api/jiaofei/is_nwp',
			data : pData,
			dataType : 'json',
			type : 'post',
			async : false,
			success : function(e){
//				alert(e.datas.s)
				if(e.datas.s){//内盘为true
//						alert(row.val('zhe'))
						if(row.val('zhe')==''){
							sessionStorage.setItem('zhesale', '');
							sessionStorage.setItem('zhesalenum', row.val('discount'));
							sessionStorage.setItem('jiaofeitype',row.val('text'))
						}else{
							sessionStorage.setItem('zhesale', '('+row.val('zhe')+')');
							sessionStorage.setItem('zhesalenum', row.val('discount'));
							sessionStorage.setItem('jiaofeitype',row.val('text'))
						}
								/*这里是统一接口后的地址*/
								if(row.val('cost_id')=='2'){
									justep.Shell.showPage(require.toUrl('../wyfw/carFee.w'),{
										jftype :row.val('cost_id'),
										old : 'yes'
									});
								}else{
									justep.Shell.showPage(require.toUrl('../wyfw/alljiaofei.w'),{
										jftype :row.val('cost_id'),
									});
								}
				}else{
						if(row.val('zhe')==''){
							sessionStorage.setItem('zhesale', '');
							sessionStorage.setItem('zhesalenum', row.val('discount'));
							sessionStorage.setItem('jiaofeitype',row.val('text'))
						}else{
							sessionStorage.setItem('zhesale', '('+row.val('zhe')+')');
							sessionStorage.setItem('zhesalenum', row.val('discount'));
							sessionStorage.setItem('jiaofeitype',row.val('text'))
						}
						/*打折信息*/
						if(row.val('cost_id')=='2'){
							justep.Shell.showPage(require.toUrl('../wyfw/carFee.w'),{
								jftype :row.val('cost_id'),
								waipan : 'waipan'
							});
						}else{
							justep.Shell.showPage(require.toUrl('../wyfw/alljiaofei.w'),{
								jftype :row.val('cost_id'),
								waipan : 'waipan'
							});
						}
					//		------------------------------------------------
				}
			},
			error : function(e){
				console.log(e);
			}
		});
		
		/*这里是统一接口后的地址*/

	};
	//活动页面进入
	var qbsub=0;
	Model.prototype.nativaClickmain = function(event){
		//请求点击次数的接口
		$.ajax({
			url:common.apiPath + '/api/homepageads/increase_click_num',
			type:'post',
			data:{ads_id:localStorage.getItem('online_pay_advert')},
			dataType:'json',
			timeout : 10000,
			async: true,
			success:function(e){
				console.log(e);
			}
		});
		var url='';
		switch(localStorage.getItem('online_pay_sign')){
			case "2":
				if(localStorage.getItem('hearUrl')==''){
					return;
				}
				window.open(localStorage.getItem('hearUrl'), '_blank', 'location=no,toolbar=no,closebuttoncaption=关闭');
				break;
			case "ejia":
				url=require.toUrl('../linli/ejxq.w');
				justep.Shell.showPage(url,{
					ejid:localStorage.getItem('online_pay_id')
				});
				break;
			case "active":
				url=require.toUrl('../linli/activityDetail.w');
				justep.Shell.showPage(url,{
					ejid:localStorage.getItem('online_pay_id')
				});
				break;
			case "shop":
				url=require.toUrl('../shop/detail.w');
				justep.Shell.showPage(url,{
					goodsId:localStorage.getItem('online_pay_id')
				});
				break;
			case "wealth":
				var winopenqb;
				var mycallback;
				var datas = {
					uid : user.id
				};
				//防止重复提交
				if(qbsub>0){
					return false;
				}else{
					$.ajax({
						url : common.apiPath+'/zhixines/api/wallet/getwallet',
						data : datas,
						dataType : 'json',
						type : 'post',
						async : false,
						success : function(e){
							qbsub=qbsub+1;
							var myCallback = function(event) {  
								 console.log("event.type"+event.type); 
							};
							if(e.datas.url.length>0){
								winopenqb=window.open(e.datas.url, '_blank', 'location=no,toolbar=no,closebuttoncaption=关闭');
								winopenqb.addEventListener('loadstart',function(event){
									if(event.url.length>0){
										 var stringUrl=event.url;
										   var arr=new Array();
										    arr=stringUrl.split(".html");
										    if(arr[0].length>0){
										    	var substring=arr[0].substring(arr[0].length-5,arr[0].length);
										    	if(substring=="close"){
										    		winopenqb.close();
										    		winopenqb.removeEventListener('loadstart', myCallback);
										    		qbsub=0;
										    	}
										    }	
									}	  	               
					           });	
							}	
						}
					});
				}//---钱包----
				break;
			default:
				break;
		}
	};



	return Model;
});