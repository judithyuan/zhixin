define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};
	Model.prototype.util = require('./js/common');
	Model.prototype.conternDatCustomRefresh = function(event) {
		var me = this, 
		data = {
			id : this.params.id
		};
		//alert(this.params.id)
		$.post(this.util.apiPath +'/zhixines/api/tianqiyubao/one_banner',data, function(d) {
			//event.source.loadData(JSON.parse(d));
//			console.log(JSON.parse(d).banner)
			try {
				var ary=[{banner: JSON.parse(d).nrxt,add_time: JSON.parse(d).add_time,content : JSON.parse(d).content}];
//			console.log(ary)
				event.source.loadData(ary);
			} catch (e) {
				// TODO: handle exception
			}

		});
		//alert(event.source.val('banner'))
	};

	Model.prototype.modelParamsReceive = function(event) {
		if (this.params != undefined) {
			if (this.params && this.params.id) {
				this.id = this.params.id;
			}
			;
		}
	};

	Model.prototype.modelLoad = function(event){
		var url=this.comp("conternDat").getValue("banner");
		$('[xid=image1ddd]').attr(this.util.apiPath +url);
				/*
		 * 判断html标签是否有iosstatusbar,有测表示在苹果手机上运行，顶部需要留出20px，因此修改popover的top
		 */

	};

	Model.prototype.backBtnClick = function(event){
		justep.Shell.closePage();

	};

	return Model;
});