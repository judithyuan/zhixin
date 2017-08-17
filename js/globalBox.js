define(function(require){
	var $ = require("jquery"),
	justep = require("$UI/system/lib/justep"),
	common = require("./common"),
	/*公共日志*/
	
	logAjax = function(addr,content,api,params,name,level){
		var contArry = {
			'logaddr：':'2.3.12'+addr,
			'logcontent：':content.toString(),
			'logapi：':api,
			'logparams：':JSON.stringify(params),
		};
		var data = {
			data:JSON.stringify(contArry),
			tag:name,
			level:level
		};
		console.log(contArry);
		$.ajax({
			url : common.apiPath+'/api/log/info',
			dataType: 'json',
			data : data,
			type : 'post',
			timeout: 30000,// 设置超时时间
			async : true,
		});
	},
	
	addLoading=function(parent,money,showNone,reason){
		/*jshint multistr: true */
		$(parent).append('<div xid="div1" class="spinnerdivBoxback" style="height:100%;width:100%;"> <div class="spinner"><div class="double-bounce1"></div><div class="double-bounce2"></div></div></div>');
	},
	removeLoading = function(parent){
		/*jshint multistr: true */
		$(parent).remove();
	},
	xmejAjax = function(url,data,async,successCall,errorCall){//地址  传参 是否同步 成功  失败
//		var me=this;
//		var errorFunction =new Object();
		$.ajax({
			url : url,
			dataType: 'json',
			data : data,
			type : 'post',
			timeout: 100,// 设置超时时间
			async : async,
			success : function(e){
				successCall(e);
			},
			error :function(e){
				errorCall(e);
			},
//			error: function(e){
//				if(status == 'timeout') {
//					me.util.showPop('请求超时'); 
//                }else{
//                	me.util.showPop('请求出错');
//                	error;
//                }
//			}
		});
	},
	showOverline = function(parent){
		/*jshint multistr: true */
		$('body').append('<div component="$UI/system/components/justep/popOver/popOver" style="display:block" class="x-popOver" direction="auto" xid="lineOver" dismissible="false">\
					<div class="x-popOver-overlay" xid="lineOverdiv21"></div>\
					<div class="x-popOver-content" xid="lineOverdiv5" style="margin-left:-150px;margin-top:-150px;">\
						<img src="https://pandaehome.com/statics/img/error.png" alt="" xid="lineOverimage5" style="width:300px;"></img>\
						<div component="$UI/system/components/justep/row/row" class="x-row" xid="lineOverrow4" style="position: absolute;bottom:10px;">\
							<div class="x-col" xid="col17">\
				      			<a class="btn btn-link btn-only-label btn-block" label="确定" style="font-size:16px;color:white;background-color:#7bc93d;margin-left: auto;margin-right: auto;width:50%;border-radius: 8px;border-color: #57AD14;" onClick="window.location.reload()">\
					       			<i xid="lineOveri3"></i>\
					       			<span xid="lineOverspan7">确定</span>\
				       			</a> \
							</div> \
						</div> \
					</div> \
				</div>\
		');
//		$(parent).append('<div component="$UI/system/components/justep/popOver/popOver" style="display:block" class="x-popOver" direction="auto" xid="livelineOver" dismissible="false">\
//		   		<div class="x-popOver-overlay" xid="div2"></div>\
//		   		<div class="x-popOver-content" xid="div5" style="margin-left:-150px;margin-top:-150px;">\
//		    		<img src="$UI/zhixin/img/gameover.png" alt="" xid="image5" style="width:300px;"></img>\
//		    		<div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="position: absolute;bottom:10px;">\
//			     		<div class="x-col" xid="col17">\
//			      			<a class="btn btn-link btn-only-label btn-block" label="确定" style="font-size:16px;color:white;background-color:#7bc93d;margin-left: auto;margin-right: auto;width:50%;border-radius: 8px;border-color: #57AD14;" onClick="window.location.reload()">\
//				       			<i xid="i3"></i>\
//				       			<span xid="span7">确定</span>\
//			       			</a> \
//			       		</div> \
//		       		</div> \
//		       </div> \
//		     </div>\		
//		');
	},
	redShow = function(toDoit){
		/*jshint multistr: true */
//		var a = function(e){
//			justep.Shell.showPage(require.toUrl('../mima.w'),{ykrz :"ykrzmima",});
//		}
		$('body').on('click','[xid=col17red]',function(e){
			toDoit(e);
		});
		$('body').append('<div component="$UI/system/components/justep/popOver/popOver" style="display:block" class="x-popOver" direction="auto" xid="lineOver" dismissible="false">\
				<div class="x-popOver-overlay" xid="lineOverdiv21"></div>\
				<div class="x-popOver-content" xid="lineOverdiv5" style="margin-left:-150px;margin-top:-150px;">\
					<img src="https://pandaehome.com/statics/img/error.png" alt="" xid="lineOverimage5" style="width:300px;"></img>\
					<div component="$UI/system/components/justep/row/row" class="x-row" xid="lineOverrow4" style="position: absolute;bottom:10px;">\
						<div class="x-col" xid="col17red">\
			      			<a class="btn btn-link btn-only-label btn-block" label="确定" style="font-size:16px;color:white;background-color:#7bc93d;margin-left: auto;margin-right: auto;width:50%;border-radius: 8px;border-color: #57AD14;" onClick="">\
				       			<i xid="lineOveri3"></i>\
				       			<span xid="lineOverspan7">确定</span>\
			       			</a> \
						</div> \
					</div> \
				</div> \
			</div>\
	');
	}
	;
	
	return {
		redShow:redShow,
		logAjax:logAjax,
		addLoading:addLoading,
		removeLoading:removeLoading,
		xmejAjax:xmejAjax,
		showOverline:showOverline,
		
	};
});
