define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	//--------------
		var touchaaaa = document.getElementById("listbox");
		touchaaaa.addEventListener('touchstart',function(event){
			 me.touchaaaa= event.touches[0].clientY;
		},false);
		//触摸事件   触摸结束
		touchaaaa.addEventListener('touchend',function(event){
		        if(event.changedTouches[0].clientY>(me.touchaaaa+100)){
//                	alert("有上往下")
		        	fangxiang='上往下';
                }
                if(event.changedTouches[0].clientY<(me.touchaaaa-100)){
//                	alert("有下往上")
                	fangxiang='下往上';
                }
//                debugger;
//                event.stopPropagation();
		},false);
	};
//	定义函数
	var common = require("../js/common");
	Model.prototype.util = common;
	var user = justep.Shell.user.get();//获取缓存用户表信息数据
	var k='',order='1',is_in_time,me=this,fangxiang,returnone='0';//排序类型 1-销量 2-浏览量 3-价格 空-按最新发布排序	排序方式 1-升序 2-降序     及时达（1否，2是）
	var page='50';//每页个数
	var hasmore;//似否可翻页
	var curpage='1';//当前第几页
	var page_total;//总页数
	var curpageNow='1';//在第几页面
	
	var updown = '1';//排序方式 1-升序 2-降序
	
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
		window.location.reload();
	};
	//	定义函数请求-----------------------------------------------------
    //消息推送----------------------- 
	//初始化进入加载默认商品
	Model.prototype.modelLoad = function(event){
			/*
		 * 1、搜索关键词搜索
		 */
//		console.log(sessionStorage.getItem('keywordscook'));
		if(sessionStorage.getItem('keywordscook')!=null){
			$("#searchDtailList").val(sessionStorage.getItem('keywordscook'));
		}
		var gc_id = this.params.gc_id,my=this;
		$("#searchDtailList").on('keypress',function(e) {  
                var keycode = e.keyCode;  
                var searchName = $(this).val();  
                if(keycode=='13') {  
                    e.preventDefault();    
                    //请求搜索接口  
//                     alert(searchName);
                    var url = common.shopPath+'/mobile/index.php?act=goods&op=goods_list&page=50&curpage=1';
					var datas = {
						gc_id :gc_id,
						keyword : searchName,
						key : localStorage.getItem('vv'),
						loupan_id : user.lid ,
						
					};
					$.ajax({
						url : url,
						dataType : 'json',
						type : 'get',
						data:datas,
						async : false,
						success : function(e){
							hasmore=e.hasmore;//存储是否可以翻页-首次进入
							page_total=e.page_total;//总页数
			//				localStorage.setItem('hasmore', e.hasmore);//存储是否可以翻页-首次进入
			//				Data.setTotal()
//							me.comp('ListDataliebiao').setTotal('50');
							my.comp('ListDataliebiao').loadData(e.datas.goods_list);
							my.comp('scrollView2ss').scrollTo('top')
						}
					});
                }  
        }); 			
//		console.log(this.params.keyword);
//		console.log(this.params.gc_id);
		var url = this.util.shopPath+'/mobile/index.php?act=goods&op=goods_list&page=50&curpage=1',me=this;
		var datas = {
			gc_id :this.params.gc_id,
			keyword : this.params.keyword,
			key : localStorage.getItem('vv'),
			loupan_id : user.lid 
		};
		$.ajax({
			url : url,
			dataType : 'json',
			type : 'get',
			data:datas,
			async : false,
			success : function(e){
				if(e.datas.goods_list.length=='0'){
					me.util.showPop('暂无商品！')
				}
//				console.log(e.datas.goods_list);
				hasmore=e.hasmore;//存储是否可以翻页-首次进入
				page_total=e.page_total;//总页数
//				localStorage.setItem('hasmore', e.hasmore);//存储是否可以翻页-首次进入
//				Data.setTotal()
				me.comp('ListDataliebiao').setTotal('50');
				me.comp('ListDataliebiao').loadData(e.datas.goods_list);
			}
		});
	};

	Model.prototype.button7zongheClick = function(event){
		if(updown=='1'){ //1-升序 2-降序
			this.comp('button7zonghe').set({'icon':'icon-arrow-down-b'});
			updown='2';
		}else{
			this.comp('button7zonghe').set({'icon':'icon-arrow-up-b'});
			updown='1';
		}
		this.comp('button8xiaoliang').set({'icon':''});
		this.comp('button9jiage').set({'icon':''});
		this.comp('button10jishida').set({'icon':''});
		var url = this.util.shopPath+'/mobile/index.php?act=goods&op=goods_list&page=50&curpage=1',me=this;
		var datas = {
			gc_id :this.params.gc_id,
			keyword : this.params.keyword,
			key : localStorage.getItem('vv'),
			loupan_id : user.lid ,
			order : updown,//排序方式 1-升序 2-降序
		};
		$.ajax({
			url : url,
			dataType : 'json',
			type : 'get',
			data:datas,
			async : false,
			success : function(e){
//				console.log(e.datas.goods_list);
				hasmore=e.hasmore;//存储是否可以翻页-首次进入
				page_total=e.page_total;//总页数
//				localStorage.setItem('hasmore', e.hasmore);//存储是否可以翻页-首次进入
//				Data.setTotal()
				me.comp('ListDataliebiao').setTotal('50');
				me.comp('ListDataliebiao').loadData(e.datas.goods_list);
			}
		});		
	};

	Model.prototype.button8xiaoliangClick = function(event){
		if(updown=='1'){ //1-升序 2-降序
			this.comp('button8xiaoliang').set({'icon':'icon-arrow-down-b'});
			updown='2';
		}else{
			this.comp('button8xiaoliang').set({'icon':'icon-arrow-up-b'});
			updown='1';
		}
		this.comp('button7zonghe').set({'icon':''});
//		this.comp('button8xiaoliang').set({'icon':'icon-arrow-down-b'});
		this.comp('button9jiage').set({'icon':''});
		this.comp('button10jishida').set({'icon':''});
		var url = this.util.shopPath+'/mobile/index.php?act=goods&op=goods_list&page=50&curpage=1',me=this;
		k='1';//设定初始化K
		var datas = {
			k : '1',//排序类型 1-销量 2-浏览量 3-价格 空-按最新发布排序
			gc_id :this.params.gc_id,
			keyword : this.params.keyword,
			key : localStorage.getItem('vv'),
			loupan_id : user.lid ,
			order : updown,//排序方式 1-升序 2-降序
		};
		$.ajax({
			url : url,
			data:datas,
			dataType : 'json',
			type : 'get',
			async : false,
			success : function(e){
				hasmore=e.hasmore;//存储是否可以翻页-首次进入
				me.comp('ListDataliebiao').loadData(e.datas.goods_list);
//				me.comp('ListDataliebiao').refreshData();
			}
		});
	};

	Model.prototype.button9jiageClick = function(event){
		if(updown=='1'){ //1-升序 2-降序
			this.comp('button9jiage').set({'icon':'icon-arrow-down-b'});
			updown='2';
		}else{
			this.comp('button9jiage').set({'icon':'icon-arrow-up-b'});
			updown='1';
		}
		this.comp('button7zonghe').set({'icon':''});
		this.comp('button8xiaoliang').set({'icon':''});
//		this.comp('button9jiage').set({'icon':'icon-arrow-down-b'});
		this.comp('button10jishida').set({'icon':''});
		var url = this.util.shopPath+'/mobile/index.php?act=goods&op=goods_list&page=50&curpage=1',me=this;
		k='3';//设定初始化K
		var datas = {
			k : '3',//排序类型 1-销量 2-浏览量 3-价格 空-按最新发布排序
			order : '1',//排序方式 1-升序 2-降序
			gc_id :this.params.gc_id,
			keyword : this.params.keyword,
			key : localStorage.getItem('vv'),
			loupan_id : user.lid ,
			order : updown,//排序方式 1-升序 2-降序
		};
		$.ajax({
			url : url,
			data:datas,
			dataType : 'json',
			type : 'get',
			async : false,
			success : function(e){
				hasmore=e.hasmore;//存储是否可以翻页-首次进入
				me.comp('ListDataliebiao').loadData(e.datas.goods_list);

			}
		});
	};

	Model.prototype.button10jishidaClick = function(event){
		if(updown=='1'){ //1-升序 2-降序
			this.comp('button10jishida').set({'icon':'icon-arrow-down-b'});
			updown='2';
		}else{
			this.comp('button10jishida').set({'icon':'icon-arrow-up-b'});
			updown='1';
		}
		this.comp('button7zonghe').set({'icon':''});
		this.comp('button8xiaoliang').set({'icon':''});
		this.comp('button9jiage').set({'icon':''});
//		this.comp('button10jishida').set({'icon':'icon-arrow-down-b'});
		var url = this.util.shopPath+'/mobile/index.php?act=goods&op=goods_list&page=50&curpage=1',me=this;
		k='';//设定初始化K
		is_in_time='2';
		var datas = { 
			k : '3',//排序类型 1-销量 2-浏览量 3-价格 空-按最新发布排序
			order : '1',//排序方式 1-升序 2-降序
			is_in_time : '2',//	及时达（1否，2是）
			gc_id :this.params.gc_id,
			keyword : this.params.keyword,
			key : localStorage.getItem('vv'),
			loupan_id : user.lid ,
			order : updown,//排序方式 1-升序 2-降序
		};
		$.ajax({
			url : url,
			data:datas,
			dataType : 'json',
			type : 'get',
			async : false,
			success : function(e){
				hasmore=e.hasmore;//存储是否可以翻页-首次进入	
				me.comp('ListDataliebiao').loadData(e.datas.goods_list);
			}
		});
	};

	
//	Model.prototype.list1Touchend = function(event){
//		var nowTop,allTop,count,me=this;
//		//$(doc).height() - $(win).height() - $(win).scrollTop();$('[xid=content1]').height() - 
//		nowTop=$('[xid=content1]').scrollTop();
//		allTop=$('[xid=li1]').height()*page;
//		count=Math.abs(document.documentElement.clientHeight-allTop-$('[xid=buttonGroup1paixu]').height()-$('[xid=top1]').height()-1);
////		alert(count<=nowTop||nowTop!='0');
//		alert(nowTop);
//		if((count<=nowTop||nowTop!='0')&&hasmore){//当前的滑动至底部
//			
//			if(curpage<page_total){
//				if(fangxiang=='上往下'){
//					curpage--;
//				}
//				if(fangxiang=='下往上'){
//					curpage++;
//				}
//			}if(curpage==page_total){
//				me.util.showPop('已到达最后一页，再次拖动可返回第一页！');
//				returnone++;
//			}
//			//			已到达最后一页
//			if(returnone>1){
//				curpage='1';
//			}
//			
//			//------------------------------------//定义加载分页商品
//			var url = common.shopPath+'/mobile/index.php?act=goods&op=goods_list&page='+page+'&curpage='+curpage;
//			var datas = {
//				key : key,//排序类型 1-销量 2-浏览量 3-价格 空-按最新发布排序
//				order : order,//排序方式 1-升序 2-降序
//				is_in_time : is_in_time//	及时达（1否，2是）
//			};
//			$.ajax({
//				url : url,
//				data:datas,
//				dataType : 'json',
//				type : 'post',
//				async : false,
//				success : function(e){
//					me.comp('ListDataliebiao').loadData(e.datas.goods_list);
//					$('[xid=content1]').scrollTop(0);
//				}
//			});
//		}//当前的滑动至底部----------
//
//	};
	//进入详细页
	Model.prototype.li1Click = function(event){
		var row = event.bindingContext.$object;
		justep.Shell.showPage(require.toUrl('./detail.w'),{
			goodsId : row.val('goods_id')
		});
//		console.log(row.val('goods_id'))
	};
	//PullUp

	Model.prototype.scrollView2PullDown = function(event){

	};
	Model.prototype.scrollView2PullUp = function(event){
//		debugger
//		console.log(curpage);	
		curpage++;
		if(curpage=='10'){
			curpage='9';
			if(curpageNow<=page_total){
				curpageNow++;
			}else{
				curpageNow='1';
			}		
			//------------------------------------//定义加载分页商品
//			var url = common.shopPath+'/mobile/index.php?act=goods&op=goods_list&page='+page+'&curpage='+curpageNow;
			var url = this.util.shopPath+'/mobile/index.php?act=goods&op=goods_list&page=50&curpage='+curpageNow,me=this;
//			alert(url)
			var datas = {
				k : k,//排序类型 1-销量 2-浏览量 3-价格 空-按最新发布排序
				order : order,//排序方式 1-升序 2-降序
				is_in_time : is_in_time,//	及时达（1否，2是）
				gc_id :this.params.gc_id,
				keyword : this.params.keyword,
				key : localStorage.getItem('vv'),
				loupan_id : user.lid ,
				order : updown,//排序方式 1-升序 2-降序
			};
			$.ajax({
				url : url,
				data:datas,
				dataType : 'json',
				type : 'get',
				async : false,
				success : function(e){
					me.comp('ListDataliebiao').loadData(e.datas.goods_list);
//					me.comp('list1ListDataliebiao').refresh(true);
					me.comp('scrollView2ss').scrollTo('top');
				}
			});
//		}//当前的滑动至底部----------			
		}
	};





	return Model;
});