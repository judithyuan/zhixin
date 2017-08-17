define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
		this.spje = justep.Bind.observable("");//商品金额
		this.yfje = justep.Bind.observable("");//运费金额
		this.ddje = justep.Bind.observable("");//订单金额
		this.freeOrder = justep.Bind.observable("");//订单freeOrder优惠
		this.freeOrderdesc = justep.Bind.observable("");//订单freeOrderdesc优惠
		this.is_intime_count=justep.Bind.observable("");//及时达商品数量
		this.is_nointime_count=justep.Bind.observable("");//非及时达商品数量
		//红包余额
		this.redBmoneyS=justep.Bind.observable('');
		//红包抵扣金额显示
		this.redBshowS=justep.Bind.observable('');
	};
	//订单总价格
	var moneyAll=0;
	//红包的余额
	var redBmoneyVS=0;
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
	
	//接受参数 
	Model.prototype.modelParamsReceive = function(event){
//		console.log(this.params.goodsId);
//		console.log(this.params.ifcart);
		
	};
    //消息推送----------------------- 
	//参数
	//有及时达商品不是及时达小区
	var is_jsd;
	//修改地址传的参数
	var dzgl;
	//非及时达商品的数量
	var no_intime_count=0;
	Model.prototype.orderDataCustomRefresh = function(event){
		this.redBshowS.set(0.00);
		this.ddje.set(0.00);
	    moneyAll=0;
	    redBmoneyVS=0;
	    choosedS=true;
		var url = this.util.shopPath+'/mobile/index.php?act=member_buy&op=buy_step1',me=this;
		if(this.params.ifcart=='0'){//购物车购买标志： 1；立即购买：0
			var Pdata={
				key : localStorage.getItem('vv'),//'c229788b27b907fe759a01bba3d02ac5',
				ifcart : this.params.ifcart,//'1',//
				cart_id : this.params.goodsId+'|'+this.params.ifcartcount//'890|1,889|1,886|1,887|1'//
			}		
		}else{
			var Pdata={
				key : localStorage.getItem('vv'),//'c229788b27b907fe759a01bba3d02ac5',
				ifcart : this.params.ifcart,//'1',//
				cart_id : this.params.goodsId//'890|1,889|1,886|1,887|1'//
			}
		}
//		console.log(Pdata)
		$.ajax({
			url : url,
			data: Pdata,
			dataType: 'json',
			type : 'post',
			async : false,
			success: function(e){
				//有及时达商品不是及时达小区
				is_jsd=e.datas.next_step;
				dzgl=e.datas.intersection_loupan_id;
//				debugger
				if(e.datas.error){	
					if(e.datas.error=="no_address"){
						$('[xid=ykrzpopOverorder]').show();
//						return false;
					}else{
						me.util.showPop(e.datas.error);
						return false;
					}
				}else{
					//不支持及时达的商品数量和普通商品数量
					//普通商品
					me.is_intime_count.set(e.datas.address_info[0].no_isintime_goods);
					//及时达商品
					me.is_nointime_count.set(e.datas.address_info[0].no_support_isintime_goods);
					no_intime_count=e.datas.address_info[0].no_isintime_goods;
					//intime_count=e.datas.address_info[0].no_support_isintime_goods;
					//如果不是及时达商品的数量为0，去结算置灰，不可用，选择按钮不可用
					if(e.datas.address_info[0].no_isintime_goods==0){
						$("[xid=button6js]").css("background-color","#e3e3e3");
						$("[xid=button6js]").attr("disabled",true);
						//$('[xid=radio3]').attr('checked',false);
					}
//					else{
//						$("[xid=button6js]").css("background-color","#7bc83e");
//						$("[xid=button6js]").attr("disabled",false);
//						//$('[xid=radio3]').attr('checked',true);
//					}
					//如果支持及时达关闭弹窗
					if(e.datas.address_info[0].no_support_isintime_goods==0){
						$('[xid=xzdzpopOver]').hide();
					}
					me.spje.set('￥'+e.datas.goods_amount);
					me.yfje.set('+￥'+e.datas.freight_amonut);
					me.ddje.set(e.datas.order_amount);
					//找到商品的总价
					moneyAll=e.datas.order_amount;
					if(e.datas.discount_info!=false){
						$('[xid=row3order]').show();
						me.freeOrder.set('-￥'+e.datas.discount_info.discount_amount);
					}else{
						me.freeOrder.set('0.00');
					}
					try {
						if(!e.datas.error){
							sessionStorage.setItem('address_id', e.datas.address_info[0].address_id);//地址ID
							sessionStorage.setItem('freight_hash', e.datas.freight_hash);//特殊字符串
							sessionStorage.setItem('cart_id',e.datas.cart_id)//购物车数量
							me.comp('storeData').loadData(e.datas.store_list);
							me.comp('goodsData').loadData(e.datas.goods_list);
							me.comp('adrData').loadData(e.datas.address_info);
							me.comp('chooseAdrData').loadData(e.datas.address_list);
							me.comp('yfInformationdata').loadData(e.datas.store_list);
						}else{
							me.util.showPop(e.datas.error);
						}
					} catch (e) {
						me.util.showPop(e+'106');
					}
				};
			//完成请求之后再来请求红包接口
			var url=common.apiPath+'/zhixines/api/GetRedPacket/getUserRpAccount';
			var data={
					user_id:user.id,
					v:user.v
			};
			$.ajax({
				url:url,
				data:data,
				type:'post',
				dataType:'json',
				async:true,
				success:function(d){
					if(d.redpacket_amount==undefined){
						me.redBmoneyS.set('00.00');
						return;
					}
					me.redBmoneyS.set(d.redpacket_amount);
					redBmoneyVS=parseFloat(d.redpacket_amount);
					if(redBmoneyVS>moneyAll){
						
						me.redBshowS.set(moneyAll);
					}
					else{
						
						me.redBshowS.set(redBmoneyVS);
					}
					//setTimeout(function(){me.ddje.set(parseFloat(moneyAll-$('[xid=inputSredMoney]').val()).toFixed(2));},1000)
					me.ddje.set(parseFloat(moneyAll-$('[xid=inputSredMoney]').val()).toFixed(2));
				}
			});				
			}
		});
		//var me=this;
		//请求红包接口
	};

	Model.prototype.confirmBtnClick = function(event){
		//console.log(is_jsd);
		if(!is_jsd){
			$('[xid=radio3]').removeAttr("checked");
			$('[xid=span29]').css("display",'none');
			$('[xid=xzdzpopOver]').show();
			return;
		}
		var els =document.getElementsByName("liuyan");
		var lyAry=[];
		for (var i = 0, j = els.length; i < j; i++){
				lyAry.push(this.comp('storeData').allDatas.latestValue[i].row.store_id.value.latestValue+':'+els[i].value);				
		}//评论
//		console.log(lyAry)
		var url = this.util.shopPath+'/mobile/index.php?act=member_buy&op=buy_step2',me=this;
		var Pdata={
			key : localStorage.getItem('vv'),//'c229788b27b907fe759a01bba3d02ac5',
			ifcart : this.params.ifcart,
			cart_id : sessionStorage.getItem('cart_id'),
			address_id : sessionStorage.getItem('address_id'),
			freight_hash : sessionStorage.getItem('freight_hash'),
			pay_message : lyAry,
			redpacket_amount:choosedS?$('[xid=inputSredMoney]').val():0
		}
		if(!is_jsd){
			Pdata.settlements_type="remove_isintime";
		}	
		$.ajax({
			url: url,
			data: Pdata,
			dataType: 'json',
			type : 'post',
			async : false,
			success: function(e){
				try {
					
					if(!e.datas.error){
						if(e.datas.state==9&&e.datas.order_amount==0){
							justep.Shell.showPage(require.toUrl('./shopOrder.w'),{tfpay:true});
							return;
						}
						localStorage.setItem('pay_sn',e.datas.pay_sn);
						justep.Shell.showPage(require.toUrl('./orderPay.w'),{
							pay_snSend :e.datas.pay_sn,
							order_amount : e.datas.order_amount
						});
					}
				} catch (e) {
					// TODO: handle exception
					me.util.showPop(e+'148');
					
				}
//				console.log(e.datas.error)
				me.util.showPop(e.datas.error);
			}
		});
//		for(var i=0;i<this.comp('storeData').allDatas.latestValue.length;i++){
//		}

	};
	//存储留言
	Model.prototype.inputd2Change = function(event){

	};

	//选择地址
	Model.prototype.chooseAdrDataCustomRefresh = function(event){
//		var url = this.util.shopPath+'/mobile/index.php?act=member_address&op=address_list',me=this;
//		var user=justep.Shell.user.get();
//		console.log(user);
//		var Pdata={
////			key : user.v,
//			key : localStorage.getItem('vv'),//'c229788b27b907fe759a01bba3d02ac5',
//		}
//		$.ajax({
//			url: url,
//			data: Pdata,
//			dataType: 'json',
//			type : 'post',
//			async : false,
//			success: function(e){
//				event.source.loadData(e.datas.address_list);
//			}
//		});
	};
	
	//选择地址
	Model.prototype.li1Click = function(event){
		this.comp("chooseAdrData").setValue("state", 0);
		var switchDta=this.comp('chooseAdrData');
		var row = event.bindingContext.$object;
		$(this).find("input[type='radio']").attr("checked",true);
		row.val("state", 1);
		var name=row.val("true_name");
		var Adr=row.val("address");
		var mob=row.val("mob_phone");
		var adrId=row.val("address_id");
		this.getElementByXid('outputname').innerText = name;
		this.getElementByXid('spanphone').innerText = mob;
		this.getElementByXid('outputaddr').innerText = Adr;
		sessionStorage.setItem('address_id',adrId);
	};
	
	//点击切换地址列表
	Model.prototype.col2Click = function(event){
		//$('[xid=list1addrorder]').slideToggle();
		justep.Shell.showPage(require.toUrl('../user/dizhiguanli.w'),{intersection_loupan_id:dzgl});
	};	
	
	Model.prototype.modelActive = function(event){
		//初始化
		choosedS=true;
		this.redBshowS.set(0.00);
		this.ddje.set(0.00);
	    moneyAll=0;
	    redBmoneyVS=0;
		this.comp('orderData').refreshData();		
		this.comp('storeData').refreshData();
		this.comp('goodsData').refreshData();
//		this.comp('chooseAdrData').refreshData();
//		this.comp('adrData').refreshData();
	};	


	//运费说明点击
	Model.prototype.button1Click = function(event){
		$('[xid=divYfinformation]').hide();
	};	


	//运费说明点击显示
	Model.prototype.col25Click = function(event){
		var row = event.bindingContext.$object;
//		console.log(row.val('freight_rule_text'));
		var yfInformationdata = this.comp('yfInformationdata');
		yfInformationdata.clear();
		yfInformationdata.newData({
			"defaultValues" : [ {
				"freight_rule_text" : row.val('freight_rule_text'),
			} ]
		});
		this.comp('yfInformationdata').refreshData();
		$('[xid=divYfinformation]').show();
	};	
	/*关闭弹框*/
	Model.prototype.button6Clickcancle = function(event){
		$('[xid=ykrzpopOverorder]').hide();
		justep.Shell.closePage();
	};
	Model.prototype.button7Clicklikerenz = function(event){
		justep.Shell.showPage(require.toUrl('../user/add-dizhi.w'));
		$('[xid=ykrzpopOverorder]').hide();
	};

	Model.prototype.image9Click = function(event){
		$('[xid=xzdzpopOver]').hide();
		$('[xid=button6js]').css('backgroundColor','#e3e3e3');
		$("[xid=button6js]").attr("disabled",true);
		//重新计算实际付款金额
		this.ddje.set(parseFloat(moneyAll-$('[xid=inputSredMoney]').val()).toFixed(2));
		$('[xid=radio3]').removeAttr("checked");
		$('[xid=span29]').css("display",'none');
	};

	//结算
	Model.prototype.jiesuanClick = function(event){
		if($('[xid=radio3]').attr('checked')=="checked"){
			var els =document.getElementsByName("liuyan");
			var lyAry=[];
			for (var i = 0, j = els.length; i < j; i++){
					lyAry.push(this.comp('storeData').allDatas.latestValue[i].row.store_id.value.latestValue+':'+els[i].value);				
			}//评论
	//		console.log(lyAry)
			var url = this.util.shopPath+'/mobile/index.php?act=member_buy&op=buy_step2',me=this;
			var Pdata={
				key : localStorage.getItem('vv'),//'c229788b27b907fe759a01bba3d02ac5',
				ifcart : this.params.ifcart,
				cart_id : sessionStorage.getItem('cart_id'),
				address_id : sessionStorage.getItem('address_id'),
				freight_hash : sessionStorage.getItem('freight_hash'),
				pay_message : lyAry,
				redpacket_amount:choosedS?$('[xid=inputSredMoney]').val():0
			}
			if(!is_jsd){
				Pdata.settlements_type="remove_isintime";
			}	
			$.ajax({
				url: url,
				data: Pdata,
				dataType: 'json',
				type : 'post',
				async : false,
				success: function(e){
					try {
					
					if(!e.datas.error){
						if(e.datas.state==9&&e.datas.order_amount==0){
							justep.Shell.showPage(require.toUrl('./shopOrder.w'),{tfpay:true});
							return;
						}
						localStorage.setItem('pay_sn',e.datas.pay_sn);
						justep.Shell.showPage(require.toUrl('./orderPay.w'),{
							pay_snSend :e.datas.pay_sn,
							order_amount : e.datas.order_amount
						});
					}
					} catch (e) {
					// TODO: handle exception
					me.util.showPop(e+'148');
					
					}
	//				console.log(e.datas.error)
					me.util.showPop(e.datas.error);
				}
			});
			//关闭弹窗
			$('[xid=xzdzpopOver]').hide();
			$('[xid=radio3]').removeAttr("checked");
			$('[xid=span29]').css("display",'none');
		}
		else{
			console.log("未选中任何商品");
		}
	};

	//自由增加地址中点击选择其他商品单选框
	Model.prototype.radio3Click = function(event){
		if(no_intime_count<=0){
			$('[xid=radio3]').removeAttr("checked");
			$('[xid=span29]').css("display",'none');
			$("[xid=button6js]").css("background-color","#e3e3e3");
			$("[xid=button6js]").attr("disabled",true);
			return;
		}
		if($('[xid=radio3]').attr('checked')){
			$('[xid=radio3]').removeAttr("checked");
			$('[xid=span29]').css("display",'none');
			$("[xid=button6js]").css("background-color","#e3e3e3");
			$("[xid=button6js]").attr("disabled",true);
		}else{
			$('[xid=radio3]').attr('checked','checked');
			$('[xid=span29]').css("display",'block');
			$("[xid=button6js]").css("background-color","#7bc83e");
			$("[xid=button6js]").attr("disabled",false);
		}
	};
	//点击选择使用或不使用红包
	//选中标识
	var choosedS=true;
	Model.prototype.span3chooseClick = function(event){
		choosedS=!choosedS;
		if(choosedS){
			$('[xid=image3choose]').css('display','block');
			this.ddje.set(parseFloat(moneyAll-$('[xid=inputSredMoney]').val()).toFixed(2));
		}
		else{
			$('[xid=image3choose]').css('display','none');
			this.ddje.set(moneyAll);
		}
	};


	Model.prototype.inputSredMoneyBlur = function(event){
		if($('[xid=inputSredMoney]').val()==''||$('[xid=inputSredMoney]').val()==null||isNaN($('[xid=inputSredMoney]').val())){
			this.redBshowS.set(0.00);
		}
		this.redBshowS.set(parseFloat($('[xid=inputSredMoney]').val()).toFixed(2));
		if(choosedS){
			this.ddje.set(parseFloat(moneyAll-$('[xid=inputSredMoney]').val()).toFixed(2));
		}
	};

	//键盘弹起事件
	Model.prototype.inputSredMoneyKeyup = function(event){
		var obj_value=$('[xid=inputSredMoney]').val();	
		obj_value = obj_value.replace(/[^\d.]/g,""); //清除"数字"和"."以外的字符
		obj_value = obj_value.replace(/^\./g,""); //验证第一个字符是数字
		obj_value = obj_value.replace(/\.{2,}/g,"."); //只保留第一个, 清除多余的
		obj_value = obj_value.replace(".","$#$").replace(/\./g,"").replace("$#$",".");
		obj_value = obj_value.replace(/^(\-)*(\d+)\.(\d\d).*$/,'$1$2.$3'); //只能输入两个小数
		$('[xid=inputSredMoney]').val(obj_value);
		if($('[xid=inputSredMoney]').val()-moneyAll>0&&moneyAll<=redBmoneyVS){
			$('[xid=inputSredMoney]').val(moneyAll);
			obj_value=moneyAll;
		}else if($('[xid=inputSredMoney]').val()-redBmoneyVS>0){//&&redBmoneyVS<moneyAll
			$('[xid=inputSredMoney]').val(redBmoneyVS);
			obj_value=redBmoneyVS;
		}
		else{
		}
		this.redBshowS.set(obj_value);
		//选中了才改变
		if(choosedS){
			this.ddje.set(parseFloat(moneyAll-$('[xid=inputSredMoney]').val()).toFixed(2));
		}
	};
	//自由增加地址的遮罩层
	Model.prototype.div23zzcClick = function(event){
		$('[xid=button6js]').css('backgroundColor','#e3e3e3');
		$("[xid=button6js]").attr("disabled",true);
		//重新计算实际付款金额
		this.ddje.set(parseFloat(moneyAll-$('[xid=inputSredMoney]').val()).toFixed(2));
		$('[xid=radio3]').removeAttr("checked");
		$('[xid=span29]').css("display",'none');
	};
	return Model;
});

