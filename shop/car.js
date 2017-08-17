define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Model = function(){
		this.callParent();
		
	};
	//	定义函数
	var common = require("../js/common");
	Model.prototype.util = common;
	//被挤掉
	Model.prototype.denglu = function(event){
//		justep.Shell.showPage(require.toUrl('./login.w'));
		window.location.reload();
	};
	
	//判断是否为IOS
	var shiying=function(){
		var ua = navigator.userAgent.toLowerCase();	
		if (/iphone|ipad|ipod/.test(ua)) {
			    $('[xid=button2]').css({'top':'-0.03rem','left':'0.04rem'});
			    //span33
			    $('[xid=span33]').css({'top':'-0.05rem'});
			    $('[xid=button4]').css({'top':'-0.05rem','left':'-0.04rem'});
		} else if (/android/.test(ua)) {
		}
	}
	
    //消息推送----------------------- 	
	Model.prototype.modelLoad = function(event){
		shiying();
//		var url = this.util.shopPath+'/mobile/index.php?act=member_cart&op=cart_list_new&key='+localStorage.getItem('vv'),me=this;
////		var url = this.util.shopPath+'/mobile/index.php?act=member_cart&op=cart_list_new&key=c229788b27b907fe759a01bba3d02ac5',me=this;
//		var datas = {
//			
//		};
//		$.ajax({
//			url : url,
//			dataType: 'json',
//			type : 'post',
//			async : false,
//			success : function(e){
////				console.log()
//				if(e.datas.cart_list.store.length==0){
//					$('[xid=div3carlengthnull]').show();
//					$('[xid=bottom1carlengthnull]').hide();
//				}
//				try {
////					console.log(e.datas.cart_list.goods)
//					me.comp('goodsData').loadData(e.datas.cart_list.goods);
//					me.comp('shopData').loadData(e.datas.cart_list.store);
//				} catch (es) {
//					// TODO: handle exception
//					me.util.showPop('error:load异常');
//				}
//				
//			}
//		});
	};	
	Model.prototype.goodsDataCustomRefresh = function(event){
		var url = this.util.shopPath+'/mobile/index.php?act=member_cart&op=cart_list_new&key='+localStorage.getItem('vv'),me=this;
//		var url = this.util.shopPath+'/mobile/index.php?act=member_cart&op=cart_list_new&key=c229788b27b907fe759a01bba3d02ac5',me=this;
		var datas = {
			
		};
		$.ajax({
			url : url,
			dataType: 'json',
			type : 'post',
			async : false,
			success : function(e){
//				console.log()
				if(e.datas.cart_list.store.length==0){
					$('[xid=div3carlengthnull]').show();
					$('[xid=bottom1carlengthnull]').hide();
				}
				try {
//					console.log(e.datas.cart_list.goods)
					me.comp('goodsData').loadData(e.datas.cart_list.goods);
					me.comp('shopData').loadData(e.datas.cart_list.store);
				} catch (es) {
					// TODO: handle exception
					me.util.showPop('error:load异常');
				}
				
			}
		});
	};
	Model.prototype.shopDataCustomRefresh = function(event){
		var url = this.util.shopPath+'/mobile/index.php?act=member_cart&op=cart_list_new&key='+localStorage.getItem('vv'),me=this;
//		var url = this.util.shopPath+'/mobile/index.php?act=member_cart&op=cart_list_new&key=c229788b27b907fe759a01bba3d02ac5',me=this;
		var datas = {
			
		};
		$.ajax({
			url : url,
			dataType: 'json',
			type : 'post',
			async : false,
			success : function(e){
//				console.log()
				if(e.datas.cart_list.store.length==0){
					$('[xid=div3carlengthnull]').show();
					$('[xid=bottom1carlengthnull]').hide();
				}
				try {
//					console.log(e.datas.cart_list.goods)
					me.comp('goodsData').loadData(e.datas.cart_list.goods);
					me.comp('shopData').loadData(e.datas.cart_list.store);
				} catch (es) {
					// TODO: handle exception
					me.util.showPop('error:load异常');
				}
				
			}
		});
	};
	//返回上一页
	Model.prototype.backBtnClick = function(event){
		justep.Shell.closePage();
		setTimeout(function(){
			justep.Shell.fireEvent("onRestoreContent", {});
		},500);
	};
	
//	//图片路径转换
//	Model.prototype.getImageUrl = function(url){
//		return require.toUrl(url);
//	};

	//全选
	Model.prototype.allChooseChange = function(event){
		/*
		1、全选多选框绑定变化事件onChange()
		2、点击全选多选框按钮，获取其值
		3、修改商品表中的fChoose字段为全选多选框按钮的值
		*/
		var goodsData = this.comp("goodsData");
		var choose=this.comp("allChoose").val();
		goodsData.each(function(obj){
			if(choose){				
				goodsData.setValue("fChoose","1",obj.row);
			} else {
				goodsData.setValue("fChoose","",obj.row);
			}	
		});
	};
	
	//减数量
	Model.prototype.reductionBtnClick = function(event){		
		/*
		1、减少数量按钮绑定点击事件onClick()
		2、点击按钮，当前记录的fNumber值减1
		3、fNumber为1时不再相减
		*/
		var row = event.bindingContext.$object;
		var n=row.val("goods_num");
//		console.log(n)
		
		var url = this.util.shopPath+'/mobile/index.php?act=member_cart&op=cart_edit_quantity',me=this;
		var datas = {
			key : localStorage.getItem('vv'),//'c229788b27b907fe759a01bba3d02ac5',
			cart_id	:row.val("cart_id"),	
			quantity:n-1,
		};
		$.ajax({
			url : url,
			dataType: 'json',
			type : 'post',
			data:datas,
			async : false,
			success : function(e){
//				console.log(e);
				if(!e.datas.error){
					if(n>1){
						row.val("goods_num",n-1);
					}
				}else{
					me.util.showPop(e.datas.error);
				}
			}
		});
	};
	
	//加数量
	Model.prototype.addBtnClick = function(event){
		/*
		1、增加数量按钮绑定点击事件onClick()
		2、点击按钮，当前记录的fNumber值加1
		*/
		var row = event.bindingContext.$object;
		var n=row.val("goods_num");

//		console.log(n)
		var url = this.util.shopPath+'/mobile/index.php?act=member_cart&op=cart_edit_quantity',me=this;
		var datas = {
			key : localStorage.getItem('vv'),//'c229788b27b907fe759a01bba3d02ac5',
			cart_id	:row.val("cart_id"),	
			quantity:n+1,
		};

		$.ajax({
			url : url,
			dataType: 'json',
			type : 'post',
			data:datas,
			async : false,
			success : function(e){
//				console.log(e);
				if(e.datas.quantity<n+1){
					row.val("goods_num",e.datas.quantity);
				}
				if(!e.datas.error){
					row.val("goods_num",n+1);
				}else{
					me.util.showPop(e.datas.error);
				}
			}
		});
	};
	
	//删除
	Model.prototype.delet = function(event){
		var row = event.bindingContext.$object;
//		console.log(row.children())
//		var storeId=row.val("store_id");
		
		var goodsData = this.comp("goodsData"),me=this;
//		console.log(row.val('cart_id'))
//		$.ajax({
//			url: this.util.shopPath+''
//		})
		/*
		1、删除按钮点击事件
		2、删除选中商品
		3、如果商店里已经没有商品，则删除商店
		*/
		goodsData.deleteData(row);	
		var shopData = this.comp("shopData");
		var shopRows = new Array();
		shopData.deleteData(shopRows);
		shopData.each(function(obj) {
			var n = goodsData.find([ "store_id" ], [ obj.row.val("store_id") ]).length;
			if (n == 0) {
				shopRows.push(obj.row);
			}
		});
		shopData.deleteData(shopRows);
		var Pdata = {
			key : localStorage.getItem('vv'),
			cart_id : row.val('cart_id') 
		};
		$.ajax({
			url : me.util.shopPath+'/mobile/index.php?act=member_cart&op=cart_del',
			data : Pdata,
			dataType : 'json',
			type : 'post',
			async : false,
			success : function(e){
				if(!e.datas.error){
					me.util.showPop('删除成功');
				}else{
					me.util.showPop(e.datas.error);
				}				
			}
		});
	};
	Model.prototype.delBtnClick = function(event){
		/*
		1、删除按钮点击事件
		2、删除选中商品
		3、如果商店里已经没有商品，则删除商店
		*/
		var goodsData = this.comp("goodsData");
		var goodsRows = goodsData.find(["fChoose"],["1"]);
		goodsData.deleteData(goodsRows);
  
		var shopData = this.comp("shopData");
		var shopRows = new Array();
		shopData.each(function(obj){
			var n = goodsData.find(["fShopID"],[obj.row.val("id")]).length; 
			if(n == 0){
				shopRows.push(obj.row);
			}
		});    
		shopData.deleteData(shopRows);  
	};
	
	/*关闭弹框*/
	Model.prototype.button6Clickcancle = function(event){
		$('[xid=ykrzpopOvercar]').hide();
	};
	Model.prototype.button7Clicklikerenz = function(event){
		justep.Shell.showPage(require.toUrl('../user/add-dizhi.w'));
		$('[xid=ykrzpopOvercar]').hide();
	};
		
	Model.prototype.showBackBtn = function(isBack){
		/*
		1、根据参数修改calculateData
		 */		
		this.isBack = isBack;
		var v = isBack ? 1 : 0;
		this.comp("calculateData").setValue("isBack",v);		
	};
	
	//结算事件
	Model.prototype.settlementClick = function(event){
		/*
		1、结算按钮点击事件
		2、打开订单确认页面
		3、点击确认按钮，选择支付方式
		4、进入支付成功页面
		*/		
		var ary = "";
//		debugger;
		var user = justep.Shell.user.get();
		var goodsData = this.comp("goodsData");
		var goodsRows = goodsData.find([ "fChoose" ], [ "1" ]);
		if(goodsRows.length>0){
			for (var i = 0; i < goodsRows.length; i++) {
				ary +=goodsRows[i].row.cart_id.value.latestValue + "|" + goodsRows[i].row.goods_commend.value.latestValue + ",";
			}
		}
		var len=ary.length;
		var arr=ary.substring(0,len-1);
		if(ary.length>0){
			var url = this.util.shopPath+'/mobile/index.php?act=member_buy&op=buy_step1',me=this;
			var datas = {
				key : localStorage.getItem('vv'),//'c229788b27b907fe759a01bba3d02ac5',
				cart_id	:arr,	
				ifcart:1,
			};
			$.ajax({
				url : url,
				dataType: 'json',
				type : 'post',
				data:datas,
				async : false,
				success : function(e){
					if(!e.datas.error){	
						justep.Shell.showPage(require.toUrl("../shop/order.w"),{
								goodsId : arr,
		//						ifcartcount : this.comp('countData').val('num'),
								ifcart: '1',//购物车购买标志： 1；立即购买：0
		//						address_id : address_id,
		//						freight_hash : freight_hash
						});				
					}else{
//						me.util.showPop(e.datas.error);
						if(e.datas.error=="no_address"){
							$('[xid=ykrzpopOvercar]').show();
//						return false;
						}else{
							me.util.showPop(e.datas.error);
							return false;
						}
					}
				}
			});
		}else{
			this.util.showPop('暂无商品');
		}
	};

	Model.prototype.listClick = function(event){
		/*
		 1、获取当前商品ID
		 2、传入弹出窗口，弹出窗口中显示商品详细信息
		 3、在弹出窗口的接收事件中，从服务端过滤数据
		*/
		var row = event.bindingContext.$object;
		var data=this.comp("goodsData");
//		alert( row.val('goods_id'));
		justep.Shell.showPage(require.toUrl("./detail.w"), {
			goodsId : row.val('goods_id'),
//			shopID : data.getValue("fShopID")
		});
	};

	var num;
//	var numstart=0;

	var numstart
	var numend;
	var obj = document.getElementById('allBoxcar');	
//滑动删除
	//监听开始
	Model.prototype.MoveFanHuiTouch=function(event){
//		var num=0;
//		debugger;
		if (event.targetTouches.length == 1) {
//			event.preventDefault();// 阻止浏览器默认事件，重要 
	        var touch = event.targetTouches[0];
	        // 把元素放在手指所在的位置
	        numstart=touch.clientX;
	        numend=touch.clientX;
	     }
	};
	//监听结束
	Model.prototype.MoveFanHuiTouchO=function(event){
//		var num=0;
//		var obj = document.getElementById('allBoxcar');
//		console.log(event.targetTouches.length);
		if (event.targetTouches.length == 1) {
//			event.preventDefault();// 阻止浏览器默认事件，重要 
	        var touchs = event.targetTouches[0];
	        // 把元素放在手指所在的位置
	        numend=touchs.clientX;
	     }
	     
	};
	Model.prototype.li4Touchstart = function(event){
		var obj = document.getElementById('allBoxcar');
		obj.addEventListener('touchstart', this.MoveFanHuiTouch, false);	
	};
	Model.prototype.li4Touchend = function(event){
		var obj = document.getElementById('allBoxcar');
		var row = event.bindingContext.$object;
		obj.addEventListener('touchmove', this.MoveFanHuiTouchO, false);
		var target = $(event.target.closest('[xid=goodsRow]'));
		if((numstart-numend)>'50'){
			var row = event.bindingContext.$object;
			target.addClass("move-left");
		    target.addClass("move");
			var n=row.val('virtual_limit',"5");	
		}
		if((numstart-numend)<'-50'){
			var row = event.bindingContext.$object;
			target.removeClass("move");
			target.removeClass("move-left");
			var n=row.val('virtual_limit',"0");
		}
	};
	Model.prototype.li4Touchmove = function(event){
//		var obj = document.getElementById('allBoxcar');
//		obj.addEventListener('touchmove', this.MoveFanHuiTouchO, false);
////		var width=0;
//		if((numstart-numend)>'50'){
//			console.log(numstart-numend)
//			var row = event.bindingContext.$object;
////			setTimeout(function(e){width++},20)
//			var n=row.val('virtual_limit',"5");
//		}else{
////			console.log('right')
//			var row = event.bindingContext.$object;
//			var n=row.val('virtual_limit',"0");
//		}
	};

	Model.prototype.span9Click = function(event){
		localStorage.setItem('tips','0');
		$('#span99').hide();
		var url = require.toUrl('../user/entermsg.w');
		justep.Shell.showPage(url,{
			
		});
	};

	Model.prototype.modelActive = function(event){
		this.comp('goodsData').refreshData();
		this.comp('shopData').refreshData();
		this.comp('calculateData').refreshData();
	};
//标题编辑
	Model.prototype.editBtnClick = function(event){
		
	};
	//数据发生变化
	Model.prototype.calculateDataDataChange = function(event){
//		debugger;
		var lengthnum = this.calculateData.allDatas.latestValue[0].row.allNumber.value.latestValue;
		if(lengthnum>0){
			document.getElementById('no-choose-btnorder').style.backgroundColor = '#7bc83e';
		}else{
			document.getElementById('no-choose-btnorder').style.backgroundColor = '#e3e3e3';
//			this.comp('allChoose').set({
//				'checked' : 'true'
//			});
//			$("input[name='allChoose']").prop('checked',false);
			
		}
		var goodsData = this.comp("goodsData");
		var number=0,me=this;
		goodsData.each(function(obj){
			if(obj.row.val('fChoose') == '1'){
				number++;
			}	
		});
//		console.log(number==this.comp('goodsData').allDatas.latestValue.length)
		if(number==this.comp('goodsData').allDatas.latestValue.length){
//			me.comp('allChoose').set({
//				'checked' : 'true'
//			});
			$("input[name='allChoose']").prop('checked','checked');
		}else{
//			$('[xid=allChoose]').attr('checked','true')
			$("input[name='allChoose']").prop('checked',false);
		}
	};	

	Model.prototype.checkbox1Click = function(event){

	};	

	return Model;
});