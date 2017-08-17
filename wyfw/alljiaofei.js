define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
		this.yfk = justep.Bind.observable("");
		this.sfk = justep.Bind.observable("");
		this.yfksfk = justep.Bind.observable("");//缴费月份yfk-sfk 优惠金额
		this.jiaoyuefen = justep.Bind.observable("");//缴费月份
		this.typename = justep.Bind.observable("");//类型名称
		this.dazhefei = justep.Bind.observable("");//打折费
		this.dazheContent = justep.Bind.observable("");//打折
	};
	//	定义函数
		$(document).ajaxStart(function() {
	    	$('[xid=loadpopOver]').show();
	    });
	    $(document).ajaxStop(function() {
	    	$('[xid=loadpopOver]').hide();
	    });
	    $(document).ajaxError(function() {
	    	$('[xid=loadpopOver]').hide();
	    });
//	----------------------------------------------
	var common = require("../js/common");
	Model.prototype.util = common;
	var user = justep.Shell.user.get();//获取缓存用户表信息数据
//	----------------------------------------------	
	var nummoney;//欠费总数
	var newarry=[];//数组
	var newarryId=[];//数组
	var daze = '1';//折扣
	var tianfudaze = '1';//天府打折
	
	Model.prototype.modelInactive = function(event){
		this.getElementByXid('p5tingchejiaofeicp').innerText = '';
		this.getElementByXid('p3chepaihaoxomnxi').innerText = '';
		$('[xid=loadpopOver]').hide();
	};
//	----------------------------------------------
	//被挤掉
	Model.prototype.denglu = function(event){
		window.location.reload();
	};
	//姓名
	Model.prototype.modelModelConstruct = function(event){
		this.sfk.set('00.00');
		$('[xid=button2pay]').css('backgroundColor','#e3e3e3');
		$('[xid=col16pay]').css('backgroundColor','#e3e3e3');
		this.comp('button2pay').set({
			'disabled' : true
		});
		try {
			this.dazheContent.set(sessionStorage.getItem('zhesale'));
		} catch (e) {
				// TODO: handle exception
		}		
	};
	Model.prototype.modelActive = function(event){
		this.comp('wyjflistData').refreshData();
	};
//	---------------------------------------------- 
	//name
	Model.prototype.name = function(){
		return user.name;
	};
	//地址
	Model.prototype.addr = function(){
		return user.addr;
	};
//	----------------------------------------------
	Model.prototype.button1Click = function(event){
		var me=this;
			if(sessionStorage.getItem('state')=='1'){//如果欠费
				var data = {
					lp_id : user.lid,
					bid : user.bid,
					user_id : user.id,
					room_id : user.rid,
					money : /*'0.01',*/sessionStorage.getItem('money'),
					type :	sessionStorage.getItem('jiaofeitype'),
					feeId : sessionStorage.getItem('newarrys'),
					wyqfstate : '1',
					cart_id :sessionStorage.getItem('this.params.cart_id'),
					dataTime :  sessionStorage.getItem('dataTime'),
					v:localStorage.getItem('vv'),//存
					id : newarryId
				};
				justep.Shell.showPage(require.toUrl('./arrearage.w'),{
					type:'wyqf',
					data:data
				});
			}if(sessionStorage.getItem('state')=='2'){//预缴
				var data = {
					lp_id : user.lid,
					bid : user.bid,
					user_id : user.id,
					room_id : user.rid,
					money : /*"0.01",*/parseFloat(parseFloat(sessionStorage.getItem('money')).toFixed(2)),
					type : '预存'+sessionStorage.getItem('jiaofeitype'),
					dataTime :  sessionStorage.getItem('dataTime'),
					wyqfstate : '0',
					arr : newarry,
					cart_id :sessionStorage.getItem('this.params.cart_id'),
					num : localStorage.getItem('n'),
					v:localStorage.getItem('vv')//;sessionStorage.getItem("v"),//存
				};
				if(me.comp('select2').val()!=""){
					justep.Shell.showPage(require.toUrl('./arrearage.w'),{
					type:'wyqf',
					data:data
					});
				}else{
					me.util.showPop('请选择预存时长')
				}
			}
			if(sessionStorage.getItem('state')=='4'){
				
				var data = {
					lp_id : user.lid,
					bid : user.bid,
					user_id : user.id,
					room_id : user.rid,
					money : /*"0.01",*/parseFloat(parseFloat(sessionStorage.getItem('money')).toFixed(2)),
					type : sessionStorage.getItem('jiaofeitype'),
					wyqfstate : '1',
					//-----------------
					num : sessionStorage.getItem('nummmmmm'),
					cart_id :sessionStorage.getItem('this.params.cart_id'),
					v:localStorage.getItem('vv')//;sessionStorage.getItem("v"),//存
				};
				justep.Shell.showPage(require.toUrl('./arrearage.w'),{
					type:'wyqf',
					data:data
				});
			}
			newarryId=[];//数组
			/*日志打印处*/
			glob.logAjax('alljiaofei-提交订单',sessionStorage.getItem('state'),'/mobile/index.php?act=index&op=panda',data,'alljiaofei提交订单,生成账单','4');/*日志打印处*/
	};

	//物业缴费账单列表
	var nummoney;//
	var restartCount=0;/*重连次数*/
	Model.prototype.wyjflistDataCustomRefresh = function(event){
		this.sfk.set('00.00');
		$('[xid=button2pay]').css('backgroundColor','#e3e3e3');
		$('[xid=col16pay]').css('backgroundColor','#e3e3e3');
		this.comp('button2pay').set({
			'disabled' : true
		});
		if(this.params.waipan=='waipan'){
			var url =require.toUrl(this.util.apiPath +'/zhixines/api/jiaofei/wpqianfei'),me=this;//外盘
		}else{
			var url =require.toUrl(this.util.apiPath +'/zhixines/api/jiaofei/arrears'),me=this;//内盘
		}
		
		if(!!this.params.jftype){//如果有传参
			if(this.params.jftype=='1'){
				this.typename.set('缴纳物业费');
				sessionStorage.setItem('jiaofeitype', '物业费');
				sessionStorage.setItem('pay_awy', '1');
				var Pdata ={
					lp_id : user.lid,
					room_id : user.rid,
					type : '0'//物业费0
				};
				$('[xid=output4addr]').show();
				sessionStorage.setItem('this.params.cart_id', '');
			}
//			--------------------------------------------------
			if(this.params.jftype=='4'){
				this.typename.set('缴纳水费');
				sessionStorage.setItem('jiaofeitype', '水费');
				sessionStorage.setItem('pay_awy', '4');
				var Pdata ={
					lp_id : user.lid,
					room_id : user.rid,
					type : '1'//缴水费1
				};
				$('[xid=output4addr]').show();
				sessionStorage.setItem('this.params.cart_id', '');
			}
//			--------------------------------------------------
			if(this.params.jftype=='3'){
				this.typename.set('缴纳垃圾费');
				sessionStorage.setItem('jiaofeitype', '垃圾费');
				sessionStorage.setItem('pay_awy', '3');
				var Pdata ={
					lp_id : user.lid,
					room_id : user.rid,
					type : '2'//垃圾费2
				};
				$('[xid=output4addr]').show();
				sessionStorage.setItem('this.params.cart_id', '');
			}
//			--------------------------------------------------
//			alert(this.params.jftype);
			if(this.params.jftype=='2'){
				this.typename.set('缴纳停车费');
				this.getElementByXid('p5tingchejiaofeicp').innerText = '车牌号';
				this.getElementByXid('p3chepaihaoxomnxi').innerText = this.params.park_cart_num;
				$('[xid=output4addr]').hide();
				sessionStorage.setItem('jiaofeitype', '停车费');
				sessionStorage.setItem('this.params.cart_id', this.params.cart_id);
				sessionStorage.setItem('pay_awy', '2');
				var Pdata ={
					cart_id :this.params.cart_id,
					lp_id : user.lid,
					room_id : user.rid,
					type : '3'//缴费3
				};
				
//				document.getElementById('type').innerText = '停车费';
			}
//			--------------------------------------------------
			if(this.params.jftype=='电费'){
				this.typename.set('缴纳电费');
				sessionStorage.setItem('jiaofeitype', '电费');
				sessionStorage.setItem('pay_awy', '5');
//				document.getElementById('type').innerText = '电费11111';
				var Pdata ={
					lp_id : user.lid,
					room_id : user.rid,
					type : '4',//缴费3、rid : user.rid,
					rid : user.rid,
				};	
			}
//			--------------------------------------------------
			if(this.params.jftype=='气费'){
				this.typename.set('缴纳气费');
				sessionStorage.setItem('jiaofeitype', '气费');
				sessionStorage.setItem('pay_awy', '6');
//				document.getElementById('type').innerText = '气费';
				var Pdata ={
					lp_id : user.lid,
					room_id : user.rid,
					type : '5',//缴费3
					rid : user.rid,
				};	
			}
//			--------------------------------------------------
		}else{
			this.typename.set('');
			me.util.showPop('error:没对象')
		}//如果有传参-------------------
		$.ajax({
			url : url,
			data: Pdata,
			type : 'post',
			timeout : 10000,
			dataType : 'json',
			async : true,
			success : function(e){
				restartCount=0;/*成功初始化*/
				/*日志打印处*/
				try {
					glob.logAjax('alljiaofei-请求欠费参数',JSON.stringify(e),url,Pdata,'alljiaofei请求欠费参数','4');/*日志打印处*/
				} catch (e) {
					// TODO: handle exception
				}
				
				/*今来判断下物业水费垃圾费停车费之外在这个里面获取discount的打折信息并替换zhesalenum*/
				
				newarryId=[];//数组
//				alert(e.datas.discount!=null||e.datas.payment_discount!=null)
				if(e.datas.discount!=null&&e.datas.discount!='100.00'){	
					sessionStorage.setItem('zhifuyongzhekou',e.datas.discount);/*支付用折扣*/
					if(document.getElementById('div8shijijiaofei')!=null){
						document.getElementById('div8shijijiaofei').style.height = 'auto';
						document.getElementById('div8shijijiaofei').style.lineHeight = '200%';
					}
					$('[xid=div10youhuijiaofei]').show();
					sessionStorage.setItem('zhesalenum',e.datas.discount);
					/*---------------------------*/
//					alert(e.datas.payment_discount!=null&&e.datas.payment_discount!='100.00')
					if(e.datas.payment_discount!=null&&e.datas.payment_discount!='100.00'){	
						if(document.getElementById('div8shijijiaofei')!=null){
							document.getElementById('div8shijijiaofei').style.height = 'auto';
							document.getElementById('div8shijijiaofei').style.lineHeight = '200%';
						}
						$('[xid=div5div10youhuijiaofei]').show();
						$('[xid=div10youhuijiaofei]').hide();
						
						sessionStorage.setItem('zhesalenum',e.datas.payment_discount*e.datas.discount/100);//钱包余额优惠打折数
						me.getElementByXid('span9jkirencxzjs').innerText = e.datas.payment_describe;//钱包余额优惠描述
					}else{
//						sessionStorage.setItem('zhesalenum','100');
//						document.getElementById('div8shijijiaofei').style.height = '0.98rem';
//						document.getElementById('div8shijijiaofei').style.lineHeight = '0.98rem';
//						$('[xid=div10youhuijiaofei]').hide();
					}
					/*------------------------------*/
				}else{
					sessionStorage.setItem('zhifuyongzhekou','100');/*支付用折扣*/
					sessionStorage.setItem('zhesalenum','100');
					if(document.getElementById('div8shijijiaofei')!=null){
						document.getElementById('div8shijijiaofei').style.height = '0.98rem';
						document.getElementById('div8shijijiaofei').style.lineHeight = '0.98rem';
					}
					$('[xid=div10youhuijiaofei]').hide();
					/*---------------------------*/
					if(e.datas.payment_discount!=null){	
						if(document.getElementById('div8shijijiaofei')!=null){
							document.getElementById('div8shijijiaofei').style.height = 'auto';
							document.getElementById('div8shijijiaofei').style.lineHeight = '200%';
						}
						$('[xid=div5div10youhuijiaofei]').show();
						$('[xid=div10youhuijiaofei]').hide();
						
						sessionStorage.setItem('zhesalenum',e.datas.payment_discount);//钱包余额优惠打折数
						//me.getElementByXid('span9jkirencxzjs').innerText = e.datas.payment_describe;//钱包余额优惠描述
						$('[xid=span9jkirencxzjs]').html(e.datas.payment_describe);
					}else{
						sessionStorage.setItem('zhesalenum','100');
						if(document.getElementById('div8shijijiaofei')!=null){
							document.getElementById('div8shijijiaofei').style.height = '0.98rem';
							document.getElementById('div8shijijiaofei').style.lineHeight = '0.98rem';
						}
						$('[xid=div10youhuijiaofei]').hide();
					}
					/*------------------------------*/
				}
//				/*---------------------*/
				$('[xid=span34qianfei]').show();
				if(e.datas.type=='1'){//欠费	
					sessionStorage.setItem('state', e.datas.type);
					sessionStorage.setItem('money', e.datas.money);
					sessionStorage.setItem('dataTime', e.datas.list_datas[0].beginDate);
					$('[xid=row14qianfeijiaofei]').show();
					$('[xid=button4shijian]').hide();
					$('[xid=div5alljiaofei]').show();

					me.jiaoyuefen.set(e.datas.date);//缴费月份显示
					me.yfk.set(e.datas.money);//应付款金额
					me.sfk.set(parseFloat(parseFloat((parseInt(sessionStorage.getItem('zhesalenum'))/100)*e.datas.money).toFixed(2)));
					//值为0，按钮置灰
					if(parseFloat(parseFloat((parseInt(sessionStorage.getItem('zhesalenum'))/100)*e.datas.money).toFixed(2))!=0){
						$('[xid=button2pay]').css('backgroundColor','#7bc83e');
						$('[xid=col16pay]').css('backgroundColor','#7bc83e');
							me.comp('button2pay').set({
								'disabled' : false
							});
					}
					else{
						$('[xid=button2pay]').css('backgroundColor','#e3e3e3');
						$('[xid=col16pay]').css('backgroundColor','#e3e3e3');
						me.comp('button2pay').set({
							'disabled' : true
						});
					}
					var sfkmoney=parseFloat(parseFloat((parseInt(sessionStorage.getItem('zhesalenum'))/100)*e.datas.money).toFixed(2));
					me.yfksfk.set(parseFloat(parseFloat(e.datas.money-sfkmoney).toFixed(2)));/*应付款减实付款*/

					try {
						me.comp('mingxiData').loadData(e.datas.list_datas);
					} catch (e) {
						// TODO: handle exception
						me.util.showPop('数据为空：此处暂无信息，请到别地儿溜达');
						/*日志打印处*/
						glob.logAjax('alljiaofei-请求欠费参数',e,url,Pdata,'alljiaofei——load明细数据e.datas.type==1'+user.id,'3');/*日志打印处*/
					}	
					var newarrys = new Array();
					console.log((sessionStorage.getItem('zhesalenum')/100)*e.datas.money);
					try {
						for(var i=0;i<e.datas.fee_id.length;i++){
							newarrys.push(e.datas.fee_id[i]);
						}				
					} catch (e) {
							// TODO: handle exception
							console.log('请联系客服');
							/*日志打印处*/
							glob.logAjax('alljiaofei-357',e,url,Pdata,'alljiaofei——fee_id遍历e.datas.type==1'+user.id,'3');/*日志打印处*/
					}
					/*外盘ID */
					for(var y=0;y<e.datas.list_datas.length;y++){
	//						newarry=e.datas.fee_id[i]
							newarryId.push(e.datas.list_datas[y].id);
					}
					sessionStorage.setItem('newarrys', newarrys);
				}
				if(e.datas.type=='2'){//预缴
					$('[xid=div1selectyujiao]').show();
					$('[xid=span34qianfei]').hide();
					$('[xid=div5alljiaofei]').hide();
					sessionStorage.setItem('state', e.datas.type);
					sessionStorage.setItem('money', e.datas.money);
					sessionStorage.setItem('dataTime', e.datas.list_datas[0].beginPayDate);
					sessionStorage.setItem('newarrys', e.datas.list_datas[0].payId);
					me.jiaoyuefen.set('请选择预交月份');//缴费月份显示
					sessionStorage.setItem('beginPayDate', e.datas.list_datas[0].beginPayDate);
					sessionStorage.setItem('start_date',e.datas.list_datas[0].start_date);
					me.comp('datatimeData').loadData(e.datas.month_list);
					me.yfk.set('00.00');//应付款金额
					me.yfksfk.set('00.00');
					nummoney = parseFloat(parseFloat(e.datas.list_datas[0].everyMonAccount).toFixed(2));
					newarry = e.datas.list_datas;
				}
				if(e.datas.type=='3'){//啥都不能干
					me.util.showPop(e.datas.msg);
					me.jiaoyuefen.set('暂无预交月份');//缴费月份显示
					me.yfk.set('00.00');//应付款金额
					$('[xid=div5alljiaofei]').hide();
				}
				if(e.datas.type=='4'){//外盘欠费
					
					$('[xid=button4shijian]').hide();
					$('[xid=row14qianfeijiaofei]').show();
					$('[xid=div5alljiaofei]').show();
					me.yfk.set(e.datas.money);//应付款金额
					me.sfk.set(parseFloat(parseFloat((parseInt(sessionStorage.getItem('zhesalenum'))/100)*e.datas.money).toFixed(2)));
					//值为0，按钮置灰
					if(parseFloat(parseFloat((parseInt(sessionStorage.getItem('zhesalenum'))/100)*e.datas.money).toFixed(2))!=0){
						$('[xid=button2pay]').css('backgroundColor','#7bc83e');
						$('[xid=col16pay]').css('backgroundColor','#7bc83e');
							me.comp('button2pay').set({
								'disabled' : false
							});
					}
					else{
						$('[xid=button2pay]').css('backgroundColor','#e3e3e3');
						$('[xid=col16pay]').css('backgroundColor','#e3e3e3');
						me.comp('button2pay').set({
							'disabled' : true
						});
					}
					var sfkmoney=parseFloat(parseFloat((parseInt(sessionStorage.getItem('zhesalenum'))/100)*e.datas.money).toFixed(2));
					me.yfksfk.set(parseFloat(parseFloat(e.datas.money-sfkmoney).toFixed(2)));/*应付款减实付款*/
					document.getElementById('span18').innerText = e.datas.money;
					try {
						me.comp('mingxiData').loadData(e.datas.list_datas);
					} catch (e) {
						// TODO: handle exception
						me.util.showPop('数据为空：此处暂无信息，请到别地儿溜达');
						/*日志打印处*/
						glob.logAjax('alljiaofei',e,url,Pdata,'alljiaofei-加载明细数据e.datas.type==4','3');/*日志打印处*/
					}					

					me.jiaoyuefen.set(e.datas.date);//缴费月份显示
					sessionStorage.setItem('state', '4');
					sessionStorage.setItem('dataTime', e.datas.list_datas[0].beginPayDate);
					sessionStorage.setItem('money', e.datas.money);
					sessionStorage.setItem('nummmmmm',  e.datas.num);
				}
				if(e.datas.type=='msg'){//数据错误
					me.util.showPop(e.datas.msg);
				}
	
			},error:function(e,textStatus){
//				console.log(textStatus);
				/*日志打印处*/
				glob.logAjax('alljiaofei--'+textStatus,e,url,'alljiaofei-ajax请求出错'+user.id,'2');/*日志打印处*/
				if(textStatus=='timeout'&&restartCount<2){
					restartCount++;
					me.util.showPop('无网络/网络异常/网络超时：正在重连...');
					me.comp('wyjflistData').refreshData();
				}else if(textStatus=='timeout'&&restartCount>2){
					me.util.showPop('无网络/网络异常：连接信号太弱，请检查网络');
				}else{
					me.util.showPop('数据异常：哦豁，程序开小差了，紧急修复中...');
				}
			},complete:function(xhr,textStatus){
				//				console.log(textStatus);
			}
			
		});				
		//	----------------------------------------------
		
	};
	Model.prototype.datatimeDataCustomRefresh = function(event){

	};
	Model.prototype.select2Change = function(event){
		localStorage.setItem('n',this.comp('select2').val());
		this.yfk.set(parseFloat(parseFloat(nummoney*this.comp('select2').val()).toFixed(2)));//应付款金额
		this.sfk.set(parseFloat(parseFloat((parseInt(sessionStorage.getItem('zhesalenum'))/100)*nummoney*this.comp('select2').val()).toFixed(2)));//实际付款金额
		//值为0，按钮置灰
		if(parseFloat(parseFloat((parseInt(sessionStorage.getItem('zhesalenum'))/100)*nummoney*this.comp('select2').val()).toFixed(2))!=0){
			$('[xid=button2pay]').css('backgroundColor','#7bc83e');
			$('[xid=col16pay]').css('backgroundColor','#7bc83e');
			this.comp('button2pay').set({
			'disabled' : false
			});
		}
		else{
			$('[xid=button2pay]').css('backgroundColor','#e3e3e3');
			$('[xid=col16pay]').css('backgroundColor','#e3e3e3');
			this.comp('button2pay').set({
				'disabled' : true
			});
		}
		var yfkmoney = parseFloat(parseFloat(nummoney*this.comp('select2').val()).toFixed(2));
		var sfkmoney = parseFloat(parseFloat((parseInt(sessionStorage.getItem('zhesalenum'))/100)*nummoney*this.comp('select2').val()).toFixed(2));
		this.yfksfk.set(parseFloat(parseFloat(yfkmoney-sfkmoney).toFixed(2)));
//		document.getElementById('span18').innerText = parseFloat(nummoney*this.comp('select2').val()).toFixed(2);
		sessionStorage.setItem('money',nummoney*this.comp('select2').val());	
      	/*-------------------------------------------------*/
      	var d = new Date(sessionStorage.getItem('beginPayDate'));
            // 因为getMonth()获取的月份的值只能在0~11之间所以我们在进行setMonth()之前先给其减一
      		//            d.getMonth()+1当前月份
//        d.setMonth((d.getMonth()+1) + this.comp('select2').val());
        var yy1 = d.getFullYear();
        var mm1 = (d.getMonth()+1) + parseInt(this.comp('select2').val());
        var dd1 = d.getDate();
        if (mm1 > 12 ) {
            yy1 = d.getFullYear()+parseInt(1);
            mm1 = mm1-12
        }
        if (mm1 < 10 ) {
            mm1 = '0' + mm1;
        }
        if (dd1 < 10) {
            dd1 = '0' + dd1;
        }
        this.jiaoyuefen.set(sessionStorage.getItem('start_date')+'至'+yy1 + '年' + mm1 + '月');//缴费月份显示
	};
	Model.prototype.tuichu = function(event){
		justep.Shell.closePage();
	};
	//缴费订单		跳转
	Model.prototype.button3jiaofeijiluClick = function(event){
		justep.Shell.showPage(require.toUrl('../user/jiaofeiorder.w'))
	};



	return Model;
});