define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Timer = require("$UI/system/components/justep/timer/timer");
	var common = require("./js/common");
	//设定验证的手机号码是否通过，默认为false
	var myBoolean=false;
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
	function xuanquloupan(){
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
	}
	Model.prototype.validate = require("./js/validate");

	Model.prototype.yzhuBtn = function(event){
		localStorage.setItem("yezhu", "业主");
		localStorage.setItem("shenfenid", "15");
		xuanquloupan();
		this.comp("input2").val('业主');
		
	};
	Model.prototype.jiashuBtn = function(event){
		localStorage.setItem("jiashu", "家属");
		localStorage.setItem("shenfenid", "16");
		xuanquloupan();

		this.comp("input2").val('家属');
	};
	Model.prototype.zuhuBtn = function(event){
		localStorage.setItem("zuhu", "租户");
		localStorage.setItem("shenfenid", "17");
		xuanquloupan();

		this.comp("input2").val('租户');
	};
	//创建数据组件
	Model.prototype.getdist = function(k) {
		if (!justep.Shell.regdist) {
			return '';
		}
		var regdist = justep.Shell.regdist.get();
		return regdist[k];
	}
	Model.prototype.registerBtnClick = function(event){
		if(this.comp("input2").val()==""){
			this.comp("registerBtn").set({
					  "disabled":  true
			});
//			alert();
		}else{
			localStorage.setItem("ctxt", this.getdist('ctxt'));
			localStorage.setItem("ltxt", this.getdist('ltxt'));
			localStorage.setItem("brtxt", this.getdist('brtxt'));
			localStorage.setItem("shenfen", this.comp("input2").val());
	//		localStorage.removeItem("")
//			alert(this.comp("input2").val());
	//		justep.Shell.showPage(require.toUrl("./chooseshenfen.w"),{
	////			phone : this.comp("mobile").val()
	//		});
			this.comp("registerBtn").set({
				  "disabled":  false
			});
			$("[xid=registerBtn]").css("background-color","#7bc93d");
			justep.Shell.showPage('yanzheng');
		}
		
	};

	


	
	Model.prototype.modelActive = function(event){
		
		if(this.comp("input2").val()!=""){
			$('[xid=labelEdit1]').hide();
			$('[xid=labelEdit2]').hide();
			$('[xid=labelEdit3]').hide();
			$('[xid=labelEdit6]').show();
			$('[xid=labelEdit7]').show();
			$('[xid=labelEdit8]').show();
			$('[xid=labelEdit9]').show();
			$("[xid=registerBtn]").css("background-color","#7bc93d");
		}
		
	};

	


	
	return Model;
});
