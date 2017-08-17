define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
		this.kuaidiname = justep.Bind.observable('');
		this.kuaidinumber = justep.Bind.observable('');
		this.kuaidiaddr = justep.Bind.observable('');
	};
//	定义函数
	var common = require("./js/common");
	Model.prototype.util = common;
	var user = justep.Shell.user.get();//获取缓存用户表信息数据
	 //通过判断系统来改变已认证样式
	//判断是否为IOS
	var ua = navigator.userAgent.toLowerCase();	
	if (/iphone|ipad|ipod/.test(ua)) {
		    console.log("iphone");	
		    $('[xid=span7]').css({'top':'-0.03rem'});
	} else if (/android/.test(ua)) {
		    console.log("android");	
		    //$('[xid=button4]').css({'line-height':'0.42rem'});
	}


//	Model.prototype.buttonGroup1Select = function(event){
////		alert();
//	};
	//默认的电话号码
	var telphone;
	Model.prototype.modelLoad = function(event){
		$('[xid=registerBtn]').attr('disabled',true);
		try {
			this.kuaidiname.set(user.nick_name);
			this.kuaidinumber.set(user.mobile.replace(/^(\d{3})\d{4}(\d{4})$/, "$1****$2"));
			telphone=user.mobile;
			this.kuaidiaddr.set(user.addr);
		} catch (e) {
			// TODO: handle exception
		}
		shdz=false;
		shsj=false;
		$('[xid=registerBtn]').css('backgroundColor','#e3e3e3');
		$('[xid=registerBtn]').attr('disabled',true);
	};
	Model.prototype.modelModelConstructDone = function(event){
		$('[xid=div5]').hide();
	};
	//增加包裹数量
	Model.prototype.button3Click = function(event){
//		alert(1);
		var data = this.comp("countData");
		var newcount = this.comp("countData").getValue("count");
		newcount++;
		data.setValue("count", newcount);
	};
	//减少包裹数量 
	Model.prototype.button2Click = function(event){
		var data = this.comp("countData");
		var newcount = this.comp("countData").getValue("count");
		if(newcount>1){
			newcount--;
			data.setValue("count", newcount);
		}else{
//			justep.Util.hint("数量最少为1");
			this.util.showPop("数量最少为1");
		}
		 
	};

	Model.prototype.buttonGroup2Select = function(event){
		
	};
	//快递接口
	Model.prototype.kdDataCustomRefresh = function(event){
		var data = {
		lp_id:user.lid
		};
		var url =  this.util.apiPath + '/zhixines/api/ExpressCompany';
		$.post(url,data,function(d){
			console.log(d.rows);
			event.source.loadData(d.rows);
		});
	};
	//一键呼叫
	Model.prototype.button4Click = function(event){
				var row = event.bindingContext.$object;
				var phone = row.val('contact')[0];
//				alert(phone[0]);
//				console.log(row.val('contact'))
//				var phone = d.phone;
//				alert(1);
//				console.log(d)
				if (phone) {
					window.location.href = 'tel:' + phone;
				} else {
//					justep.util.showMsg('暂无求助电话！');
					this.util.showPop("暂无求助电话！");
				}
	};
	//获取快递时间段，快递盒子等等
	Model.prototype.countDataCustomRefresh = function(event){
		var data={
			lp_id:user.lid
		};
		var me=this;
		var url =  this.util.apiPath + '/zhixines/api/ExpressAccept/write';
		$.post(url,data,function(d){
			console.log(d.placetypeOptions[0]);
			me.comp('timeData').loadData(d.periodOptions);//快递时间段
			me.comp('boxData').loadData(d.expressBoxOptions);//快递箱
			me.comp('placetypeOptions').loadData(d.placetypeOptions);//快递箱，物业快递
//			timekd = d.periodOptions;
//			localStorage.setItem('timekd',d.periodOptions);
		});

	};
	//加载快递时间段
	Model.prototype.timeDataCustomRefresh = function(event){
//		event.source.loadData(localStorage.getItem('timekd'));
//		console.log(localStorage.getItem('timekd'))
	};
	Model.prototype.list3Click = function(event){
//		this.comp("timeData").setValue("zt", 0);
		//var row = event.bindingContext.$object;
		//console.log(row)
//		$(this).find("button").attr("checked",true);
//		row.val("state", 1);
		localStorage.setItem('period', this.comp('timeData').val('val'));
	};
	//快递箱
	Model.prototype.boxDataCustomRefresh = function(event){

	};
	//放置地方点击事件
	Model.prototype.list7Click = function(event){
//		this.comp("placetypeOptions").setValue("state", 0);
//		//var phoneData=this.comp('phoneData');
//		var row = event.bindingContext.$object;
//		//$(this).find("input[type='radio']").attr("checked",true);
//		//row.val("key", 1);
////		$(this).find("input[type='radio']").attr("checked",true);
//		//mobile=row.val('key');
		console.log(this.comp('placetypeOptions').val('key'));
//		alert();
		if(this.comp('placetypeOptions').val('key')=='1'){
			$('[xid=div5]').hide();
			localStorage.setItem('placetype', this.comp('placetypeOptions').val('id'));
		}
		if(this.comp('placetypeOptions').val('key')=='2'){
			$('[xid=div5]').show();
			localStorage.setItem('placetype', this.comp('placetypeOptions').val('id'));
		}
		if(this.comp('placetypeOptions').val('key')=='centre'){
			$('[xid=div5]').hide();
			localStorage.setItem('placetype', this.comp('placetypeOptions').val('id'));
		}
	};
	//提交
	Model.prototype.registerBtnClick = function(event){
		var me=this;
		var datas = {
			eaid : 0,
			xname : this.comp('input1').val(),//收件人姓名
			//contact : this.comp('input2').val(),//联系方式telphone
			contact :telphone,
			address : this.comp('input3').val(),//收件详细地址
			period : localStorage.getItem('period'),//上门时间段
			placetype : localStorage.getItem('placetype'),//收取地址类型（如：物业中心,快递箱）
			fetchcode : this.comp('input4').val(),//取件码（快递箱方式）
			fetchpacktel : this.comp('input5').val(),//取件联系电话（快递箱方式）
			express_box : this.comp('select1').val(),//快递箱名称id
			note : this.comp('bxnr').val(),//备注内容
			userid : user.id,
			lid : user.lid,
			ban_id : user.bid,
			rid : user.rid
		};
		var url = this.util.apiPath + '/zhixines/api/ExpressAccept/writeSave';
		$.post(url,datas,function(red){
			//console.log(red);
			//justep.Util.hint(red.msg);
			if(red.status){
//				localStorage.removeItem('period');
//				localStorage.removeItem('placetype');
				me.util.showPop(red.message);
				if(localStorage.getItem('x5Version + introPage')!='yes'){
					localStorage.setItem('x5Version + introPage','yes');
					window.location.reload();
				}else{
					justep.Shell.showPage("main.w");
				}
			}
			if(!red.status){
//				justep.Util.hint(red.msg);
				me.util.showPop(red.message);
			}
		});
		//将收获地址和时间设置为false
		shdz=false;
		shsj=false;
		$('[xid=registerBtn]').css('backgroundColor','#e3e3e3');
		$('[xid=registerBtn]').attr('disabled',true);
	};
	//备注输入完成
	Model.prototype.bxnrBlur = function(event){
//		console.log(this.comp('input1').val());//姓名
//		console.log(this.comp('input2').val());//电话
//		console.log(this.comp('input3').val());//地址
//		console.log(this.comp('input4').val());//取件码
//		console.log(this.comp('input5').val());//取件码电话
//		console.log(localStorage.getItem('placetype'));//地址
//		console.log(this.comp('select1').val());//快递箱名称id
//		console.log(localStorage.getItem('period'));//上门时间段
//		console.log(this.comp('bxnr').val());//备注内容
	};
	//选择收货地址的标识
	var shdz=false;
	Model.prototype.button10Click = function(event){
		//event.source.addClass('abc');
//		alert(1)
		this.comp("placetypeOptions").setValue("state", 0);
		var row = event.bindingContext.$object;
		row.val("state", 1);
		shdz=true;
		if(shsj){
			$('[xid=registerBtn]').css('backgroundColor','#7bc83e');
			$('[xid=registerBtn]').attr('disabled',false);
			
		}
	};
	//收货时间的标识
	var shsj=false;
	Model.prototype.button5Click = function(event){
//		event.source.addClass('abc');
		this.comp("timeData").setValue("state", 0);
		var row = event.bindingContext.$object;
		row.val("state", 1);
		shsj=true;
		if(shdz){
			$('[xid=registerBtn]').css('backgroundColor','#7bc83e');
			$('[xid=registerBtn]').attr('disabled',false);
		}
	};

	Model.prototype.button1Click = function(event){
		justep.Shell.showPage(require.toUrl('./xieyi.w'),{
			type :"kd"
		});
	};

	Model.prototype.span1Click = function(event){
		var url=require.toUrl('./user/user-orderlist.w');
//		var url=require.toUrl('./xieyi.w');
		justep.Shell.showPage(url,{
			type : "kd",
		});
	};
	//tuichu
	Model.prototype.qaz = function(event){
		justep.Shell.closePage();

	};

	Model.prototype.modelActive = function(event){
		this.comp("placetypeOptions").setValue("state", 0);
		this.comp("timeData").setValue("state", 0);
		this.comp('bxnr').clear();
//		alert()
	};

	Model.prototype.input2Change = function(event){
		if(telphone!=this.comp('input2').val()){
			telphone=this.comp('input2').val();
		}
	};

	return Model;
});