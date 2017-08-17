define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	require("$UI/system/lib/cordova/cordova");
	require("cordova!cordova-plugin-camera");
	require("cordova!cordova-plugin-media");
	var Model = function(){
		this.callParent();
	};
	var me=this;
	var user = justep.Shell.user.get();//获取缓存用户表信息数据
//	Model.prototype.util = require("../js/common");
	//	定义函数
	var common = require("../js/common");
	Model.prototype.util = common;
	Model.prototype.modelLoad = function(event) {
		//alert(1)
		document.getElementById('type').innerText = this.params.types;
		if(this.params.difference=='grwx'){
			this.comp('name').val(user.name);
			this.comp('mobile').val(user.mobile);
			this.comp('addr').val(user.addr);
		};	
		var url=this.util.apiPath+'/api/tsjy/cates';
		$.get(url,function(d){
			cates=d.rows;
		});
		var data=this.comp("picsData"),
		attatchpic=this.comp("attatchpic"),
		actionUrl=this.util.apiPath+"/api/upic/uppic";
		attatchpic.actionUrl=actionUrl;
		var uploader = attatchpic.uploader;
		uploader.actionUrl=actionUrl;
		uploader.on('onFileSelected',function(event){
			var ext=event.file.name.split(".")[1];
		    if (ext != "jpg"&&ext != "jepg"&&ext != "gif"&&ext != "png") {
//			    justep.Util.hint("只能上传jpg,gif,png格式的图片");
		    	this.util.showPop("只能上传jpg,gif,png格式的图片");
			    event.cancel = true;
		    }
		    if(event.file.size>3024*3024*20){
//				justep.Util.hint("上传的图片大小不能超过20M");
				this.util.showPop("上传的图片大小不能超过20M");
				event.cancel = true;
		    }
		    //控制上传文件个数  
			var file = data.getValue("url"); 
			if(file){
				if($.parseJSON(file).length>=3){
//					justep.Util.hint("一次最多只能上传3个文件");
					this.util.showPop("一次最多只能上传3个文件");
					event.cancel = true;
				}
			}
		});
	};

	
	Model.prototype.uploadPic = function(imageData) {
		//alert('2');//上传图片
		var url = this.util.apiPath + '/api/upic/upbase64', me = this; 
		$.post(url, {
				data : imageData
			}, function(s) {
				//console.log(s+"232313212313");
				//alert(s.filename+s.storename+s.ownerid+'56行');
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
				//alert(JSON.stringify(s));
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
			saveToPhotoAlbum : true
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
			EncodingType : Camera.EncodingType.JPEG
		});
	};
		
	
	
	Model.prototype.modelParamsReceive = function(event){
		//alert(this.params.types)
		if(this.params!=undefined){
			console.log(this.params.type);
			console.log(this.params.difference);
		}
	};
	var sub;
	Model.prototype.button1Click = function(event){
		var name = this.comp('name').val();
		var mobile = this.comp('mobile').val();
		var addr = this.comp('addr').val();
		if (this.comp('name').$domNode.val() == '') {
//			justep.Util.hint("名字不能为空", {
//				"type" : "danger"
//			});
			this.util.showPop("名字不能为空");
			return false;
		}if(!(/^1[3|4|5|7|8]\d{9}$/.test(mobile))){
//			justep.Util.hint("手机号码格式有误！", {
//				"type" : "danger"
//			});
			this.util.showPop("手机号码格式有误！");
			return false;
		 }if (this.comp('addr').$domNode.val() == '') {
//			justep.Util.hint("地址不能为空", {
//				"type" : "danger"
//			});
			this.util.showPop("地址不能为空");
			return false;
		}
		var desc=$.trim(this.comp('textarea1').$domNode.val());
//		alert(desc);
		if(desc.length<5){
//			justep.Util.hint("请至少输入五个字", {"type" : "danger"});
			this.util.showPop("请至少输入五个字");
			return false;
		}
//		var user = justep.Shell.user.get();
		var urls=this.comp("picsData").getValue("url"),
			param={
				name:name,
				telphone:mobile,
				bxdz:addr,
				bxnr:desc,//描述
				user_id : user.id,
				item : this.params.types,
				lp_id : user.lid,
				type : this.params.type
				};
				//alert(JSON.stringify(param)+'121231233132');
//				alert(urls)
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
//		if (justep.Shell.user && justep.Shell.user.get()) {
//			var user = justep.Shell.user.get();
//			param['uid'] = user.id;
//		}
		
		sub=sub+1;
		var my = this;	
			if(sub>1){
//				justep.Util.hint("请勿重复提交", {
//					"type" : "danger"
//				});
				this.util.showPop("请勿重复提交");
			}else{
				//传递所需要的参数
				//alert(JSON.stringify(param)+'56行');
				$.post(this.util.apiPath + '/zhixines/api/baoxiu/user_baoxiu', param, function(s) {
//					alert(JSON.stringify(s));
					if (s.s) {
						my.util.showPop(s.msg);
						justep.Shell.closePage();
					} else {
//						justep.Util.hint(s.msg, {
//							"type" : "danger"
//						});
						my.util.showPop(s.msg);
					}
				});
			}
		justep.Shell.closePage();
	};
	
	Model.prototype.divimageClick = function(event){
//		alert(1);
//		var url = DocUtils.InnerUtils.getdocServerAction({
//                     "docPath" : docPath,
//                     urlPattern : "/repository/file/view/" + fileID + "/last/content",
//                     isFormAction : false,
//                     context : this.getContext()
//        });
		var data=this.comp("picsData");
//		alert(data.getValue("url"));
	};
 
	return Model;
});