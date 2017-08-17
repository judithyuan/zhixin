define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
//	定义函数
	var common = require("./js/common");

	Model.prototype.tp = function(event){

		var keys=new Date().getDay();
		var dayary = {1:'一',2:'二',3:'三',4:'四',5:'五',6:'六',7:'七'};
		var me =this;
		var url = require.toUrl(common.apiPath+'/zhixines/api/tianqiyubao/ceshitianqi');
		$.ajax({
			url:url,//require.toUrl(common.apiPath+'/zhixines/api/tianqiyubao/ceshitianqi'),
			type:'post',
			//dataType:'json',
			async: false,	
			success:function(d){
				var todayData =me.comp('todayData');
				todayData.newData({
					"defaultValues" : [ {
						"day_air_temperature" : d.a.day_air_temperature,
						"day_weather" : d.a.day_weather,
						"night_air_temperature" : d.a.night_air_temperature,
						"night_weather_pic" : d.a.night_weather_pic,
						"quality" : d.a.quality,
						"sports" : d.a.sports.replace(/\。/g, ""),
						"day" : dayary[keys],
					} ]
				});
				var dayarrbb=[d.b.c,d.b.d,d.b.e,d.b.f,d.b.g,d.b.h,d.b.i];
				me.comp('temperatureData').loadData(dayarrbb);
			},
			error:function(d){
				console.log(d);
			}
		});
//		$.post(url,function(d){
//			console.log(d);
//		});

	};
	


	


	return Model;
});