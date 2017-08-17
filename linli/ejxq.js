define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	//	定义函数
	var common = require("../js/common");
	Model.prototype.util = common;
	
	//获取e家详情
	Model.prototype.detailDtaCustomRefresh = function(event){
		var url =this.util.apiPath+'/zhixines/api/xiaoxi/getEhomeinfo',me=this;
		var user=justep.Shell.user.get();
		var data={
			id:this.params.ejid,
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
//				alert(a);
//				$("#inner").append(a);
//				alert(d.msg.type);
				detailDta.clear();
				detailDta.newData({
					"defaultValues" : [ {
						"title" : d.msg.title,
						"updatetime" :d.msg.up_time,
						"content" : d.msg.content,
						"title" : d.msg.title,
						"browse_volume" :d.msg.browse_volume,
						"id":d.msg.id,
						"type":d.msg.type,
						"current_number":d.msg.current_number,
						"limited_number":d.msg.limited_number,
						"active_msg":d.msg.active_msg,
						"active_state":d.msg.active_state,
						"thumbs_up":d.msg.thumbs_up
					} ]
				});
			},
			error:function(d){
				console.log(d);
			}
		});
	};

	//获取评价列表
	Model.prototype.reviewDtaCustomRefresh = function(event){
		var url =this.util.apiPath+'/zhixines/api/xiaoxi/getEhomeinfoComment',me=this;
		var data={
			id:this.params.ejid
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
	var articleNum;
	//文章点赞
	Model.prototype.image2Click = function(event){
		var user=justep.Shell.user.get();
		var url =this.util.apiPath+'/zhixines/api/xiaoxi/getNewThumbsUP',me=this;
		var id=this.comp("detailDta").val("id");
		var data={
			gid:id,
			user_id:user.id
		}
		if(articleNum>0){
			me.util.showPop('已点赞');
			return false;
		}
		$.ajax({
			url:url,
			type:'post',
			async: false,	
			data:data,
			dataType:'json',
			success:function(d){
				if(d.code=="200"){
					articleNum=1;
					document.getElementById('article1').innerText = d.thumbs_up;//角标
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
	
//好评
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
//差评
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
		this.comp('reviewDta').refreshData();
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
	
	//点击报名
	Model.prototype.button1Click = function(event){
		var url =this.util.apiPath+'/zhixines/api/xiaoxi/addActivityList',me=this;
		var user=justep.Shell.user.get();
		var data={
			user_id:user.id,
			ehomelife_id:this.comp("detailDta").val('id'),
		}
		var me=this;
		
		$.ajax({
			url:url,
			type:'post',
			async: false,	
			data:data,
			dataType:'json',
			success:function(d){
				me.comp('detailDta').refreshData();
				if(d.s){
					me.util.showPop(d.msg);
					me.comp('button1').set({
						'disabled':'true'
					})
					
				}else{
					me.util.showPop(d.msg);
				}
			},
			error:function(d){
//				console.log(d);
			}
		});
	};
	
	//页面加载时候
	Model.prototype.modelLoad = function(event){
		articleNum=0;
		if(this.comp('detailDta').val('active_state')==1){
//			this.comp('button1').set({
//				'disabled':'true'
//			})
		}
		var id=this.comp("detailDta").val("id");
		var url =this.util.apiPath+'/zhixines/api/xiaoxi/addEhomelife',me=this;
		var user=justep.Shell.user.get();
		var newdata=me.comp('reviewDta');
		$("#releasepl2").on('keypress',function(e) {  
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
						$.ajax({
							url:url,
							type:'post',
							async: false,	
							data:data,
							dataType:'json',
							success:function(d){
								if(d.code=="1"){
									common.showPop(d.msg);
									$('[xid="textarea1ejxq"]').val('')
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
	//跳转消息中心
	Model.prototype.button2Click = function(event){
		localStorage.setItem('tips','0');
//		$('#span98').hide();
		var url = require.toUrl('../user/entermsg.w');
		justep.Shell.showPage(url,{
			
		});
	};
//	发送按钮
	Model.prototype.clicksend = function(event){
//		console.log(document.getElementsByClassName('textarea1ejxq')[0].value);
//		alert(document.getElementsByClassName('textarea1ejxq'))
		if(document.getElementsByClassName('textarea1ejxq')[0].value.length<3){
			common.showPop('评论不得小于三个字');
            	return false;
       		} 
       	var id=this.comp("detailDta").val("id");
       	var user=justep.Shell.user.get();
		var data={
			user_id:user.id,
			content:document.getElementsByClassName('textarea1ejxq')[0].value,
			new_id:id
		};
		var url =this.util.apiPath+'/zhixines/api/xiaoxi/addEhomelife',me=this;
		var newdata=me.comp('reviewDta');
		$.ajax({
			url:url,
			type:'post',
			async: false,	
			data:data,
			dataType:'json',
			success:function(d){
				if(d.code=="1"){
					common.showPop(d.msg);
					$('[xid="textarea1ejxq"]').val('');
					newdata.refreshData();
					}
				},
				error:function(d){
					console.log(d);
				}
		});	
	};

	Model.prototype.textarea1ejxqFocus = function(event){
		$('[xid="textarea1ejxq"]').val('');
	};

	return Model;
});
