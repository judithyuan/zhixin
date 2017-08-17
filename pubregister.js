define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Timer = require("$UI/system/components/justep/timer/timer");
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
	Model.prototype.validate = require("./js/validate");
	Model.prototype.util = require("./js/common");
	Model.prototype.registerBtnClick = function(event) {
		var $readagree = this.comp("readagree").$domNode;
		if (!$readagree.find(':checkbox')[0].checked) {
			justep.Util.hint('您还未同意协议条款', {
				"type" : "danger"
			});
			return false;
		}
			var fields = [ {
				name : 'name',
				msg : '请输入姓名！',
				v : this.validate.is_empty
			}, {
				name : 'mobile',
				msg : '手机号码格式有误！',
				v : this.validate.is_mobile
			}, {
				name : 'vcode',
				msg : '请输入验证码！',
				v : this.validate.is_empty
			}, {
				name : 'pwd',
				msg : '请设置您的登录密码！',
				v : this.validate.is_empty
			}, {
				name : 'shenfen',
				msg : '请选择身份！',
				v : this.validate.is_empty
			}, {
				name : 'occupation_id',
				msg : '请选择职业！',
				v : this.validate.is_empty
			} ], param = this.util.buildParam(this, fields), me = this;
//			console.log(this.validate.is_empty);
			var cid = parseInt(this.getElementByXid('cid').value);
			if (!isNaN(cid) && cid > 0)
				param['cid'] = cid;
			else {
				this.util.showMsg('请选择城市！', 'danger');
				return false
			}

			var lid = parseInt(this.getElementByXid('lid').value);
			if (!isNaN(lid) && lid > 0)
				param['lid'] = lid;
			else {
				this.util.showMsg('请选择楼盘！', 'danger');
				return false
			}

			var bid = parseInt(this.getElementByXid('bid').value);
			if (!isNaN(bid) && bid > 0)
				param['bid'] = bid;
			else {
				this.util.showMsg('请选择单元楼栋！', 'danger');
				return false
			}

			var rid = parseInt(this.getElementByXid('rid').value);
			if (!isNaN(rid) && rid > 0)
				param['rid'] = rid;
			else {
				this.util.showMsg('请选择房间！', 'danger');
				return false;
			}
			//如果是业主家属，租户则需要验证业主手机号码。
			if(myBoolean===false){
				//this.util.showMsg('justep.Util.hint(d.msg);！', 'danger');
				justep.Util.hint("业主手机号码验证不正确");
				return false;
			}
			var me = this;
			param['addr'] = this.comp('ctxt').val() + ' ' + this.comp('ltxt').val() + ' ' + this.comp('brtxt').val();
			//验证手机号码
			//param['phone_munber']=this.getElementByXid('inputyanzheng').value;
			 //console.log(param['addr']);
			$.post(this.util.apiPath + '/api/user/register', param, function(s) {
				if (s.s) {
					justep.Util.hint(s.msg);
					localStorage.setItem("userUUID", JSON.stringify(s.user));
					justep.Shell.user.set(s.user);
					localStorage.setItem("lp", JSON.stringify({
						id : s.user.lid,
						txt : s.user.lp
					}));
					lp={id:s.user.lid,txt:s.user.lp};
					justep.Shell.lp.set(lp);
					justep.Shell.user.set(s.user);
					localStorage.setItem("city", JSON.stringify({
						id : s.user.cid,
						txt : s.user.city
					}));
					justep.Shell.closePage('login');
					justep.Shell.closePage();
					justep.Shell.showPage("main.w");
				} else {
					justep.Util.hint(s.msg, {
						"type" : "danger"
					});
				}
			});
	};

	Model.prototype.modelLoad = function(event) {
		var me = this;
		$.get(this.util.apiPath + '/api/user/initreg', function(data) {
			me.sfData.loadData(data.shenfen);
			me.zyData.loadData(data.occupation);
		});
		console.log(this.util.callback);
	};

	Model.prototype.getdist = function(k) {
		if (!justep.Shell.regdist) {
			return '';
		}
		var regdist = justep.Shell.regdist.get();
		return regdist[k];
	}
	Model.prototype.seldist = function(event) {
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
	var getVcode, ture_on;
	Model.prototype.timerTimer = function(event) {
		var last = 120 - event.times;
		if (last === 0) {
			this.comp('timer').stop();
			getVcode.set({
				label : '获取验证码',
				disabled : false
			});
		} else {
			getVcode.set('label', last + '秒后获取');
		}
	};
	Model.prototype.getVcodeClick = function(event) {
		var mobile = this.params.phone;
		var data = {
			mobile : mobile,
			type : "1"
		};
		$.post(this.util.shopPath + "/mobile/index.php?act=login&op=get_captcha", data, function(d) {
			if (!JSON.parse(d).state) {
				justep.Util.hint(JSON.parse(d).msg, {
					type : "danger"
				});
				return false;
			} else {
					justep.Util.hint(JSON.parse(d).msg);
			}
		})
		getVcode = this.comp('getVcode');
		getVcode.set('disabled', true);
		this.comp('timer').start();
	};
	Model.prototype.vcodeBlur = function(event) {
		var mobile = this.comp('mobile').val();
		var captcha = this.comp('vcode').val();
		var data = {
			mobile : mobile,
			type : "1",
			captcha : captcha
		};
		if (captcha) {
			$.post(this.util.shopPath + "/mobile/index.php?act=login&op=check_captcha", data, function(d) {
				if (JSON.parse(d).state) {
					justep.Util.hint(JSON.parse(d).msg);
				} else {
					justep.Util.hint(JSON.parse(d).msg);
				}
			})
		} else {
			justep.Util.hint("请输入验证码！", {
				type : "danger"
			});
		}

	};
	Model.prototype.shenfenBlur = function(event) {
		if ((this.getElementByXid('shenfen').value) != 15) {
			$('[xid=labelEditshenfen]').css("display", "");
			myBoolean=false;
		}else{
			$('[xid=labelEditshenfen]').css("display", "none");
			myBoolean=true;
		}
	};
	//验证业主手机号码
	Model.prototype.input1Blur = function(event) {
		var rid = parseInt(this.getElementByXid('rid').value);
		var phone_munber = this.getElementByXid('inputyanzheng').value;
		var data = {
			rid : rid,
			phone_munber : phone_munber
		};
		$.post(this.util.apiPath + "/api/user/validate_phone", data, function(d) {
			if (d.s) {
			    myBoolean=true;
				justep.Util.hint(d.msg);
			} else {
				justep.Util.hint(d.msg, {
					type : "danger"
				});
				myBoolean=false;
				return false;
			}
		});
	};
	
	return Model;
});
