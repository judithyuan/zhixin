define(function(require){
	var $ = require("jquery"),
	justep = require("$UI/system/lib/justep"),
//	apiPath='http://dev.kuju360.com',
//	picDomain='http://dev.kuju360.com',
//	shopPath='http://shop.kuju360.com',
	/*生产环境*/
//	apiPath='https://pandaehome.com',
//	picDomain='https://pandaehome.com',
//	shopPath='http://shop.pandaehome.com',
//	ioPath = 'http://notice.pandaehome.com',
	/*测试环境*/
//	apiPath='http://zhixindev.kuju360.com',
//	picDomain='http://zhixindev.kuju360.com',
//	shopPath='http://zhixinshop.dev.kuju360.com', 
//	ioPath = 'http://zhixin-noticedev.kuju360.com',

	/*灰度环境*/
	apiPath='http://preview.pandaehome.com',
	picDomain='http://preview.pandaehome.com',
	shopPath='http://shop-pre.pandaehome.com', 
	ioPath = 'http://notice.pandaehome.com',
	
	
	default_avatar='img/user_davatar.png',
	callback=function(opt){
		if(opt.act){
			switch(opt.act){
				case 'closepage':
					justep.Shell.closePage();
					break;
				case 'relogin':
					relogin();
					return;
				default:
			}
		}
	},
	showMsg=function(msg,typ,pos){
		typ = typ || 'info';
		pos = pos || 'middle';
		justep.Util.hint(msg,{type:typ,position:pos});
		//alert(msg)
	},
	showPop=function(msg,time){
//		$(".x-hint-top").css("color","red")
		justep.Util.hint(msg,{
			delay : time
			});
		$(".x-hint-top").css({
			  "color":"white",
			  "background":"rgba(0, 0, 0, 0.59)",
			  "top" : "50%",
			  "position" : "absolute",
			  "text-align": "center",
			  "margin-left": "-75px",
			  "width" : "150px",
			  }).find("button[class='close']").hide();
	},
	loadingbar=function(start,stop,error){	//进度
	    $(document).ajaxStart(function() {
	    	$('[xid=loadpopOver]').show();
	    });
	    $(document).ajaxStop(function() {
	    	$('[xid=loadpopOver]').hide();
	    });
	    $(document).ajaxError(function() {
	    	$('[xid=loadpopOver]').hide();
	    });
	},
	relogin=function(){
		var user=justep.Shell.user.get();
		$.post(apiPath+'/api/user/valid',{uid:user.id,v:user.v},function(s){
			if(s.s){
				localStorage.setItem("userUUID", JSON.stringify(s.user));
				justep.Shell.user.set(s.user);
				showMsg('用户验证成功，请重新操作！');
			}else{
				justep.Shell.showPage('login');
			}
		});
	},
	redB=function(parent,money,showNone,reason){
		/*jshint multistr: true */
		$(parent).append('<canvas id="redB" style="background-color:rgba(0,0,0,0.2);position:absolute;z-index:1000;top:0;width:100%;height:100%">\
							\
						</canvas>\
						<script type="text/javascript">\
							var Oc = document.getElementById("redB");\
							var ctx = Oc.getContext("2d");\
							ctx.fillStyle="red";\
							ctx.fillRect(50,50,50,50);\
						</script>\
					');
	}
	;
	
	return {
		redB:redB,
		apiPath:apiPath,
		picDomain:picDomain,
		shopPath:shopPath,
		ioPath:ioPath,
		default_avatar:default_avatar,
		doget:function(url,func){
			$.get(url,function(d){
				callback(d.opt);
				func(d);
			});
		},
		dopost:function(url,param,func){
			$.post(url,param,function(d){
				callback(d.opt);
				func(d);
			});
		},
		showMsg:showMsg,
		showPop:showPop,
		callback:callback,
		loadingbar:loadingbar,
		getImageUrl:function(url){
			if(url)
				return picDomain+url;
		},
		buildParam:function(model,fields){
			var params={},val,i;
			for(i in fields){
				var f=fields[i];
				val=model.comp(f.name).val();
				if(f.v(val)){showMsg(f.msg,'danger');return false;}
				params[f.name]=val;
			}
			return params;
		},
		star:function(s){
			var star='<i class="icon-ios7-star star"></i>',
		    	star_o='<i class="icon-ios7-star-outline star"></i>',
		    	s1=Math.floor(s),
		    	s2=Math.ceil(s),
		    	c=s-s1,
		    	str='',i;
		    for (i=0; i < s1; i++) str+=star;
		    if(i<s1)
		    	if(c>0&&c<=0.5)str+=star;
		    	else str+=star_o;
		    for (i=5; i > s2; i--) str+=star_o;
		    return str;
		}
	};
});
