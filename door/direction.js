define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	Model.prototype.row1Click = function(event){
		var url=require.toUrl('./doorControl.w');
		justep.Shell.showPage(url,{
		
		});
	};

	Model.prototype.row2Click = function(event){
		var url=require.toUrl('./doorControl.w');
		justep.Shell.showPage(url,{
		
		});
	};

	Model.prototype.row3Click = function(event){
		var url=require.toUrl('./doorControl.w');
		justep.Shell.showPage(url,{
		
		});
	};

	return Model;
});