define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
		this.wyjfdiscount = justep.Bind.observable("");//物业缴费最低折扣
	};
	Model.prototype.util = require("../js/common");
	var common = require("../js/common");
	//通过判断系统来改变已认证样式
	//判断是否为IOS
	var shiying=function(){
		var ua = navigator.userAgent.toLowerCase();	
		if (/iphone|ipad|ipod/.test(ua)) {	
			    $('[xid=iframe1]').css({'top':'68px'});
		} else if (/android/.test(ua)) {
		}
	}
	var user = justep.Shell.user.get();//获取缓存用户表信息数据
	//消息推送
	$(function(){ 
		var ws = io.connect(common.ioPath);
		ws.on('messages', function (data) { //初始消息队列
		});		
		ws.on('open', function () {//连接成功
	 	}); 
	    ws.on('get', function (data) {//接收消息
			if(data.type == 'systemmsg'){
				if(data.body.lp_id == user.lid) {
					$('#span98').show();	
				}
			}else if(data.type == 'prvmsg'){
				if(data.body.user_id == user.id){
					$('#span98').show();
				}
			}
	    });
	    ws.on('disconnect', function(data){ //连接断开
		});
    });  
	//取消游客狂
	Model.prototype.button6Clickcancle = function(event){
		$('[xid=ykrzpopOver]').hide();
	};
	/*立刻认证*/    
	Model.prototype.button7Clicklikerenz = function(event){
		if(user.register_type=='1'){
			var url = require.toUrl('../xzlp.w');
			justep.Shell.showPage(url,{
			
			});
		}else{
			justep.Shell.showPage(require.toUrl('../mima.w'),{
			ykrz :'ykrzmima',
		});
		}
		
	};
		//大门------------------------------------------------
//	var newmacs=user.damenmac
//	var passwords=user.mima; 
//	//var passmac; 
//	//单元门
//	var dnewmacs=user.danyuanmenmac;
//	//var dpasswords=user.mima; 
//	//var dpassmac=user.danyuanmenmac; 
	//门禁------------------------------------------------
	Model.prototype.modelLoad = function(event){
		shiying();
		document.getElementById('type').innerText = "熊猫管家";
		$('[xid=button1guanjiafanhui]').hide();
		 /*************打折*************************/
		var me=this;
		$.ajax({
				url :  this.util.apiPath+'/zhixines/api/xiaoxi/get_lowest_discount',
				data : {lid : user.lid},
				dataType : 'json',
				type : 'post',
				timeout : 8000,
				async : true,
				success : function(d){
					if(d.discount<10){
						me.wyjfdiscount.set(d.discount+'折');
					}else{
						me.wyjfdiscount.set(false);
					}
				},
				error : function(d){
					console.log(d);
				}
		});
	};
	//被挤掉
	Model.prototype.denglu = function(event){
//		justep.Shell.showPage(require.toUrl('./login.w'));
		localStorage.setItem('x5Version + introPage','yes');
		window.location.reload();
	};
    //消息推送----------------------- 		
	
	Model.prototype.button1Click = function(event){
		document.getElementById('type').innerText = "熊猫管家";
		//修改字体的粗细
		document.getElementById('type').style.fontWeight="bold";
		$('[xid=bottom1guanjia]').show();
		$('[xid=iframe1]').hide();
		$('[xid=button1guanjiafanhui]').hide();
		$('[xid=backBtnguanjiaifram]').show();
		$('[xid=span9]').show();
		
	};
		
	Model.prototype.span9Click = function(event){
		localStorage.setItem('tips','0');
		$('#span99').hide();
		var url = require.toUrl('../user/entermsg.w');
		justep.Shell.showPage(url,{
			
		});
	};
	Model.prototype.button19Click = function(event){
		$('[xid=ykrzpopOver]').hide();
	};



	//物业服务的Icon-----------------------------------
	Model.prototype.wyfwDataCustomRefresh = function(event){
		//console.log(JSON.parse(localStorage.getItem('house'))[101]);
		event.source.loadData(JSON.parse(localStorage.getItem('house'))[101]);
	};
	//物业服务Icon功能----------------------------------
	Model.prototype.wyfwBtnClick = function(event){
		var row = event.bindingContext.$object;
		switch(row.val('short_name')){
			//在线缴费
			case 'online_pay':
				if(user.is_auth_name=='1'){
					var url = require.toUrl('./Paycost.w');
					justep.Shell.showPage(url,{});
				}else{
		//			this.util.showPop("该服务目前仅对指定小区的认证住户开通");
					$('[xid=ykrzpopOver]').show();
				}
				break;
			//快递上门---------------------------------------------------------------
			case 'express_service':
				if(user.is_auth_name=='1'){
					var url = require.toUrl('../kuaidi.w');
					justep.Shell.showPage(url);
				}else{
		//			this.util.showPop("该服务目前仅对指定小区的认证住户开通");
					$('[xid=ykrzpopOver]').show();
				}
				break;
			//物业保修---------------------------------------------------------------
			case 'repairs_service':
				if(user.is_auth_name!='1'){
		//			this.util.showPop("该服务目前仅对指定小区的认证住户开通");
					$('[xid=ykrzpopOver]').show();
					return false;
				}
				var url = require.toUrl('../wyfw/onebxxq.w');
				justep.Shell.showPage(url,{
		//			type:'tcf',
		//			id : 5
				});
				break;
			//访客开门-------------------------------------------------------------
			case 'visitor':
				if(user.is_auth_name=='1'){
					var url = require.toUrl('../door/entrance.w');
					justep.Shell.showPage(url,{
					});
				}else{
		//			this.util.showPop("该服务目前仅对指定小区的认证住户开通");
					$('[xid=ykrzpopOver]').show();
				}
				break;
		//			投诉咨询
			case 'suggest':
				if(user.is_auth_name=='1'){
					var url = require.toUrl('../wyfw/customer-councel.w');
					justep.Shell.showPage(url,{});
				}else{
		//			this.util.showPop("该服务目前仅对指定小区的认证住户开通");
					$('[xid=ykrzpopOver]').show();
				}
			break;
			//智能锁车lock_car
			case 'lock_car':
				if(user.is_auth_name!='1'){
		//			this.util.showPop("该服务目前仅对指定小区的认证住户开通");
					$('[xid=ykrzpopOver]').show();
					return false;
				}
				var pData = {
					lp_id:user.lid
				};
				$.ajax({
					url : this.util.apiPath+'/zhixines/api/jiaofei/is_nwp',
					data : pData,
					dataType : 'json',
					type : 'post',
					timeout : 8000,
					async : true,
					success : function(e){
		//				alert(e.datas.s)
						if(e.datas.s){//内盘为true
							sessionStorage.setItem('zhesale', '');
							sessionStorage.setItem('zhesalenum', 1);
							justep.Shell.showPage(require.toUrl('../wyfw/carFee.w'),{
								jftype :'2',
								old : 'yes'
							});	
						}else{
							justep.Shell.showPage(require.toUrl('../wyfw/carFee.w'),{
								jftype :'2',
								waipan : 'waipan'
							});
							//		------------------------------------------------
						}
					},
					error : function(e){
						console.log(e);
					}
				});
				break;
			//社区公告notice
			case 'notice':
				var url = require.toUrl('../linli/linli-main.w');
				justep.Shell.showPage(url,{
		//				id : this.comp('gonggaoData').val('id')
				});
				break;
			//垃圾费garbage_fee
			case 'garbage_fee':
				if(user.is_auth_name!='1'){
		//			this.util.showPop("该服务目前仅对指定小区的认证住户开通");
					$('[xid=ykrzpopOver]').show();
					return false;
				}
				var pData = {
					lp_id:user.lid
				};
				$.ajax({
					url : this.util.apiPath+'/zhixines/api/jiaofei/is_nwp',
					data : pData,
					dataType : 'json',
					type : 'post',
					timeout : 8000,
					async : true,
					success : function(e){
						if(e.datas.s){//内盘为true
								var pData={
									lid : user.lid
								},me=this;
								$.ajax({
									url : common.apiPath+'/zhixines/api/xiaoxi/show_payment_category',
									data : pData,
									type : 'post',
									dataType : 'json',
									async : false,
									success : function(es){
										justep.Shell.showPage(require.toUrl('../wyfw/alljiaofei.w'),{
												jftype :'3',
										});
									},
									error : function(es){
										console.log(es);
									}
								});			
						}else{
							justep.Shell.showPage(require.toUrl('../wyfw/alljiaofei.w'),{
								jftype :'3',
								waipan : 'waipan'
							});	
							//		------------------------------------------------
						}
					},
					error : function(e){
						console.log(e);
					}
				});
				break;		
		}
	};
	//便民生活Icon功能-------------------------------------
	Model.prototype.bmshDataCustomRefresh = function(event){
		event.source.loadData(JSON.parse(localStorage.getItem('house'))[102]);
	};
	//便民生活Icon功能----------------------------------
	Model.prototype.bmshBtnClick = function(event){
		var row = event.bindingContext.$object;
		switch(row.val('short_name')){
			//电费缴纳----------------------------------------------------------
			case 'power_fee':
				if(user.is_auth_name!='1'){
		//			this.util.showPop("该服务目前仅对指定小区的认证住户开通");
					$('[xid=ykrzpopOver]').show();
					return false;
				}
				var me=this;
				var dataCheck = {
						cost_type : "4", //cost_type 0 物业费 1 水费 2 垃圾费 3 停车费 4 电费 5 气费
						lp_id : user.lid
				};
				//查询易软的接口是否有电费、气费信息，如果没有直接跳转到便民服务。
				$.post(this.util.apiPath +'/zhixines/api/jiaofei/check_cost',dataCheck, function(dd) {
					//console.log(.datas.state);
					if(JSON.parse(dd).datas.state===false){/*未开通内部支付进入银联支付*/
						$('[xid=span7]').show();
						$('[xid=backBtnguanjiaifram]').hide();
						document.getElementById('type').innerText = "电费";
						//修改电费的字体粗细
						document.getElementById('type').style.fontWeight="normal";
						$('[xid=span9]').hide();
						var data = {
								id : "电费", 
								lid : user.lid
						};
						//var me=this;
//						
						$.post(me.util.apiPath +'/zhixines/api/jiaofei/bianmin',data, function(d) {
							if(d.s==false){
								me.util.showPop('暂未开放！');
								return false
							}
							$('[xid=bottom1guanjia]').hide();
							n=d.url;
							$('[xid=iframe1]').show();
							var urldata = me.comp("data");
							urldata.clear();
							urldata.newData({
								"defaultValues" : [ {
									"url" : d.url,
								} ]
							});
							me.comp('data').refreshData();
						});
						/*OVER*/
					}else{
						/*判断内外盘*/
						var pData = {
							lp_id:user.lid
						};
						$.ajax({
							url : me.util.apiPath+'/zhixines/api/jiaofei/is_nwp',
							data : pData,
							type : 'post',
							dataType : 'json',
							async : false,
							success : function(e){
								if(e.datas.s){//内盘为true
		//							var url = require.toUrl('../wyfw/dianfei.w');
									/*这里是统一接口后的地址*/
									var url = require.toUrl('../wyfw/alljiaofei.w');
									justep.Shell.showPage(url,{
										type:'dianfei',
										id : 3,
										is_nwp:'np',
										jftype:'电费'
									});	
								}else{
		//							var url = require.toUrl('../wyfw/dianfei.w');
									/*这里是统一接口后的地址*/
									var url = require.toUrl('../wyfw/alljiaofei.w');
									justep.Shell.showPage(url,{
										type:'dianfei',
										id : 3,
										is_nwp:'wp',
										jftype:'电费',
										waipan:'waipan'
									});
								}
							},
							error : function(e){
								console.log(e)
							}
						});/*判断内外盘*/
					}	
				});
				break;
			//气费缴纳------------------------------------------------------------------------
			case 'gas_fee':
				if(user.is_auth_name!='1'){
		//			this.util.showPop("该服务目前仅对指定小区的认证住户开通");
					$('[xid=ykrzpopOver]').show();
					return false;
				}
				
				var me=this;
				var dataCost = {
						cost_type : "5", //cost_type 0 物业费 1 水费 2 垃圾费 3 停车费 4 电费 5 气费
						lp_id : user.lid
				};
				//查询易软的接口是否有电费、气费信息，如果没有直接跳转到便民服务。
				$.post(this.util.apiPath +'/zhixines/api/jiaofei/check_cost',dataCost, function(dq) {
					//console.log(JSON.parse(dq).datas.state)
					if(JSON.parse(dq).datas.state===false){/*走的银联通道*/
						document.getElementById('type').innerText = "气费";	
						//修改字体粗细
						document.getElementById('type').style.fontWeight="normal";
						$('[xid=span9]').hide();
						$('[xid=span7]').show();
						$('[xid=backBtnguanjiaifram]').hide();
						var data = {
								id : "气费", 
								lid : user.lid
						};
						//var me=this;
//						$('[xid=bottom1guanjia]').hide();
						$.post(me.util.apiPath +'/zhixines/api/jiaofei/bianmin',data, function(d) {
							if(d.s==false){
								me.util.showPop('暂未开放！');
//								Model.prototype.button1Click();
								return false
							}
							$('[xid=bottom1guanjia]').hide();
							n=d.url;
							$('[xid=iframe1]').show();
							var urldata = me.comp("data");
							urldata.clear();
							urldata.newData({
								"defaultValues" : [ {
									"url" : d.url,
								} ]
							});
							me.comp('data').refreshData();
						});
						
					}else{
						/*判断内外盘*/
						var pData = {
							lp_id:user.lid
						};
						$.ajax({
							url : me.util.apiPath+'/zhixines/api/jiaofei/is_nwp',
							data : pData,
							type : 'post',
							dataType : 'json',
							timeout : 8000,
							async : true,
							success : function(e){
								if(e.datas.s){//内盘为true
		//							var url = require.toUrl('../wyfw/qifei.w');
									/*这里是统一接口后的地址*/
									var url = require.toUrl('../wyfw/alljiaofei.w');
									justep.Shell.showPage(url,{
										type:'qifei',
										id : 3,
										is_nwp:'np',
										jftype:'气费',
									});	
								}else{
		//							var url = require.toUrl('../wyfw/qifei.w');
									/*这里是统一接口后的地址*/
									var url = require.toUrl('../wyfw/alljiaofei.w');
									justep.Shell.showPage(url,{
										type:'qifei',
										id : 3,
										is_nwp:'wp',
										jftype:'气费',
										waipan:'waipan'
									});
								}
							},
							error : function(e){
								console.log(e)
							}
						});/*判断内外盘*/
							
					}	
				});
				break;
			//电信宽带--------------------------------------------------------------------
			case 'broadband':
				if(user.is_auth_name!='1'){
		//			this.util.showPop("该服务目前仅对指定小区的认证住户开通");
					$('[xid=ykrzpopOver]').show();
					return false;
				}
				var data = {
						id : "电信宽带",
						lid : user.lid
				};
				var me=this;
				$.post(this.util.apiPath +'/zhixines/api/jiaofei/bianmin',data, function(d) {
		//			window.open(d.url,'_system');
					if(d.s==false){
						me.util.showPop('暂未开放！');
						return false
					}
					document.getElementById('type').innerText = "电信宽带";
					//修改字体粗细
					document.getElementById('type').style.fontWeight="normal";
					$('[xid=span9]').hide();
					$('[xid=bottom1guanjia]').hide();	
					$('[xid=span7guanjiaifram]').show();
					$('[xid=backBtnguanjiaifram]').hide();
					$('[xid=span9]').hide();
					n=d.url;
					$('[xid=iframe1]').show();
					var urldata = me.comp("data");
					urldata.clear();
					urldata.newData({
						"defaultValues" : [ {
							"url" : d.url,
						} ]
					});
					me.comp('data').refreshData();
				});
				break;
			//汽车票-------------------------------------------------------------
			case 'bus_tickets':
				if(user.is_auth_name!='1'){
		//			this.util.showPop("该服务目前仅对指定小区的认证住户开通");
					$('[xid=ykrzpopOver]').show();
					return false;
				}		
				var data = {
						id : "汽车票",
						lid : user.lid
				};
				var me=this;
				$.post(this.util.apiPath +'/zhixines/api/jiaofei/bianmin',data, function(d) {
		//			window.open(d.url,'_system');
		//			alert(d.s);
					if(d.s==false){
						
						me.util.showPop('暂未开放！');
						return false
					}
					document.getElementById('type').innerText = "汽车票";
					//修改字体粗细
					document.getElementById('type').style.fontWeight="normal";
					$('[xid=span9]').hide();
					$('[xid=bottom1guanjia]').hide();	
					$('[xid=span7guanjiaifram]').show();
					$('[xid=backBtnguanjiaifram]').hide();
					$('[xid=span9]').hide();
					n=d.url;
					$('[xid=iframe1]').show();
					var urldata = me.comp("data");
					urldata.clear();
					urldata.newData({
						"defaultValues" : [ {
							"url" : d.url,
						} ]
					});
					me.comp('data').refreshData();
				});	
				break;
			//手机充值----------------------------------------------------------------
			case 'mobile_recharge':
				if(user.is_auth_name!='1'){
		//			this.util.showPop("该服务目前仅对指定小区的认证住户开通");
					$('[xid=ykrzpopOver]').show();
					return false;
				}		
				var data = {
						id : "手机",
						lid : user.lid
				};
				var me=this;
				$.post(this.util.apiPath +'/zhixines/api/jiaofei/bianmin',data, function(d) {
		//			window.open(d.url,'_system');
					if(d.s==false){
						me.util.showPop('暂未开放！');
						return false
					}
					document.getElementById('type').innerText = "手机";	
					//修改字体粗细
					document.getElementById('type').style.fontWeight="normal";
					$('[xid=span9]').hide();
					$('[xid=bottom1guanjia]').hide();
					$('[xid=span7guanjiaifram]').show();
					$('[xid=backBtnguanjiaifram]').hide();
					$('[xid=span9]').hide();
					n=d.url;
					$('[xid=iframe1]').show();
					var urldata = me.comp("data");
					urldata.clear();
					urldata.newData({
						"defaultValues" : [ {
							"url" : d.url,
						} ]
					});
					me.comp('data').refreshData();
				});
				break;
			//违章查询-------------------------------------------------------------------------
			case 'query_traffic_violations':
				if(user.is_auth_name!='1'){
		//			this.util.showPop("该服务目前仅对指定小区的认证住户开通");
					$('[xid=ykrzpopOver]').show();
					return false;
				}		
				var data = {
						id : "交通违章",
						lid : user.lid
				};
				var me=this;
				$.post(this.util.apiPath +'/zhixines/api/jiaofei/bianmin',data, function(d) {
		//			window.open(d.url,'_system');
					if(d.s==false){
						me.util.showPop('暂未开放！');
						return false
					}
					document.getElementById('type').innerText = "交通违章";
					//修改字体粗细
					document.getElementById('type').style.fontWeight="normal";
					$('[xid=span9]').hide();
					$('[xid=bottom1guanjia]').hide();	
					$('[xid=span7guanjiaifram]').show();
					$('[xid=backBtnguanjiaifram]').hide();
					$('[xid=span9]').hide();
					n=d.url;
					$('[xid=iframe1]').show();
					var urldata = me.comp("data");
					urldata.clear();
					urldata.newData({
						"defaultValues" : [ {
							"url" : d.url,
						} ]
					});
					me.comp('data').refreshData();
				});	
				break;
		}
	};
	//社区周边Icon--------------------------------------------------------------
	Model.prototype.sqzbDataCustomRefresh = function(event){
		event.source.loadData(JSON.parse(localStorage.getItem('house'))[103]);
	};
	//社区周边功能
	//钱包所用变量
	var qbsub=0;
	Model.prototype.sqzbBtnClick = function(event){
		var row = event.bindingContext.$object;
		switch(row.val('short_name')){
			//e家生活
			case 'ehome_life':
				var url = require.toUrl('../linli/linli-main.w');
				justep.Shell.showPage(url,{
				
				});
				break;
			//e家商城
			case 'ehome_shop':
				var url = require.toUrl('../shop/shop-main.w');
				justep.Shell.showPage(url,{
				});	
				break;
			//钱包
			case 'wallet':
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
						url : this.util.apiPath+'/zhixines/api/wallet/getwallet',
						data : datas,
						dataType : 'json',
						type : 'post',
						timeout : 8000,
						async : true,
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
				}
				break;
		}
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
			var url = require.toUrl('../linli/linli-main.w');
			justep.Shell.showPage(url,{
			
			});
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
	};



	return Model;
});