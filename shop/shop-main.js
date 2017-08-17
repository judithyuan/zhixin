define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	//通过判断系统来改变购物车数量样式
	//判断是否为IOS
	var jianrong=function(){
		var ua = navigator.userAgent.toLowerCase();	
		if (/iphone|ipad|ipod/.test(ua)) {
				console.log("iphone");	
				$('[xid=span15]').css({'lineHeight':'0.2rem'});
		} else if (/android/.test(ua)) {
		    	console.log("android");	
		}
	};
	var Model = function(){
		this.callParent();
		var obj = document.getElementById('left1shop');
		obj.addEventListener('touchmove',this.wingSlide, false);
//		obj.addEventListener('touchend',function(){offset=[];document.getElementById("left1shop").style.paddingRight = window.innerWidth*0.4+'px'}, false);
	};
	var offset=[];
	Model.prototype.wingSlide=function(e){
//		e = e || window.event;
//		e.touches.clientX
//		mouse.x = e.pageX || 1;
//		mouse.y = e.pageY || 1;
		offset.push(e.touches[0].clientX);
		function sortNumber(a,b){return a - b;}
//		console.log(window.innerWidth*0.4-(offset[offset.length-1]-offset[0]));
//		document.getElementById("left1shop").style.paddingRight = '10px'
//		if(offset[offset.length-1]-offset[0]<0){document.getElementById("left1shop").style.paddingRight = window.innerWidth*0.4-(offset[offset.length-1]-offset[0])*10+'px'}
	};	
 	//	定义函数请求-----------------------------------------------------
	$(document).ajaxStart(function() {
//		$('[xid=loadpopOver]').show();
	});
	$(document).ajaxStop(function() {
//		$('[xid=loadpopOver]').hide();
	});
	$(document).ajaxError(function() {
//		$('[xid=loadpopOver]').hide();
//		$('[xid=Overlineerror]').show();
	});
	//请求出错
	Model.prototype.denglu = function(event){
//		justep.Shell.showPage(require.toUrl('./login.w'));
		localStorage.setItem('x5Version + introPage','yes');
		window.location.reload();
	};
	//	定义函数请求-----------------------------------------------------
//	定义函数
	var common = require("../js/common");
	Model.prototype.util = common;
	var user = justep.Shell.user.get();//获取缓存用户表信息数据\
	//消息推送
	$(function(){
		var ws = io.connect(common.ioPath);
//		console.log(common.ioPath);
//		var ws = io.connect("http://zhixin-noticedev.kuju360.com");
		ws.on('messages', function (data){ //初始消息队列
		});		
		ws.on('open', function (){//连接成功
			//ws.emit('send', user.id);
			//与服务器建立了连接
	 	}); 
	    ws.on('get', function (data){//接收消息 
//	    	console.log(data);
//	    	try {
	    		if(data.body.v!=localStorage.getItem('vv')&&user.id==data.body.user_id&&data.body.v!=undefined){
	    			$('[xid=livelineOver]').show();
	    			//justep.Shell.showPage(require.toUrl('../main.w'));	
				}
				if(data.type == 'systemmsg'){
					if(data.body.lp_id == user.lid){
						$('#span99').show();
						localStorage.setItem('tips','1');
					}
				}else if(data.type == 'prvmsg'){
					if(data.body.user_id == user.id){
						$('#span99').show();
						localStorage.setItem('tips','1');
					}
				}				
//			} catch (e) {
				// TODO: handle exception
//				console.log(e); 
//			}
			
	    });
    }); 
	//被挤掉
	Model.prototype.denglu = function(event){
//		justep.Shell.showPage(require.toUrl('./login.w'));
		window.location.reload();
	};
    //消息推送----------------------- 	
	Model.prototype.modelModelConstruct = function(event){
		/*
		 * 1、数据模型创建时事件 2、加载静态图片或从缓存中加载图片
		 */
		var carousel = this.comp("carouselshop");

		var fImgUrl = localStorage.getItem("index_BannerImg_srcshop");
		if(fImgUrl == undefined){
			$(carousel.domNode).find("img").eq(0).attr({
				"src" : "",
				"pagename" : "./detail.w"
			});
		}else{
			var fUrl = localStorage.getItem("index_BannerImg_url");
			$(carousel.domNode).find("img").eq(0).attr({
				"src" : fImgUrl,
				"pagename" : fUrl
			});
		}
		/*
		 * 1、搜索关键词搜索
		 */
		$("#searchshopmain").on('keypress',function(e) {  
                var keycode = e.keyCode;  
                var searchName = $(this).val();  
                if(keycode=='13') {  
                    e.preventDefault();    
                    //请求搜索接口  
//                     alert(searchName);
                    sessionStorage.setItem('keywordscook', $(this).val());
                    justep.Shell.showPage(require.toUrl('./detailList.w'),{
                    	keyword : searchName
                    }) ;
                }  
        }); 
	};

	Model.prototype.modelLoad = function(event){
		console.log(user);
		jianrong();
		var me=this;
		var url = this.util.shopPath +'/mobile/index.php?act=index';
		var datas = {
			key : localStorage.getItem('vv'),
			loupan_id : user.lid
		};
		$.ajax({
			url : url,
			data : datas,
			dataType : 'json',
			type : 'post',
			async : false,
			success : function(e){
//				console.log(e.datas.index_category);
				me.comp('navData').loadData(e.datas.index_category);
				if(e.datas.timely_goods){
//					console.log(e.datas.timely_goods[0].home3.item);//社区及时达
					if(e.datas.timely_goods[0].home3.item.length<=0){
						$('[xid=panelTitle]').hide();
						//去掉空白
						$('[xid=row13]').css('padding','0');
					}else{
						$('[xid=panelTitle]').show();
					}
					me.comp('jishidaData').loadData(e.datas.timely_goods[0].home3.item);
				}
//				console.log(e.datas.find_goods);//发现好货
				if(e.datas.find_goods){
					me.comp('faxianData').loadData(e.datas.find_goods);
				}
				//特工商品
				if(e.datas.loupan_goods){
					me.comp('tegongData').loadData(e.datas.loupan_goods);
				}
			}
		});
	};
	//分类列表总
	Model.prototype.navAlldataCustomRefresh = function(event){
		var url = this.util.shopPath+'/mobile/index.php?act=goods_class',me=this;
		var datas ={
			key : localStorage.getItem('vv'),
			loupan_id : user.lid	
		};
		$.ajax({
			url : url,
			data:datas,
			dataType : 'json',
			type : 'post',
			async :false,
			success: function(e){
				event.source.loadData(e.datas.class_list);
			} 
		});
	};
	
	var idc;
	Model.prototype.imgDataCustomRefresh = function(event){
//		var url = this.util.apiPath +'/api/d/new_banner', me = this;
		var dataarry = {
			key : localStorage.getItem('vv'),
			loupan_id : user.lid
		};
		var url = this.util.shopPath +'/mobile/index.php?act=index', me = this;
		$.post(url,dataarry, function(d) {
//			console.log(JSON.parse(d).datas.adv_list[0].adv_list.item);
			event.source.loadData((JSON.parse(d).datas.adv_list[0].adv_list.item));
			callback();
		});
		function callback(){
			var carousel = me.comp("carouselshop");
			event.source.each(function(obj) {
//				var src = me.util.apiPath + obj.row.val("banner");
				var src = obj.row.val("image");
				if(me.comp('contentsImg').getLength() > obj.index){
					$(carousel.domNode).find("img").eq(obj.index).attr({
						"src" : src,
						"name" :obj.row.val("data")
					});
					if(obj.index == 0){
						localStorage.setItem("index_BannerImg_srcshop", src);
					}
//					idc = obj.row.val("id");
				}else{
					carousel.add('<img name='+obj.row.val("data")+' id="corsol" src="' + src + '" class="kj-img1" bind-click="openPageClick" />');
//					idc = obj.row.val("id");
				}
			});
		}
	};
	Model.prototype.homeBtnClick = function(event){
//		this.comp('homeBtn').set({
//			'icon' : 'img:$UI/zhixin/img/shop/sy.png|'
//		});
//		this.comp('findBtn').set({
//			'icon' : 'img:$UI/zhixin/img/shop/fxw.png|'
//		});
//		this.comp('carBtn').set({
//			'icon' : 'img:$UI/zhixin/img/shop/gwcw.png|'
//		});
//		this.comp('myBtn').set({
//			'icon' : 'img:$UI/zhixin/img/shop/myw.png|'
//		});		
	};
	Model.prototype.findBtnClick = function(event){
		justep.Shell.showPage(require.toUrl('./find.w'));
//		this.comp('homeBtn').set({
//			'icon' : 'img:$UI/zhixin/img/shop/syw.png|'
//		});
//		this.comp('findBtn').set({
//			'icon' : 'img:$UI/zhixin/img/shop/fx.png|'
//		});
//		this.comp('carBtn').set({
//			'icon' : 'img:$UI/zhixin/img/shop/gwcw.png|'
//		});
//		this.comp('myBtn').set({
//			'icon' : 'img:$UI/zhixin/img/shop/myw.png|'
//		});	
	};
	Model.prototype.carBtnClick = function(event){
//		this.comp('homeBtn').set({
//			'icon' : 'img:$UI/zhixin/img/shop/syw.png|'
//		});
//		this.comp('findBtn').set({
//			'icon' : 'img:$UI/zhixin/img/shop/fxw.png|'
//		});
//		this.comp('carBtn').set({
//			'icon' : 'img:$UI/zhixin/img/shop/gwc.png|'
//		});
//		this.comp('myBtn').set({
//			'icon' : 'img:$UI/zhixin/img/shop/myw.png|'
//		});	
		justep.Shell.showPage(require.toUrl('./car.w'));
	};
	Model.prototype.myBtnClick = function(event){
//		this.comp('homeBtn').set({
//			'icon' : 'img:$UI/zhixin/img/shop/syw.png|'
//		});
//		this.comp('findBtn').set({
//			'icon' : 'img:$UI/zhixin/img/shop/fxw.png|'
//		});
//		this.comp('carBtn').set({
//			'icon' : 'img:$UI/zhixin/img/shop/gwcw.png|'
//		});
//		this.comp('myBtn').set({
//			'icon' : 'img:$UI/zhixin/img/shop/myw.png|'
//		});	
		justep.Shell.showPage(require.toUrl('../user/user-main.w'));
	};

	Model.prototype.openPageClick = function(event){
		var pageName = event.currentTarget.getAttribute('name');
		var idc=pageName;
		/*暂时不跳*/
//		justep.Shell.showPage(require.toUrl('./detail.w'), {
//				goodsId : idc
//		});
	};
	//分类
	Model.prototype.li3Click = function(event){
		var row = event.bindingContext.$object;
//		console.log(row.val('name'));
		if(row.val('name')=='分类'){
			this.comp("wing1").toggleLeft();
		}else{
			justep.Shell.showPage(require.toUrl('./detailList.w'), {
				gc_id : row.val('gc_id')
			});
//			console.log(row.val('name'));
		}

	};
	//点击商品
	Model.prototype.clickSp = function(event){
		var row = event.bindingContext.$object;
//		alert(row.val('goods_id'));	
		justep.Shell.showPage(require.toUrl('./detail.w'), {
				goodsId : row.val('goods_id')
		});
	};
	//社区及时达
	Model.prototype.li1jishidaClick = function(event){
		var row = event.bindingContext.$object;
		
		justep.Shell.showPage(require.toUrl('./detail.w'), {
				goodsId : row.val('data')
		});
	};
	//发现好货
	Model.prototype.find = function(event){
		var row = event.bindingContext.$object;
//		console.log(row.val('type'));
		justep.Shell.showPage(require.toUrl('./detail.w'), {
				jishida : row.val('data'),
				goodsId : row.val('data')
		});	
	};
	//发现好货更多
	Model.prototype.findmore = function(event){
		
		justep.Shell.showPage(require.toUrl('./find.w'), {
//				jishida : row.val('data')
		});			
	};

	Model.prototype.span9Click = function(event){
		localStorage.setItem('tips','0');
		$('#span99').hide();
		var url = require.toUrl('../user/entermsg.w');
		justep.Shell.showPage(url,{
			
		});
	};
	//社区特供
	Model.prototype.button1Click = function(event){
		justep.Shell.showPage(require.toUrl('./detailList.w'), {
//				jishida : row.val('data')
		});		
	};

	Model.prototype.left1Click = function(event){
		this.comp('wing1').hideLeft();
	};
	///购物车数量
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

	Model.prototype.modelActive = function(event){
		this.comp('carCount').refreshData();
		jianrong();
	};
	//及时达更多
	Model.prototype.jishidalist = function(event){
		
	};

	return Model;
});