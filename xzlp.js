define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};
	//选择楼盘
	var myBoolean=false;
//	var sf;
	//	定义函数
	var common = require("./js/common");
	Model.prototype.util = common;
//	var user = justep.Shell.user.get();//获取缓存用户表信息数据	
	
	var Model = function() {
		this.callParent();
		if (!justep.Shell.regdist) {
			justep.Shell.regdist = justep.Bind.observable();
			justep.Shell.regdist.set({
				cid : 0,
				ctxt : '',
				lid : 0,
				ltxt : '',
				bid : 0,
				rid : 0,
				brtxt : ''
			});
		}
	};
		//	定义函数
	var common = require("./js/common");
	Model.prototype.util = common;
//	var user = justep.Shell.user.get();//获取缓存用户表信息数据
	Model.prototype.validate = require("./js/validate");
	Model.prototype.util = require("./js/common");
/*	Model.prototype.registerBtnClick = function(event) {
			var param = this.comp('ctxt').val() + ' ' + this.comp('ltxt').val() + ' ' + this.comp('brtxt').val();//房屋详细地址
			var cid = parseInt(this.getElementByXid('cid').value);
			var lid = parseInt(this.getElementByXid('lid').value);
			var bid = parseInt(this.getElementByXid('bid').value);
			var rid = parseInt(this.getElementByXid('rid').value);
			localStorage.setItem('cid',cid);//缓存
			localStorage.setItem('lid',lid);//缓存
			localStorage.setItem('bid',bid);//缓存
			localStorage.setItem('rid',rid);//缓存
			localStorage.setItem('param',param);//缓存
//			alert(cid)
//			alert(lid)
//			alert(bid)
//			alert(rid)
			//如果是业主家属，租户则需要验证业主手机号码。
//			if(myBoolean===false){
//				//this.util.showMsg('justep.Util.hint(d.msg);！', 'danger');
//				this.util.showPop('业主手机号码验证不正确');
//				return false;
//			}
			//验证手机号码,获取号码
			 justep.Shell.showPage(require.toUrl('./loupanmobile.w'), {
				 rid : rid,
////				 shenfenid : localStorage.getItem('shenfenid')
			 });
		 
	};*/

	Model.prototype.modelLoad = function(event) {
		var me = this;
		$.get(this.util.apiPath + '/api/user/initreg', function(data) {
			me.sfData.loadData(data.shenfen);
			me.zyData.loadData(data.occupation);
		});
//		console.log(this.util.callback);
	};

	Model.prototype.getdist = function(k) {
		if (!justep.Shell.regdist) {
			return '';
		}
		var regdist = justep.Shell.regdist.get();
		return regdist[k];
	}
	
	
	/*Model.prototype.seldist = function(event) {
		var regdist = justep.Shell.regdist.get(), $e = $(event.currentTarget), xid = $e.attr('xid'), citycall = function(d) {
			justep.Shell.regdist.set({
				cid : d.cid,
				ctxt : d.ctxt,
				lid : 0,
				ltxt : '',
				bid : 0,
				rid : 0,
				brtxt : ''
			});
		}, lpcall = function(d) {
			var dist = justep.Shell.regdist.get();
			justep.Shell.regdist.set({
				cid : dist.cid,
				ctxt : dist.ctxt,
				lid : d.lid,
				ltxt : d.ltxt,
				bid : 0,
				rid : 0,
				brtxt : ''
			});
		}, brcall = function(d) {
			var dist = justep.Shell.regdist.get();
			dist.bid = d.bid;
			dist.rid = d.rid;
			dist.brtxt = d.brtxt;
			justep.Shell.regdist.set(dist);
		};
		if (regdist.cid == 0) {
			justep.Shell.showPage('selcity', {
				data : {
					callback : citycall,
					callback2 : lpcall,
					callback3 : brcall
				}
			});
		} else if (regdist.lid == 0) {
			if (xid == 'ctxt')
				justep.Shell.showPage('selcity', {
					data : {
						callback : citycall,
						callback2 : lpcall,
						callback3 : brcall
					}
				});
			else
				justep.Shell.showPage('sellp', {
					cid : regdist.cid,
					ctxt : regdist.ctxt,
					data : {
						callback : lpcall,
						callback2 : brcall
					}
				});
		} else {
			if (xid == 'ctxt') {
				justep.Shell.showPage('selcity', {
					data : {
						callback : citycall,
						callback2 : lpcall,
						callback3 : brcall
					}
				});
			} else if (xid == 'ltxt') {
				justep.Shell.showPage('sellp', {
					cid : regdist.cid,
					ctxt : regdist.ctxt,
					data : {
						callback : lpcall,
						callback2 : brcall
					}
				});
			} else {
				justep.Shell.showPage('selban', {
					cid : regdist.cid,
					ctxt : regdist.ctxt,
					lid : regdist.lid,
					ltxt : regdist.ltxt,
					data : {
						callback : brcall
					}
				});
			}
		}
	};

	function xz(){
		var regdist = justep.Shell.regdist.get(), $e = $(event.currentTarget), xid = $e.attr('xid'), citycall = function(d) {
			justep.Shell.regdist.set({
				cid : d.cid,
				ctxt : d.ctxt,
				lid : 0,
				ltxt : '',
				bid : 0,
				rid : 0,
				brtxt : ''
			});
		}, lpcall = function(d) {
			var dist = justep.Shell.regdist.get();
			justep.Shell.regdist.set({
				cid : dist.cid,
				ctxt : dist.ctxt,
				lid : d.lid,
				ltxt : d.ltxt,
				bid : 0,
				rid : 0,
				brtxt : ''
			});
		}, brcall = function(d) {
			var dist = justep.Shell.regdist.get();
			dist.bid = d.bid;
			dist.rid = d.rid;
			dist.brtxt = d.brtxt;
			justep.Shell.regdist.set(dist);
		};
		if (regdist.cid == 0) {
			justep.Shell.showPage('selcity', {
				data : {
					callback : citycall,
					callback2 : lpcall,
					callback3 : brcall
				}
			});
		} else if (regdist.lid == 0) {
			if (xid == 'ctxt')
				justep.Shell.showPage('selcity', {
					data : {
						callback : citycall,
						callback2 : lpcall,
						callback3 : brcall
					}
				});
			else
				justep.Shell.showPage('sellp', {
					cid : regdist.cid,
					ctxt : regdist.ctxt,
					data : {
						callback : lpcall,
						callback2 : brcall
					}
				});
		} else {
			if (xid == 'ctxt') {
				justep.Shell.showPage('selcity', {
					data : {
						callback : citycall,
						callback2 : lpcall,
						callback3 : brcall
					}
				});
			} else if (xid == 'ltxt') {
				justep.Shell.showPage('sellp', {
					cid : regdist.cid,
					ctxt : regdist.ctxt,
					data : {
						callback : lpcall,
						callback2 : brcall
					}
				});
			} else {
				justep.Shell.showPage('selban', {
					cid : regdist.cid,
					ctxt : regdist.ctxt,
					lid : regdist.lid,
					ltxt : regdist.ltxt,
					data : {
						callback : brcall
					}
				});
			}
		}
	}*/
	
	
	//选择业主
	Model.prototype.labelEdit1Click = function(event){
		localStorage.setItem('shenfenid','15');//业主15
		justep.Shell.showPage(require.toUrl('./xzlpDetail.w'));
//		xz();
//		$('[xid=labelEditshenfen]').css("display", "none");
		myBoolean=true;
	};
	//	选择家属
	Model.prototype.labelEdit2Click = function(event){
		localStorage.setItem('shenfenid','16');//非业主非16
		justep.Shell.showPage(require.toUrl('./xzlpDetail.w'));
//		xz();
//		justep.Shell.showPage(require.toUrl('./sel_city.w'))
//		if (sf != 15) {
//			$('[xid=labelEditshenfen]').css("display", "");
			myBoolean=false;
//		}else{
			
//		}
	};
//	选择租户
	Model.prototype.labelEdit3Click = function(event){
		localStorage.setItem('shenfenid','17');//非业主非17
		justep.Shell.showPage(require.toUrl('./xzlpDetail.w'));
//		xz();
//		justep.Shell.showPage(require.toUrl('./sel_city.w'))
//		if (sf != 15) {
//			$('[xid=labelEditshenfen]').css("display", "");
			myBoolean=false;
//		}else{
			
//		}
	};
	Model.prototype.modelActive = function(event){
		$('[xid=labelEdit1]').show();
		$('[xid=labelEdit2]').show();
		$('[xid=labelEdit3]').show();
//		if(localStorage.getItem('shenfenid')=='15'){
//			$('[xid=labelEdit1]').show();
//			$('[xid=labelEdit2]').css("display", "none");
//			$('[xid=labelEdit3]').css("display", "none");
//		}
//		if(localStorage.getItem('shenfenid')=='16'){
//			$('[xid=labelEdit2]').show();
//			$('[xid=labelEdit1]').css("display", "none");
//			$('[xid=labelEdit3]').css("display", "none");
//		}
//		if(localStorage.getItem('shenfenid')=='17'){
//			$('[xid=labelEdit3]').show();
//			$('[xid=labelEdit1]').css("display", "none");
//			$('[xid=labelEdit2]').css("display", "none");
//		}
	};
	Model.prototype.button1Click = function(event){
		localStorage.setItem('x5Version + introPage','yes');
		window.location.reload();
	};
	return Model;
});