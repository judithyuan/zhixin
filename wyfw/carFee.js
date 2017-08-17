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
 	//	定义函数请求-----------------------------------------------------
	$(document).ajaxStart(function() {
		$('[xid=loadpopOver]').show();
	});
	$(document).ajaxStop(function() {
		$('[xid=loadpopOver]').hide();
	});
	$(document).ajaxError(function() {
		$('[xid=loadpopOver]').hide();
		$('[xid=Overlineerror]').show();
	});
	//请求出错
	Model.prototype.denglu = function(event){
//		justep.Shell.showPage(require.toUrl('./login.w'));
		window.location.reload();
	};
	//	定义函数请求-----------------------------------------------------
	Model.prototype.modelLoad = function(event){
		/*
		 * 判断html标签是否有iosstatusbar,有测表示在苹果手机上运行，顶部需要留出20px，因此修改popover的top
		 */
//alert(this.params.jftype)
	};
	Model.prototype.col12Click = function(event){
	
	};

	Model.prototype.button4Click = function(event){
		var url=require.toUrl('./tcqf.w');
		justep.Shell.showPage(url,{
			
		});
	};

	//获取车辆信息
	Model.prototype.carDataCustomRefresh = function(event){
		//alert(11)
		 //add ywh 屏蔽停车缴费功能
			var url = require.toUrl(this.util.apiPath +"/zhixines/api/ParkPayment/getCarts");
			var data = {
					rid : user.rid,
					mobile : user.mobile
			};
			$.post(url,data,function(d){
//				console.log(d.rows.c_lock_status);
				event.source.loadData(d.rows);
				///this.comp('')
				if(!d.total==0){
					$('[xid=yesspan]').show();
				}else{
					$('[xid=noneimg]').show();
					$('[xid=nonespan]').show();
				}	
			});
//		if(document.readyState=="complete"){	
//			$('[xid=loadpopOver]').hide();
//		}	
	};

	//点击
	Model.prototype.button1Click = function(event){
		localStorage.setItem('jfe','1');
	};
	
	

	Model.prototype.list1Click = function(event){
//		alert(this.params.jftype)
//		if(this.params.old=='yes'){
//			var url=require.toUrl('./tcjfNew.w');
//		}else{
			var url=require.toUrl('./alljiaofei.w');
//		}
		//内外
		if(localStorage.getItem('jfe')==1){
			
			justep.Shell.showPage(url,{
				cart_id : this.comp('carData').val('c_cart_id'),
				park_cart_num :this.comp('carData').val('c_park_cart_num'),
				waipan : this.params.waipan,
				jftype : this.params.jftype,
				
			});
			localStorage.removeItem('jfe');
			localStorage.removeItem('stas');
		};
		//localStorage.setItem('stas',this.comp('carData').val('c_lock_status'));//车辆状态
		//localStorage.setItem('park_cart_num',this.comp('carData').val('c_park_cart_num'));//车牌
		//alert(this.comp('carData').val('c_park_cart_num'));
//		alert(localStorage.getItem('stas'));
		if(localStorage.getItem('stas')==1){//如果点击锁车
			var stas;
			var me =this;
			if(this.comp('carData').val('c_lock_status')==0){
				stas=1;
				//alert(1);
//				document.getElementById('span9').innerText ='解锁';
			}else{
//				alert(2);
				stas=0;
//				document.getElementById('span9').innerText ='待锁';
			};
			var url = require.toUrl(this.util.apiPath +"/zhixines/api/ParkPayment/lockStatus");
//			alert(this.comp('carData').val('c_park_cart_num'));
			var data = {
					userid : '849634368e9011e6ae2256b6b6499611',
					park_cart_num : this.comp('carData').val('c_park_cart_num'),
					status : stas,
					cartid : this.comp('carData').val('c_cart_id')
			};
			$.post(url,data,function(d){
				console.log(d);
				//event.source.loadData(d.rows);
			});
			setTimeout(function(){
				me.comp('carData').refreshData();	
				$('[xid=loadpopOver]').hide();
			}, 1000)
				
		};
	};
	Model.prototype.button2Click = function(event){
		//alert(1)
		$('[xid=loadpopOver]').show();
		localStorage.setItem('jfe','0');
		localStorage.setItem('stas','1');
//		this.comp('button2').set({
//			'lable' : '待已锁',
//		});
	};
	Model.prototype.tuichu = function(event){
		justep.Shell.closePage();

	};
	
	

	return Model;
});