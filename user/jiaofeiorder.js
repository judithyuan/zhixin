define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
	Model.prototype.util = require("../js/common");
	//传参
	Model.prototype.modelParamsReceive = function(event){
		if(this.params.fyType=='dianfei'){
			$('[xid=tabItem2dianfei]').trigger('click');
		}
		if(this.params.fyType=='wyqf'){
//			$('[xid=tabItem2dianfei]').trigger('click');
		}
		if(this.params.fyType=='ljfnew'){
			$('[xid=tabItem1ljfnew]').trigger('click');
		}
		if(this.params.fyType=='qifei'){
			$('[xid=tabItem3qifei]').trigger('click');
		}
		if(this.params.fyType=='water'){
			$('[xid=tabItem8water]').trigger('click');
		}
		if(this.params.fyType=='tcjf'){
			$('[xid=tabItem8tcjf]').trigger('click');
		}
	};	
	//物业费
	Model.prototype.allDataCustomRefresh = function(event){
		var user=justep.Shell.user.get();
		var data={
			id : user.id,
			v:localStorage.getItem('vv') 
		};
		$.post(this.util.apiPath + '/zhixines/api/jiaofei/wyzhangdanlist',data,function(d){
//			alert(d.length)
			event.source.loadData(d);
			if(d.length==undefined){
				$('[xid=div3]').show();
			}
		});
	};	

	Model.prototype.tcfDataCustomRefresh = function(event){
		var user=justep.Shell.user.get();
		var data={
			id : user.id,
			v:localStorage.getItem('vv')
		};
		$.post(this.util.apiPath + '/zhixines/api/jiaofei/tczhangdanlist',data,function(d){
				event.source.loadData(d);
				//console.log(d.rows);
				if(d.length==undefined){
					$('[xid=div2]').show();
				}		
		});
	};	

	Model.prototype.sfDataCustomRefresh = function(event){
		var user=justep.Shell.user.get();
		var data={
			id : user.id ,
			v:localStorage.getItem('vv')
		};
		$.post(this.util.apiPath + '/zhixines/api/jiaofei/sfzhangdanlist',data,function(d){
			//console.log(d);
			event.source.loadData(d);
			if(d.length==undefined){
				$('[xid=div1]').show();
			}			
		});
	};	

	Model.prototype.lajiDataCustomRefresh = function(event){
		var user=justep.Shell.user.get();
		var data={
			id : user.id,
			v:localStorage.getItem('vv')
		};
		$.post(this.util.apiPath + '/zhixines/api/jiaofei/ljzhangdanlist',data,function(d){
//			console.log(d);
			event.source.loadData(d);
			if(d.length==undefined){
				$('[xid=div5]').show();
			}			
		});		
	};	
//	电费
	Model.prototype.dianfeiDataCustomRefresh = function(event){
		var user=justep.Shell.user.get();
		var data={
			user_id : user.id,
			v:localStorage.getItem('vv'),
			type:'电费'
		};
		$.post(this.util.apiPath + '/zhixines/api/jiaofei/pay_order_list',data,function(d){
			console.log(JSON.parse(d).datas.length);
			event.source.loadData(JSON.parse(d).datas);
			if(JSON.parse(d).datas.length=='0'){
				$('[xid=div6]').show();
			}			
		});	
	};	
//气费
	Model.prototype.qifeiDataCustomRefresh = function(event){
		var user=justep.Shell.user.get();
		var data={
			user_id : user.id,
			v:localStorage.getItem('vv'),
			type:'气费'
		};
		$.post(this.util.apiPath + '/zhixines/api/jiaofei/pay_order_list',data,function(d){
//			console.log(JSON.parse(d).datas.length);
			event.source.loadData(JSON.parse(d).datas);
			if(JSON.parse(d).datas.length=='0'){
				$('[xid=div4]').show();
			}			
		});	
	};	



	return Model;
});