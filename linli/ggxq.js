define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
	
	//	定义函数
	var common = require("../js/common");
	Model.prototype.util = common;
	var myutil= require('../js/common');
	//被挤掉
	Model.prototype.denglu = function(event){
//		justep.Shell.showPage(require.toUrl('./login.w'));
		localStorage.setItem('x5Version + introPage','yes');
		window.location.reload();
	};
    //消息推送----------------------- 	
	//获取公告详情
	Model.prototype.detailDtaCustomRefresh = function(event){
		var url =this.util.apiPath+'/zhixines/api/xiaoxi/getEhomeinfo',me=this;
		var user=justep.Shell.user.get();
		var data={
			id:this.params.ggid,
			user_id:user.id
		}
		$.ajax({
			url:url,
			type:'post',
			async: false,	
			data:data,
			dataType:'json',
			success:function(d){
				var detailDta =me.comp('detailDta');
//				var a=d.msg.content;
//				$("#inner2").append(a);
				detailDta.newData({
					"defaultValues" : [ {
						"title" : d.msg.title,
						"updatetime" :d.msg.updatetime,
						"content" : d.msg.content,
						"title" : d.msg.title,
						"browse_volume" :d.msg.browse_volume,
						"id":d.msg.id,
						"thumbs_up":d.msg.thumbs_up,
					} ]
				});
			},
			error:function(d){
				console.log(d);
			}
		});
	};
	var articleNum;
	//获取评价列表
	Model.prototype.reviewDtaCustomRefresh = function(event){
		var url =this.util.apiPath+'/zhixines/api/xiaoxi/getEhomeinfoComment',me=this;
		var data={
			id:this.params.ggid
		}
		$.ajax({
			url:url,
			type:'post',
			async: false,	
			data:data,
			dataType:'json',
			success:function(d){
				event.source.loadData(d);
			},
			error:function(d){
				console.log(d);
			}
		});
	};

	//点赞
	Model.prototype.image2Click = function(event){
		var user=justep.Shell.user.get();
		var url =this.util.apiPath+'/zhixines/api/xiaoxi/getNewThumbsUP',me=this;
		var id=this.comp("detailDta").val("id");
		var data={
			gid:id,
			user_id:user.id
		}
//		if(articleNum>0){
//			me.util.showPop('已点赞');
//			return false;
//		}
		$.ajax({
			url:url,
			type:'post',
			async: false,	
			data:data,
			dataType:'json',
			success:function(d){
//				debugger;
				if(d.code=="200"){
//					articleNum=1;
					document.getElementById('article').innerText = d.thumbs_up;//角标
					me.util.showPop(d.msg);
				}
				if(d.code=="400"||d.code=="300"){
					me.util.showPop(d.msg);
				}
			},
			error:function(d){
				console.log(d);
			}
		});
	};

	//点赞up
	Model.prototype.image6Click = function(event){
		var user=justep.Shell.user.get();
		var url =this.util.apiPath+'/zhixines/api/xiaoxi/getCommentThumbsUP',me=this;
		var row = event.bindingContext.$object;
		var id=row.val('id');
		var $e=$(event.currentTarget);
		var data={
			gid:id,
			user_id:user.id
		}
		$.ajax({
			url:url,
			type:'post',
			async: false,	
			data:data,
			dataType:'json',
			success:function(d){
				if(d.code=="200"){
					row.val("thumbs_up",d.thumbs_up);
//					$e.off('click').next().off('click');
					me.util.showPop(d.msg);
				}
				if(d.code=="400"||d.code=="300"){
					me.util.showPop(d.msg);
				}
			},
			error:function(d){
				console.log(d);
			}
		});
	};

	//点赞down
	Model.prototype.image5Click = function(event){
		var user=justep.Shell.user.get();
		var url =this.util.apiPath+'/zhixines/api/xiaoxi/getCommentThumbsUP',me=this;
		var row = event.bindingContext.$object;
		var id=row.val('id');
		var $e=$(event.currentTarget);
		var data={
			bid:id,
			user_id:user.id
		}
		var me=this;
		$.ajax({
			url:url,
			type:'post',
			async: false,	
			data:data,
			dataType:'json',
			success:function(d){
				if(d.code=="200"){
					row.val("thumbs_down",d.thumbs_down);
//					$e.off('click').prev().off('click');
					me.util.showPop(d.msg);
				}
				if(d.code=="400"||d.code=="300"){
					me.util.showPop(d.msg);
				}
			},
			error:function(d){
				console.log(d);
			}
		});
	};

	//发表评论
	Model.prototype.textarea1Blur = function(event){
//		var id=this.comp("detailDta").val("id");
//		var url =this.util.apiPath+'/zhixines/api/xiaoxi/addEhomelife',me=this;
//		var content=this.comp('textarea1').val();
//		if($.trim(content).length<3){
//			me.util.showPop('内容不能少于三个字');
//			return false;
//		}
//		var user=justep.Shell.user.get();
//		var data={
//			user_id:user.id,
//			content:content,
//			new_id:id
//		}
//		var me=this;
//		$.ajax({
//			url:url,
//			type:'post',
//			async: false,	
//			data:data,
//			dataType:'json',
//			success:function(d){
//				if(d.code=="1"){
//					me.util.showPop(d.msg);
//					me.comp('textarea1').val("");
//					me.comp('reviewDta').refreshData();
//				}
//			},
//			error:function(d){
//				console.log(d);
//			}
//		});
	};

	Model.prototype.modelLoad = function(event){
		articleNum=0;
		if(this.comp('detailDta').val('active_state')==1){
			this.comp('button1').set({
				'disabled':'true'
			})
		}
		var id=this.comp("detailDta").val("id");
		var url =this.util.apiPath+'/zhixines/api/xiaoxi/addEhomelife',me=this;
		var user=justep.Shell.user.get();
		var newdata=me.comp('reviewDta');
		$("#releasepl").on('keypress',function(e) {  
                var keycode = e.keyCode;  
                var searchName = $(this).val(); 
                if(keycode=='13') {  
                    e.preventDefault(); 
                     if($.trim(searchName).length<3){
                     common.showPop('评论不得小于三个字');
                		return false;
                     }   
					 var data={
						user_id:user.id,
						content:searchName,
						new_id:id
					 }
					 var my=this;
					 $.ajax({
							url:url,
							type:'post',
							async: false,	
							data:data,
							dataType:'json',
							success:function(d){
								if(d.code=="1"){
									common.showPop(d.msg);
									$('[xid="textarea1"]').val('')
									newdata.refreshData();
								}
							},
							error:function(d){
								console.log(d);
							}
						});
                }  
        }); 
	};

	return Model;
});