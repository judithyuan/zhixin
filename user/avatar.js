define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("$UI/system/lib/cordova/cordova");
	require("cordova!cordova-plugin-camera");
	require("../js/lib/jquery.photoClip");
	
	var Model = function(){
		this.callParent();
	};
	var common = require("../js/common");
	Model.prototype.util=require("../js/common");
	Model.prototype.modelLoad = function(event){
		/*
		 * 判断html标签是否有iosstatusbar,有测表示在苹果手机上运行，顶部需要留出20px，因此修改popover的top
		 */
		if(device.platform!="Android"){
			$(".x-full").css({
				"top" : "10px"
			});
		}
	};	
	Model.prototype.showAvatar = function(){
    	if(justep.Shell.user&&justep.Shell.user.get()){
			var user=justep.Shell.user.get();
			if(user.avatar!='')
				return this.util.picDomain+user.avatar;
			else return this.util.default_avatar;
		}
    	return this.util.default_avatar;
    }
	Model.prototype.button1Click = function(event){
		var url=this.util.apiPath+'/api/upic/upAvatar',me=this;
		function onSuccess(imageURI) {
			me.clipAvatar(imageURI);
		}
		function onFail(message) {
			justep.Util.hint("取消拍照");
		}
		navigator.camera.getPicture(onSuccess, onFail, 
				{quality : 50,
				destinationType:Camera.DestinationType.DATA_URL,
				sourceType:Camera.PictureSourceType.CAMERA,
				mediaType:Camera.MediaType.PICTURE,
				cameraDirection:Camera.Direction.FRONT,
				EncodingType:Camera.EncodingType.JPEG,
				saveToPhotoAlbum:true});
	};

	Model.prototype.button2Click = function(event){
		var url=this.util.apiPath+'/api/upic/upAvatar',me=this;
		function onSuccess(imageURI) {
			me.clipAvatar(imageURI);
		}
		function onFail(message) {
			justep.Util.hint("取消拍照");
		}
		navigator.camera.getPicture(onSuccess, onFail, 
				{quality : 50,
				destinationType:Camera.DestinationType.DATA_URL,
				sourceType:Camera.PictureSourceType.PHOTOLIBRARY,
				mediaType:Camera.MediaType.PICTURE,
				EncodingType:Camera.EncodingType.JPEG});
	};

	Model.prototype.button3Click = function(event){
		var me=this;
		$.get('./user/data',function(s){
			me.clipAvatar(s);
		});
	};
	
	Model.prototype.clipAvatar=function(imageUrl){
		var clipContent=this.comp('clipContent'),me=this,user=justep.Shell.user.get();;
			clipContent.show();
			
			$(this.getElementByXid('imageContent')).photoClip({
			    width: 200, // 截取区域的宽度
			    height: 200, // 截取区域的高度
//			    file: "#file", // 上传图片的<input type="file">控件的选择器或者DOM对象
			    src:"data:image/jpeg;base64,"+imageUrl,
//			    view: this.getElementByXid('view'), // 显示截取后图像的容器的选择器或者DOM对象
			    ok: this.getElementByXid('clipBtn'), // 确认截图按钮的选择器或者DOM对象
			    //outputType: "jpg", // 指定输出图片的类型，可选 "jpg" 和 "png" 两种种类型，默认为 "jpg"
			    strictSize: true, // 是否严格按照截取区域宽高裁剪。默认为false，表示截取区域宽高仅用于约束宽高比例。如果设置为true，则表示截取出的图像宽高严格按照截取区域宽高输出
			    loadStart: function(file) {}, // 开始加载的回调函数。this指向 fileReader 对象，并将正在加载的 file 对象作为参数传入
			    loadComplete: function(src) {}, // 加载完成的回调函数。this指向图片对象，并将图片地址作为参数传入
			    loadError: function(event) {}, // 加载失败的回调函数。this指向 fileReader 对象，并将错误事件的 event 对象作为参数传入
			    clipFinish: function(dataURL) {
			    			var me=this;
							var url = common.apiPath+'/api/upic/upAvatar';
							var datas = {uid:user.id,data:dataURL};
							$.ajax({
								url : url,
								dataType : 'json',
								type : 'post',
								data : datas,
								async : false,
								success : function(s){
//									alert(JOSN.stringfy(s));
									if(s.s){
			//							$(me.getElementByXid('avatar')).attr('src',me.util.picDomain+s.filename);
										clipContent.hide(s.msg);
										user['avatar']=s.filename;
										localStorage.setItem("userUUID", JSON.stringify(user));
										justep.Shell.user.set(user);
//										justep.Shell.closePage();
//										$.get('./user/data',function(s){
//											me.clipAvatar(s);
//										});
									}else{
										justep.Util.hint(s.msg);
									}
								},
								error : function(e){
									console.log(e)
								}
							});
//			    	console.log(dataURL)
//			    	
//			    	$.post(me.util.apiPath+'/api/upic/upAvatar',{uid:user.id,data:dataURL},function(s){
//						alert(s)
//						if(s.s){
////							$(me.getElementByXid('avatar')).attr('src',me.util.picDomain+s.filename);
//							clipContent.hide(s.msg);
//							user['avatar']=s.filename;
//							localStorage.setItem("userUUID", JSON.stringify(user));
//							justep.Shell.user.set(user);
//							justep.Shell.closePage();
//						}else{
//							justep.Util.hint(s.msg);
//						}
//					});
			    }, // 裁剪完成的回调函数。this指向图片对象，会将裁剪出的图像数据DataURL作为参数传入
			});
	}

	return Model;
});
