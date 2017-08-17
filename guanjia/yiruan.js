define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
		this.titleName = justep.Bind.observable('');
	};
	var user = justep.Shell.user.get();//获取缓存用户表信息数据
	var common = require("../js/common");
	Model.prototype.util = common;
	//判断是否为IOS
	var shiying=function(){
		var ua = navigator.userAgent.toLowerCase();	
		if (/iphone|ipad|ipod/.test(ua)) {	
			    $('[xid=iframe1]').css({'top':'68px'});
		} else if (/android/.test(ua)) {
		}
	}
	Model.prototype.modelLoad = function(event){
		shiying();
		//根据传入的参数来判断显示
		var costType=this.params.costType;
		switch(costType){
			//电费缴纳----------------------------------------------------------
			case 'power_fee':
//				if(user.is_auth_name!='1'){
//		//			this.util.showPop("该服务目前仅对指定小区的认证住户开通");
//					$('[xid=ykrzpopOver]').show();
//					return false;
//				}
				var me=this;
				var dataCheck = {
						cost_type : "4", //cost_type 0 物业费 1 水费 2 垃圾费 3 停车费 4 电费 5 气费
						lp_id : user.lid
				};
				//查询易软的接口是否有电费、气费信息，如果没有直接跳转到便民服务。
				$.post(this.util.apiPath +'/zhixines/api/jiaofei/check_cost',dataCheck, function(dd) {
					//console.log(.datas.state);
					if(JSON.parse(dd).datas.state===false){/*未开通内部支付进入银联支付*/
						me.titleName.set('电费');
						var data = {
								id : "电费", 
								lid : user.lid
						};
						$.post(me.util.apiPath +'/zhixines/api/jiaofei/bianmin',data, function(d) {
							if(d.s==false){
								me.util.showPop('暂未开放！');
								return false
							}
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
//				if(user.is_auth_name!='1'){
//		//			this.util.showPop("该服务目前仅对指定小区的认证住户开通");
//					$('[xid=ykrzpopOver]').show();
//					return false;
//				}
				
				var me=this;
				var dataCost = {
						cost_type : "5", //cost_type 0 物业费 1 水费 2 垃圾费 3 停车费 4 电费 5 气费
						lp_id : user.lid
				};
				//查询易软的接口是否有电费、气费信息，如果没有直接跳转到便民服务。
				$.post(this.util.apiPath +'/zhixines/api/jiaofei/check_cost',dataCost, function(dq) {
					//console.log(JSON.parse(dq).datas.state)
					if(JSON.parse(dq).datas.state===false){/*走的银联通道*/
						me.titleName.set('气费');
						var data = {
								id : "气费", 
								lid : user.lid
						};
						$.post(me.util.apiPath +'/zhixines/api/jiaofei/bianmin',data, function(d) {
							if(d.s==false){
								me.util.showPop('暂未开放！');
								return false
							}
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
							async : false,
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
//				if(user.is_auth_name!='1'){
//		//			this.util.showPop("该服务目前仅对指定小区的认证住户开通");
//					$('[xid=ykrzpopOver]').show();
//					return false;
//				}
				var data = {
						id : "电信宽带",
						lid : user.lid
				};
				var me=this;
				$.post(this.util.apiPath +'/zhixines/api/jiaofei/bianmin',data, function(d) {
		//			window.open(d.url,'_system');
					if(d.s==false){
						me.util.showPop('暂未开放！');
						return false;
					}
					me.titleName.set('电信宽带');
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
//				if(user.is_auth_name!='1'){
//		//			this.util.showPop("该服务目前仅对指定小区的认证住户开通");
//					$('[xid=ykrzpopOver]').show();
//					return false;
//				}		
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
					me.titleName.set('汽车票');
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
//				if(user.is_auth_name!='1'){
//		//			this.util.showPop("该服务目前仅对指定小区的认证住户开通");
//					$('[xid=ykrzpopOver]').show();
//					return false;
//				}		
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
					me.titleName.set('手机充值');
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
//				if(user.is_auth_name!='1'){
//		//			this.util.showPop("该服务目前仅对指定小区的认证住户开通");
//					$('[xid=ykrzpopOver]').show();
//					return false;
//				}		
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
					me.titleName.set('交通违章');
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

	return Model;
});