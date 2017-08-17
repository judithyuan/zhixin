define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	require("$UI/system/lib/cordova/cordova");
	require("cordova!cordova-plugin-camera");
	require("cordova!cordova-plugin-media");
	var Model = function(){
		this.callParent();
		this.imgbxnumber = justep.Bind.observable('');
	};
	var me=this;
	var user = justep.Shell.user.get();//获取缓存用户表信息数据
//	Model.prototype.util = require("../js/common");
	//	定义函数
	var common = require("../js/common");
	var mobile ;
	Model.prototype.util = common;
	
	Model.prototype.adrbaoxiu = function(){
		if(!user.lp){
			return "熊猫e家";
		}else{
			sessionStorage.setItem('loupan_info',user.addr);
			this.imgbxnumber.set(user.mobile.replace(/^(\d{3})\d{4}(\d{4})$/, "$1****$2"));
			mobile=user.mobile;
			return user.addr;
		}	
		
	};	
	Model.prototype.modelLoad = function(event) {
		$(this.getElementByXid("mobile")).attr("maxlength",11);
		
//		// 获取window 宽度/*暂时用*///------------
//        // zepto实现 $(window).width()就是这么干的
//        var winWidth = window.innerWidth;
//        console.log(winWidth);
//        document.documentElement.style.fontSize = (winWidth / 750) * 100 + 'px';
//		/*暂时用*///------------		
		
//		var url=this.util.apiPath+'/api/tsjy/cates';
//		$.get(url,function(d){
//			cates=d.rows;
//		});
//		var data=this.comp("picsData"),
//		attatchpic=this.comp("attatchpic"),
//		actionUrl=this.util.apiPath+"/api/upic/uppic";
//		attatchpic.actionUrl=actionUrl;
//		var uploader = attatchpic.uploader;
//		uploader.actionUrl=actionUrl;
//		uploader.on('onFileSelected',function(event){
//			var ext=event.file.name.split(".")[1];
//		    if (ext != "jpg"&&ext != "jepg"&&ext != "gif"&&ext != "png") {
////			    justep.Util.hint("只能上传jpg,gif,png格式的图片");
//		    	this.util.showPop("只能上传jpg,gif,png格式的图片");
//			    event.cancel = true;
//		    }
//		    if(event.file.size>3024*3024*20){
////				justep.Util.hint("上传的图片大小不能超过20M");
//				this.util.showPop("上传的图片大小不能超过20M");
//				event.cancel = true;
//		    }
//		    //控制上传文件个数  
//			var file = data.getValue("url"); 
//			if(file){
//				if($.parseJSON(file).length>=5){
////					justep.Util.hint("一次最多只能上传3个文件");
//					this.util.showPop("一次最多只能上传3个文件");
//					event.cancel = true;
//				}
//			}
//		});
		var me = this, data = this.comp("picsData"), attatchpic = this.comp("attatchpic"), actionUrl = this.util.apiPath + "/api/upic/uppic";
		attatchpic.getFileUrl = function(realFileName, storeFileName, ownerID, operateType) {
			var filename = storeFileName.toLowerCase(), pre = filename.substr(0, 4), ext = realFileName.substr(realFileName.lastIndexOf('.'));
			return me.util.apiPath + '/data/ipic/' + pre + '/' + filename + ext;
		}
		attatchpic.actionUrl = actionUrl;
		var uploader = attatchpic.uploader;
		uploader.actionUrl = actionUrl;
		uploader.on('onFileSelected', function(event) {
			var ext = event.file.name.split(".")[1];
			if (ext != "jpg" && ext != "jepg" && ext != "gif" && ext != "png") {
				justep.Util.hint("只能上传jpg,gif,png格式的图片");
				event.cancel = true;
			}
			if (event.file.size > 3024 * 3024 * 5) {
				justep.Util.hint("上传的图片大小不能超过5M");
				event.cancel = true;
			}
			// 控制上传文件个数
			var file = data.getValue("url");
			if (file) {
				if ($.parseJSON(file).length >= 3) {
//					justep.Util.hint("一次最多只能上传3个文件");
					event.cancel = true;
				}
			}
		});
	};

	
	Model.prototype.uploadPic = function(imageData) {
//		alert('imageData');//上传图片
		var url = this.util.apiPath + '/api/upic/upbase64', me = this; 
		$.post(url, {
				data : imageData
			}, function(s) {
				//console.log(s+"232313212313");
//				alert(s.filename+s.storename+s.ownerid+'56行');
				if (s.s) {
					me.comp('attatchpic').addItem(s.filename, s.storename, s.ownerid);
				} else {
//					justep.Util.hint("上传失败");
					me.util.showPop("上传失败");
				}
			});
			//console.log(me.comp('attatchpic'));
	};

	Model.prototype.div5Click = function(event) {
		var url=this.util.apiPath+'/api/upic/upbase64',me=this;
		function onSuccess(imageURI) {
//			this.util.showPop("请稍等，图片上传中.......");
			$.post(url, {data : imageURI}, function(s) {
//				alert(imageURI);
				if (s.s) {
					me.comp('attatchpic').addItem(s.filename, s.storename, s.ownerid);
				} else {	
					me.util.showPop("上传失败");
				}
			});
		}
		function onFail(message) {
//			justep.Util.hint("取消拍照");
			me.util.showPop("取消拍照");
		}
		navigator.camera.getPicture(onSuccess, onFail, {
			quality : 50,
			destinationType : Camera.DestinationType.DATA_URL,
			sourceType : Camera.PictureSourceType.CAMERA,
			mediaType : Camera.MediaType.PICTURE,
			EncodingType : Camera.EncodingType.JPEG,
			saveToPhotoAlbum : true,
			targetWidth : 1080,
            targetHeight : 720
		});
	};


	Model.prototype.div1Click = function(event) {
		var url = this.util.apiPath + '/api/upic/upbase64', me = this;
		function onSuccess(imageURI) {
			me.util.showPop("请稍等，图片上传中.......",1000);
			$.post(url, {
				data : imageURI
			}, function(s) {
				//alert(JSON.stringify(s)+"116")
				if (s.s) {
					me.comp('attatchpic').addItem(s.filename, s.storename, s.ownerid);
//					alert(JSON.stringify(s));
//					me.util.showPop("上传成功");
				} else {
//					justep.Util.hint("上传失败");
					me.util.showPop("上传失败");
				}
			});
		}
		function onFail(message) {
//			justep.Util.hint("取消拍照");
			//this.util.showPop("取消拍照");
		}
		navigator.camera.getPicture(onSuccess, onFail, {
			quality : 50,
			destinationType : Camera.DestinationType.DATA_URL,
			sourceType : Camera.PictureSourceType.PHOTOLIBRARY,
			mediaType : Camera.MediaType.PICTURE,
			EncodingType : Camera.EncodingType.JPEG,
			targetWidth : 1080,
            targetHeight : 720
		});
	};
		
	
	
	Model.prototype.modelParamsReceive = function(event){
		//alert(this.params.types)

	};
	
	//输入保修的内容改变时
	Model.prototype.miaoshu = function(event){
		//alert(this.params.types)
		if($('[xid=textarea1wybx]').val().length>=5){
			$('[xid=button1]').css({'background-color':'#7bc83e'});
			this.comp("button1").set({
				"disabled":  false
			});
		}
		else{
			$('[xid=button1]').css({'background-color':'#e3e3e3'});
			this.comp("button1").set({
				"disabled":  true
			});
		}
	};
	
	var sub=0;
	Model.prototype.button1Click = function(event){
		var name = $('[xid=span2name]').text();		
		if(!(/^1[3|4|5|7|8]\d{9}$/.test(mobile))){
			this.util.showPop("手机号码格式有误！");
			return false;
		 }
		var desc=$.trim(this.comp('textarea1wybx').$domNode.val());
		if(desc.length<5){
			this.util.showPop("请至少输入五个字");
		}
		var urls=this.comp("picsData").getValue("url"),
			param={
				name:name,
				mobile:user.mobile,
				bxdz:sessionStorage.getItem('loupan_info'), //描述报修地址
				bxnr:desc,//描述报修内容
				user_id : user.id,//描述用户的唯一id
				lid : user.lid,
				};
		if (urls) {
			data = $.parseJSON(urls)
			pics = [];
			for ( var i in data) {
				pics.push({
					sname : data[i]['storeFileName'],
					rname : data[i]['realFileName']
				});
			}
			param["pics"] = pics;
		}		
		sub++;
		var my = this;	
			if(sub>=2){
//				this.util.showPop("请勿重复提交");
//				justep.Shell.closePage();
			}else{
				//传递所需要的参数

				//报事报修修改简洁版本
//				$.post(this.util.apiPath + '/zhixines/api/baoxiu/user_baoxiu', param, function(s) {
				$.post(this.util.apiPath + '/zhixines/api/baoxiu/user_repair', param, function(s) {
//					alert(JSON.stringify(s));
					if (s.s) {
						my.util.showPop(s.msg);
						justep.Shell.closePage();
						sub = 0;
					} else {
						my.util.showPop(s.msg);
					}
				});
			}
//		justep.Shell.closePage();
	};
	
	Model.prototype.divimageClick = function(event){
		var data=this.comp("picsData");
//		$('[xid=popOver1onebx]').show();
//		this.imgbx.set(this.util.apiPath+data.getValue("url")[0].realFileName)
//		console.log(data.getValue("url")[0].realFileName)
	};
	Model.prototype.li2Click = function(event){
	};
	Model.prototype.chooseAdrDataCustomRefresh = function(event){
		var url = this.util.shopPath+'/mobile/index.php?act=member_address&op=address_list',me=this;
		var user=justep.Shell.user.get();
		var Pdata={
//			key : user.v,
			key : localStorage.getItem('vv'),//'c229788b27b907fe759a01bba3d02ac5',
		}
		$.ajax({
			url: url,
			data: Pdata,
			dataType: 'json',
			type : 'post',
			async : false,
			success: function(e){
//				alert(e.datas.address_list.length<=1);
				if(e.datas.address_list.length<=1){
					$('[xid=button2xuanzedizhi]').css('display','none');
				}else{
					$('[xid=button2xuanzedizhi]').css('display','block');
				}
				event.source.loadData(e.datas.address_list);
			}
		});
	}; 
	Model.prototype.li1Click = function(event){
		this.comp("chooseAdrData").setValue("state", 0);
		var switchDta=this.comp('chooseAdrData');
		var row = event.bindingContext.$object;
		$(this).find("input[type='radio']").attr("checked",true);
		row.val("state", 1);
		var Adr=row.val("loupan_info");
		this.getElementByXid('name').innerText = Adr;
		sessionStorage.setItem('loupan_info',Adr);
	};
	Model.prototype.button2Click = function(event){
		$('[xid=list1addrorder]').slideToggle();
	};
	Model.prototype.button3baoxiujilu = function(event){
		justep.Shell.showPage(require.toUrl('../user/user-repair.w'));	
	};


	Model.prototype.modelActive = function(event){
		sub = 0;
	};


	return Model;
});


