define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
		this.sf = justep.Bind.observable("");//省份
		this.cs = justep.Bind.observable("");//城市
		this.djs = justep.Bind.observable("");//地级市城市
	};
	
	var common = require("../js/common");
	Model.prototype.util = common;
	Model.prototype.modelActive = function(event){
		var url="./json/forgotMima.json";
		$.ajax({
			url:url,
			type:'post',
			dataType:'json',
			success:function(d){
				//console.log(d);
				province=d;
				init();
			},
			error:function(d){
				//console.log(222);
			}
		});
		scqliandong();
	};	
	Model.prototype.modelLoad = function(event){
		$(this.getElementByXid("phone")).attr("maxlength",11);
		/*
		 * 判断html标签是否有iosstatusbar,有测表示在苹果手机上运行，顶部需要留出20px，因此修改popover的top
		 */
//		if(device.platform!="Android"){
//			$(".x-full").css({
//				"top" : "10px"
//			});
//		}
//		//加载数据/statics/js/forgotMima.json./json/forgotMima.json
//		var url=this.util.shopPath+"/statics/js/forgotMima.json";
		var url="./json/forgotMima.json";
		$.ajax({
			url:url,
			type:'post',
			dataType:'json',
			success:function(d){
				//console.log(d);
				province=d;
				init();
			},
			error:function(d){
				//console.log(222);
			}
		});
		scqliandong();
	};
	var province;
//	 var province=[{name:'北京市',city:[{name:'北京市',districtAndCounty:['北东城','北西城']}]},
//	               {name:'上海市',city:[{name:'上海市',districtAndCounty:['上东浦','上西城']}]},
//	               {name:'四川省',city:[{name:'成都市',districtAndCounty:['上东区','上西城']}]}
//	 
//	 ];
	 
	 function init(){
        	var pro=$(".province");
            var $temp="<option optionsValue=\"\" value=\"\">省</option>";
            pro.append($temp);
            for(var i=0;i<province.length;i++){
               var $temp=$("<option component='$UI/system/components/justep/select/select'  optionsValue="+province[i].name + "value=\"\">"+province[i].name+"</option>");
               pro.append($temp);
            }
      }
      
      
      var scqliandong = function(event){
    	    var pro=$(".province");
            var city=$(".city");
            var dAC=$(".districtAndCounty");
            var num1=null;
            var num2=null;
           //init();
            pro.change(function(){
                num1=pro.prop("selectedIndex");
                city.empty();
                dAC.empty();
                if(num1!==0){
                	var $temp="<option optionsValue=\"\" value=\"\">市</option>";
                	city.append($temp);
                    for(var i=0;i<province[num1-1].city.length;i++){
                        $temp=$("<option component='$UI/system/components/justep/select/select' optionsValue="+province[num1-1].city[i].name+"value=\"\">"+province[num1-1].city[i].name+"</option>");
                        city.append($temp);
                    }
                }
            });
            city.change(function(){
                num2=city.prop("selectedIndex");
                dAC.empty();
                if(num2!==0){
                	var $temp="<option optionsValue=\"\" value=\"\">区</option>";
                	dAC.append($temp);
                    for(var i=0;i<province[num1-1].city[num2-1].districtAndCounty.length;i++){
                        $temp=$("<option component='$UI/system/components/justep/select/select'  optionsValue="+province[num1-1].city[num2-1].districtAndCounty[i]+"value=\"\">"+province[num1-1].city[num2-1].districtAndCounty[i]+"</option>");
                        dAC.append($temp);
                    }
                }
            })
      }


        

	
	//提交
	Model.prototype.registerBtnClick = function(event){
//		console.log(this.comp('province').val());
		var user=justep.Shell.user.get();
		var name=this.comp('name').val();
		var phone=this.comp('phone').val();
//		var area=this.comp('select1').val();
		var area=this.comp('input1addrdz').val();
//		var adrDta=this.comp("adrDta");
		var area_info;
		var loupan_id=user.lid;
		var me=this;
		try {
			for(var i=0;i<adrDta.datas.latestValue.length;i++){
				if(adrDta.datas.latestValue[i].row.address.value.latestValue==area){
					area_info=adrDta.datas.latestValue[i].row.area_info.value.latestValue;
					loupan_id=adrDta.datas.latestValue[i].row.loupan_id.value.latestValue;
				}
			}
		} catch (e) {
			// TODO: handle exception
		}
		
		if (name == '') {
			me.util.showPop("请输入名字")
			return false;
		}
		if (phone == '') {
			me.util.showPop("请输入电话")
			return false;
		}if (area == '') {
			me.util.showPop("请选择地址")
			return false;
		}
		var data={
			key:user.v,
			true_name : name,
			area_info:area_info,
			address:area,
			area_info : this.comp('province').val()+'\t'+this.comp('city').val()+'\t'+this.comp('districtAndCounty').val(),
			mob_phone : phone,
			loupan_id : loupan_id
		};
		var url =this.util.shopPath+'/mobile/index.php?act=member_address&op=address_add',me=this;
		$.ajax({
			url:url,
			type:'post',
			async: false,	
			data:data,
			dataType:'json',
			success:function(d){
				if(!d.datas.error){
					me.util.showPop('添加成功！');
					justep.Shell.closePage();
				}else{
					me.util.showPop(d.datas.error);
				}
//				if(d.datas.address_id!=""&&d.datas.address_id!=undefined&&d.datas.address_id!=null){
//					justep.Shell.closePage();
//				}else{
//					me.util.showPop(d.datas.error);
//				}
			},
			error:function(d){
				console.log(d);
			}
		});
	};

	Model.prototype.phoneBlur = function(event){
//		alert(this.getElementByXid('input2').value)
			var phone=this.comp('phone').val();
//			debugger
		    if(!(/^1(3|4|5|7|8)\d{9}$/.test(phone))){ 
		    	this.util.showPop("请输入正确的手机号码");
//		        alert("手机号码有误，请重填");
//		        this.comp("mobile").val("");
		        this.comp("registerBtn").set({
				  "disabled":  true
				});
		        return false; 
		    }else{
//		    	this.getElementByXid("registerBtn").style("background-color","#7bc93d");
		    	$("[xid=registerBtn]").css("background-color","#7bc93d");
		    	this.comp("registerBtn").set({
				  "disabled":  false
				});
		    } 
	};

	//改变按钮颜色
	Model.prototype.btnChange = function(event){
		var phone=$('[xid=phone]').val();
		if($('[xid=name]').val()!=''&&(/^1(3|4|5|7|8)\d{9}$/.test(phone))&&$('[xid=input1addrdz]').val()!=''&&$('[xid=province]').val()!=''&&$('[xid=city]').val()!=''&&$('[xid=districtAndCounty]').val()!=''&&$('[xid=province]').val()!=null&&$('[xid=city]').val()!=null&&$('[xid=districtAndCounty]').val()!=null){
			this.comp("registerBtn").set({
				  "disabled":  false
			});
			$("[xid=registerBtn]").css("background-color","#7bc83e");
		}
		else{
			this.comp("registerBtn").set({
				  "disabled":  true
			});
			$("[xid=registerBtn]").css("background-color","#e3e3e3");
		}
	};

	Model.prototype.nameBlur = function(event){
	
	};

	//获取可以选择的地址
	Model.prototype.adrDtaCustomRefresh = function(event){
		var user=justep.Shell.user.get();
		var url =this.util.shopPath+'/mobile/index.php?act=member_address&op=uers_loupan_add',me=this;
		var data={
			key:user.v,
		}
		$.ajax({
			url:url,
			type:'post',
			async: false,	
			data:data,
			dataType:'json',
			success:function(d){
				event.source.loadData(d.datas);
			},
			error:function(d){
				console.log(d);
			}
		});
	};



	Model.prototype.provinceChange = function(event){
		
	};







	return Model;
});