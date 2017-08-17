define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
		this.cuxiao = justep.Bind.observable("");//默认促销
		this.yxgg = justep.Bind.observable('');//默认规格
		this.gwcCount = justep.Bind.observable('');//购物车数量		
		this.ggmoney = justep.Bind.observable('');//弹框金额
	};
	
	//通过判断系统来改变购物车数量样式
	//判断是否为IOS
	var jianrong=function(){
		var ua = navigator.userAgent.toLowerCase();	
		if (/iphone|ipad|ipod/.test(ua)) {
				console.log("iphone");	
				$('[xid=span15]').css({'padding':'0 0.1rem','lineHeight':'0.2rem'});
		} else if (/android/.test(ua)) {
				console.log("android");	
		}
	};
 	//	定义函数请求-----------------------------------------------------
	$(document).ajaxStart(function() {
		$('[xid=loadpopOver]').show();
	});
	$(document).ajaxStop(function() {
		$('[xid=loadpopOver]').hide();
	});
	$(document).ajaxError(function() {
		$('[xid=loadpopOver]').hide();
//		$('[xid=Overlineerror]').show();
	});
	//请求出错
	Model.prototype.denglu = function(event){
//		justep.Shell.showPage(require.toUrl('./login.w'));
		window.location.reload();
	};
	//	定义函数请求-----------------------------------------------------
	//	定义函数
	var common = require("../js/common");
	Model.prototype.util = common;
	var user = justep.Shell.user.get();//获取缓存用户表信息数据
	var arr=[];//规格数组
	var goods_spec;//选择规格
	var goods_specYN;//是否有规格 yes no
	var goodsid;//传递过来的ID参数，刷新推荐商品时候从新赋值
	var goodsidYN;//是否是点击推荐刷新的详情 yes no,默认为NO
	//
	Model.prototype.modelLoad = function(event){
		arr=[];
//		goodsid=this.params.goodsId;//传递过来的ID参数，刷新推荐商品时候从新赋值
		jianrong();
	};
	Model.prototype.modelParamsReceive = function(event){
//		console.log(event.params.jishida)
		this.comp('detailData').refreshData();
	};
	
	var timer;//定时器名称
	var degree=0;//高度变量
	function a(){
		clearInterval(timer);
		degree=0;
	}

	//被挤掉
	Model.prototype.denglu = function(event){
//		justep.Shell.showPage(require.toUrl('./login.w'));
		window.location.reload();
	};
    //消息推送----------------------- 
	//加载推荐商品
	Model.prototype.tuijianDataCustomRefresh = function(event){
//		alert(goodsid);
		var url = this.util.shopPath+'/mobile/index.php?act=index&op=getFavoriteGoodsList',me=this;
		$.ajax({
			url : url,
			data : {loupan_id : user.lid, key : localStorage.getItem('vv')},
			async :false,
			dataType : 'json',
			type: 'post',
			success : function(e){
//				console.log(e.datas);
				me.comp('tuijianData').loadData(e.datas);
			}
		});		
	};
	Model.prototype.detailDataCustomRefresh = function(event){
//		goodsid=this.params.goodsId;
//		alert(this.params.goodsId)
		var me=this;
		if(goodsidYN=='yes'){
			var datas = {
				key : localStorage.getItem('vv'),//'c229788b27b907fe759a01bba3d02ac5',
				goods_id :goodsid ,//'100281'
				loupan_id : user.lid,
			};
			goodsid=goodsid;
		}
		if(goodsidYN!='yes'){
			var datas = {
				key : localStorage.getItem('vv'),//'c229788b27b907fe759a01bba3d02ac5',
				goods_id :me.params.goodsId, //'100281'
				loupan_id : user.lid,
			};
			goodsid=me.params.goodsId;	
		}
		var url = this.util.shopPath+'/mobile/index.php?act=goods&op=goods_detail',me=this;
		$.ajax({
			url : url,
			async :false,
			data : datas,
			dataType : 'json',
			type: 'post',
			success : function(e){
//				console.log(e.datas.goods_info);
				if(!e.datas.error){
					localStorage.setItem('detailMobile', e.datas.store_info.store_phone);//客服电话
					if(e.datas.sales_promotion.info!=null){
						me.cuxiao.set(e.datas.sales_promotion.info);
					}else{
						me.cuxiao.set('该商品暂无促销活动');
					}
					if(e.datas.current_goods_spec.length>0){
						me.yxgg.set(e.datas.current_goods_spec);
					}else{
						me.yxgg.set('默认规格');
					}
					if(e.datas.goods_spec.length=='0'){
//						
						/*长度为0则此产品无规格*/
	//					$('[xid=div12gg]').hide();
						goods_specYN='no';
						goods_spec=me.params.goodsId;
					}else{
//						
						goods_specYN='yes';
//						alert('有规格')
					}
	//				console.log(e.datas.current_goods_spec.length);
//					console.log(e.datas.goods_spec.spec_value);
					try {
						if(e.datas.goods_spec.spec_value==undefined){$('[xid=row4guige]').hide();$('[xid=p29guige]').hide();};
						me.comp('detailData').loadData(e.datas.goods_info);
						me.comp('guigeData').loadData(e.datas.goods_spec.spec_value);
						
						me.ggmoney.set('￥'+e.datas.goods_info[0].goods_price);
					} catch (e) {
						// TODO: handle exception
						console.log(e);
					}
									
				}else{
					me.util.showPop(e.datas.error);
				}
			}
		});
	};

	//选择规格
	Model.prototype.li3Click = function(event){
		//console.log(event.target);
		//清空样式
		$('[xid=li3ggColor]').css({'background-color': '#999999','color': '#333333'});
		//判断点击的目标设置当前样式
		event.target.tagName=="SPAN"?event.target.parentNode.style.backgroundColor='#ff9933':event.target.style.backgroundColor='#ff9933';
		event.target.style.color='#fff';
		var row = event.bindingContext.$object;
		this.comp('guigeData').setValue("state",'0');
		row.val("state",'1');
		var guigeData = this.comp("guigeData");
		var goodsRows = guigeData.find([ "state" ], [ "1" ]);
//		console.log(goodsRows.length);	
		for(var i=0;i<goodsRows.length;i++){
			arr[i]=goodsRows[i].row.goods_spec.value.latestValue
//			console.log(arr[i]);
		}
		goodsid=row.val("goods_id");//规格对应商品
//		'￥'+$model.detailData.val("goods_price")this.ggmoney.set('￥'+$model.detailData.val("goods_price"));
		this.ggmoney.set('￥'+row.val("goods_price"));
//		debugger;
		
	};


	Model.prototype.addBtnClick = function(event){
		/*
		 *增加数量按钮绑定点击事件onClick() 
		*/
		var row = event.bindingContext.$object;
		var n = row.val("num");
//		if (n > 1) {
			row.val("num", n + 1);
//		}
	};


	Model.prototype.reductionBtnClick = function(event){
		/*
		 * 1、减少数量按钮绑定点击事件onClick() 2、点击按钮，当前记录的quantity值减1 3、quantity为1时不再相减
		 */
		var row = event.bindingContext.$object;
		var n = row.val("num");
		if (n > 1) {
			row.val("num", n - 1);
		}
	};

	//立即购买
	Model.prototype.buttonquerenClick = function(event){
//		console.log(arr+'参数'+$('[xid=span20count]').text()+'41514515'+$('[xid=div12gg]').height())
		if($('[xid=div12gg]').height()=='0'){
			$('[xid=div12gg]').stop(false,true).show().animate({'height':"20em"});
			$('[xid=div6pop]').show();
		}
		if($('[xid=div12gg]').height()>'0'){
//			console.log(arr.length>0||goods_specYN=='yes');
			if(goods_specYN=='yes'){//是否有规格 yes no				
				if(arr.length>0){
//					$('[xid=imagelogo]').stop(false,true).animate({'top':"50em","width":"2em",'left':'6em','display':'block'},'normal','swing',function(){
//						$('[xid=imagelogo]').css({'top':"0em","width":"100%",'left':'0em','display':'none'});
//					});
//					$('[xid=div12gg]').stop(false,true).hide().animate({'height':"0em"},'8000');
//					alert(goods_spec);
	//				alert(this.comp('countData').val('num'));
					$('[xid=div12gg]').stop(false,false).animate({'height':"0em"},function(){$('[xid=div12gg]').hide();$('[xid=div6pop]').hide();});
					justep.Shell.showPage(require.toUrl('./order.w'),{
						goodsId : goodsid,
						ifcartcount : this.comp('countData').val('num'),
						ifcart : '0',//购物车购买标志： 1；立即购买：0
					});
//					arr='';//跳转的时候清空上次的选择规格

				}else{
					this.util.showPop('请选择规格！');
				}	
			}else{
				$('[xid=div12gg]').stop(false,false).animate({'height':"0em"},function(){$('[xid=div12gg]').hide();$('[xid=div6pop]').hide();});
				justep.Shell.showPage(require.toUrl('./order.w'),{
						goodsId : goodsid,
						ifcartcount : this.comp('countData').val('num'),
						ifcart: '0',//购物车购买标志： 1；立即购买：0
//						address_id : address_id,
//						freight_hash : freight_hash
				});
				
			}//是否有规格 yes no	
		}
	};
	//加入购物车
	Model.prototype.buttonzaicigoumaiClick = function(event){
		//console.log(goods_spec);
		//console.log($('[xid=div12gg]').height());
		this.comp('carCount').refreshData();
		var me=this;
		if($('[xid=div12gg]').height()=='0'){
			$('[xid=div12gg]').stop(false,true).show().animate({'height':"20em"});
			$('[xid=div6pop]').show();
		}
		if($('[xid=div12gg]').height()>'0'){
			if(goods_specYN=='yes'){//是否有规格 yes no	
				if(arr.length>0){
					$('[xid=div3carcount]').stop(false,true).animate({'top':"-0.5em"},'normal','swing',function(){
						$('[xid=div3carcount]').css({'top':"0em"},'normal','swing',function(){
						});
					});
//					$('[xid=imagelogo]').stop(false,true).animate({'top':"50em","width":"2em",'left':'6em','display':'block'},'normal','swing',function(){
//						$('[xid=imagelogo]').css({'top':"0em","width":"100%",'left':'0em','display':'none'});
//					});
					$('[xid=div12gg]').stop(false,true).hide().animate({'height':"0em"},'8000',function(){$('[xid=div6pop]').hide();});
					/*---------------------------------
						加入购物车
					---------------------------*/
					var datap={
						goods_id : goodsid,
						quantity : this.comp('countData').val('num'),
						key : localStorage.getItem('vv'),//'c229788b27b907fe759a01bba3d02ac5',
					};
					$.ajax({
						url : me.util.shopPath+'/mobile/index.php?act=member_cart&op=cart_add',
						async : false,
						dataType: 'json',
						type: 'post',
						data : datap,
						success:function(e){
	//						console.log(e.datas);
							if(e.datas=='1'){
								var urldata = me.comp("carCount");
								var int = parseInt(me.comp('carCount').val('cart_count'))+parseInt(me.comp('countData').val('num'));
								urldata.clear();
								urldata.newData({
									"defaultValues" : [ {
										"cart_count" : int,
									} ]
								});
//								arr='';//跳转的时候清空上次的选择规格
							}else{
								me.util.showPop(e.datas.error);
							}
						},
						error:function(e){
							
						}
					});
				}else{
					this.util.showPop('请选择规格！')
				}
			}else{
					$('[xid=div3carcount]').stop(false,true).animate({'top':"-0.5em"},'normal','swing',function(){
						$('[xid=div3carcount]').css({'top':"0em"},'normal','swing',function(){
						});
					});
					$('[xid=div12gg]').stop(false,true).hide().animate({'height':"0em"},'8000',function(){$('[xid=div6pop]').hide();});
					/*---------------------------------
						加入购物车
					---------------------------*/
					var datap={
						goods_id : goodsid,
						quantity : this.comp('countData').val('num'),
						key : localStorage.getItem('vv'),//'c229788b27b907fe759a01bba3d02ac5',
					};
					$.ajax({
						url : me.util.shopPath+'/mobile/index.php?act=member_cart&op=cart_add',
						async : false,
						dataType: 'json',
						type: 'post',
						data : datap,
						success:function(e){
	//						console.log(e.datas);
							if(e.datas=='1'){
								var urldata = me.comp("carCount");
								var int = parseInt(me.comp('carCount').val('cart_count'))+parseInt(me.comp('countData').val('num'));
								urldata.clear();
								urldata.newData({
									"defaultValues" : [ {
										"cart_count" : int,
									} ]
								});	
							}else{
								me.util.showPop(e.datas.error);
							}
						},
						error:function(e){
							
						}
					});	
			}//是否有规格 yes no			
		}
	};
	//隐藏
	Model.prototype.image9Click = function(event){
		timer=setInterval(function(){
//			console.log(degree);
			degree = degree + 550 * Math.PI / 179;
			$('[xid=image9closedetail]').css("transform","rotate("+degree+"deg)");	
			if(degree>180){
				$('[xid=div12gg]').stop(false,false).animate({'height':"0em"},function(){$('[xid=div12gg]').hide();$('[xid=div6pop]').hide();});
				a();
			}
//			console.log(degree);
			if(degree>540){
//				a();
//				$('[xid=div12gg]').stop(false,false).animate({'height':"0em"},function(){$('[xid=div12gg]').hide()});		
			}
		},20);

		
	};

	Model.prototype.carCountCustomRefresh = function(event){
		var url=this.util.shopPath+'/mobile/index.php?act=member_cart&op=cart_count',me=this;
		var datass={
			key : localStorage.getItem('vv'),//'c229788b27b907fe759a01bba3d02ac5'
		};
		$.ajax({
			url: url,
			dataType:'json',
			data: datass,
			async: false,
			type: 'post',
			success: function(e){
//				var jsonArr=e.datas.cart_count;
				if(e.datas.cart_count>=0){
//					me.gwcCount.set(e.datas.cart_count);
					$('[xid=div3carcount]').show();
//					console.log(e.datas.cart_count);
					var urldata = me.comp("carCount");
					urldata.clear();
					urldata.newData({
						"defaultValues" : [ {
							"cart_count" : e.datas.cart_count,
						} ]
					});			
				}else{
					$('[xid=div3carcount]').hide();
				}
				 
//				me.comp('carCount').refreshData();
			}
		});
	};
	//进入购物车
	Model.prototype.button13Click = function(event){
		justep.Shell.showPage(require.toUrl('./car.w'));
	};
	//产品参数
	Model.prototype.spxqDetailClick = function(event){
		$('[xid=detailsContent]').scrollTop(650);
	};
	Model.prototype.detailsBtnClick = function(event){
		$('[xid=detailsContent]').scrollTop(0);
	};
	//进入推荐商品详细页
	Model.prototype.li1Click = function(event){
		var row = event.bindingContext.$object;
		goodsid=row.val('goods_id');
//		goods_spec=row.val('goods_id');
//		console.log(goods_spec)
		goodsidYN='yes';
//		arr='';//跳转的时候清空上次的选择规格
		this.comp('guigeData').clear();
		this.comp('detailData').refreshData();
		this.comp('guigeData').refreshData();
		this.comp('tuijianData').refreshData();
	};


	Model.prototype.backBtnClick = function(event){
		goodsidYN='';
//		arr='';//跳转的时候清空上次的选择规格
		justep.Shell.closePage();
	};

	//电话打电话
	Model.prototype.button12Click = function(event){
		console.log(!localStorage.getItem('detailMobile'));
		if(!localStorage.getItem('detailMobile')){
		//客服电话
			this.util.showPop('暂无客服电话！');			
		}else{
			window.location.href = 'tel:' + localStorage.getItem('detailMobile');
		}
	};


	Model.prototype.modelActive = function(event){
		$('[xid=li3ggColor]').css({'background-color': '#999999','color': '#333333'});
		arr=[];
		this.comp('carCount').refreshData();
		this.comp('guigeData').refreshData();
		var cdata=this.comp('countData');
		var row=cdata.getLastRow();
		cdata.setValue("num", "1", row);
	};


	return Model;
});