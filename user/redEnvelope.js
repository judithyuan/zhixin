define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
		//钱包余额
		this.wallet=justep.Bind.observable('');
		//累计金额
		this.summation=justep.Bind.observable('');
		//红包总数量
		this.allCount=justep.Bind.observable('');
		//红包的增加数量
		this.addCount=justep.Bind.observable('');
		//红包的减少数量
		this.reduceCount=justep.Bind.observable('');
	};
	//	定义函数
	var common = require("../js/common");
	Model.prototype.util = common;
	var user = justep.Shell.user.get();//获取缓存用户表信息数据
	//总页数
	var allPage=0;
	//当前页数
	var currPage=0;
	//类型
	var typeChange='all';
	//this
	var my;
	//增加的页数
	var addPage=0;
	//减少的页数
	var decreasePage=0;
	//当前数据的总页数
	var dataPage=0;
	//点击全部
	Model.prototype.div3allRedClick = function(event){
		currPage=1;
		dataPage=allPage;
		$('.click-style').removeClass('click-style');
		$('[xid=div3allRed]').addClass('click-style');
		typeChange='all';
		pull(typeChange,currPage);
	};
	//点击增加
	
	Model.prototype.div6addClick = function(event){
		currPage=1;
		dataPage=addPage;
		$('.click-style').removeClass('click-style');
		$('[xid=div6add]').addClass('click-style');
		typeChange='add';
		pull(typeChange,currPage);	
	};
	//点击减少
	
	Model.prototype.div9reduceClick = function(event){
		currPage=1;
		dataPage=decreasePage;
		$('.click-style').removeClass('click-style');
		$('[xid=div9reduce]').addClass('click-style');
		typeChange='decrease';
		pull(typeChange,currPage);
	};
	//
	Model.prototype.modelLoad = function(event){
		my=this;
		var me=this;
		var datas={
				user_id:user.id,
				v:user.v,
				page:1,
				rows:5,
				type:'all'
		};
		var url=common.apiPath+'/zhixines/api/GetRedPacket/getUserRpLogList';
		console.log("load");
		$.ajax({
			url:url,
			type:'post',
			dataType:'json',
			data:datas,
			async: true,
			success:function(d){
				//me.redRecord.loadData(d.data);
				if(d.data.log_list==undefined){
					return;
				}
				allPage=d.data.tatal_nums%5!=0?parseInt(d.data.tatal_nums/5)+1:parseInt(d.data.tatal_nums/5);
				dataPage=allPage;
//				console.log(allPage);
				me.redRecordList.loadData(d.data.log_list);
				me.wallet.set(parseFloat(d.data.redpacket_amount).toFixed(2));
				me.summation.set(parseFloat(d.data.tatal_amount).toFixed(2));
				me.allCount.set(d.data.tatal_nums);
				me.addCount.set(d.data.add_nums);
				addPage=d.data.add_nums%5!=0?parseInt(d.data.add_nums/5)+1:parseInt(d.data.add_nums/5);
				me.reduceCount.set(d.data.decrease_nums);
				decreasePage=d.data.decrease_nums%5!=0?parseInt(d.data.decrease_nums/5)+1:parseInt(d.data.decrease_nums/5);
			}
		});
	};
	
	Model.prototype.scrollRecordPullUp = function(event){
		//$('[xid=span21]').css('fontSize','0');
		currPage++;
		if(currPage>=dataPage){
			currPage=dataPage;
		}
		//typeChange
		pull(typeChange,currPage);
	};
	//封装上拉下滑的刷新
	var pull=function(type,page){
		var datas={
				user_id:user.id,
				v:user.v,
				page:page,
				rows:5,
				type:type
		};
		var url=common.apiPath+'/zhixines/api/GetRedPacket/getUserRpLogList';
		$.ajax({
			url:url,
			type:'post',
			dataType:'json',
			data:datas,
			async: true,
			success:function(d){
				//me.redRecord.loadData(d.data);
				if(d.data.log_list==undefined){
					return;
				}else{
					my.redRecordList.loadData(d.data.log_list);
				}
			}
		});
	};
	Model.prototype.scrollRecordPullDown = function(event){
		currPage--;
		if(currPage<=1){
			currPage=1;
		}
		console.log("减少");
		pull(typeChange,currPage);
	};
	
	return Model;
});