<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:636px;left:982px;" onLoad="modelLoad" onActive="modelActive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="ejiaDta" onCustomRefresh="ejiaDtaCustomRefresh" idColumn="id">
   <column label="编号" name="id" type="String" xid="column15"></column>
  <column label="标题" name="title" type="String" xid="column16"></column>
  <column name="datatime" type="String" xid="column14"></column>
  <column label="内容" name="content" type="String" xid="xid24"></column>
  <column name="cid" type="String" xid="xid25"></column>
  <column label="浏览量" name="browse_volume" type="String" xid="xid26"></column>
  <column label="更新发布时间" name="updatetime" type="String" xid="xid27"></column>
  <column name="publisher" type="String" xid="xid28"></column>
  <column label="楼盘ID" name="lid" type="String" xid="xid29"></column>
  <column label="分类名称" name="category_name" type="String" xid="xid30"></column>
  <column name="default_picture" type="String" xid="xid21"></column>
  <column label="1，正常，2，热点，3，禁用" name="sts" type="String" xid="xid1"></column>
  <column name="cate_name" type="String" xid="xid2"></column>
  <column name="up_time" type="String" xid="xid4"></column>
  <column name="add_time" type="String" xid="xid5"></column>
  <column label="当等于1时为活动" name="type" type="String" xid="xid8"></column>
  <column label="总的可以报名人数" name="total_number" type="String" xid="xid9"></column>
  <column label="参与人数" name="participants_number" type="String" xid="xid10"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="ggDta" idColumn="id" onCustomRefresh="ggDtaCustomRefresh">
   <column label="编号" name="id" type="String" xid="column9"></column>
  <column label="标题" name="title" type="String" xid="column7"></column>
  <column name="datatime" type="String" xid="column10"></column>
  <column label="内容" name="content" type="String" xid="column4"></column>
  <column name="cid" type="String" xid="column5"></column>
  <column label="浏览量" name="browse_volume" type="String" xid="column6"></column>
  <column label="更新发布时间" name="updatetime" type="String" xid="column1"></column>
  <column name="publisher" type="String" xid="column2"></column>
  <column label="楼盘ID" name="lid" type="String" xid="column3"></column>
  <column label="分类名称" name="category_name" type="String" xid="column8"></column>
  <column name="default_picture" type="String" xid="column11"></column>
  <column name="yuedu" type="String" xid="xid3"></column>
  <column name="sts" type="String" xid="xid6"></column>
  <column label="new标签" name="notice" type="String" xid="xid7"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="bottomIconData" idColumn="short_name" onCustomRefresh="bottomIconDataCustomRefresh">
   <column name="short_name" type="String" xid="xid36"></column>
   <column name="icon_name" type="String" xid="xid37"></column>
   <column name="icon_image1" type="String" xid="xid38"></column>
   <column name="icon_image2" type="String" xid="xid39"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="邻里"
          class="x-titlebar top">
          <div class="x-titlebar-left top-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon left-btn" icon="icon-ios7-arrow-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-ios7-arrow-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">邻里</div>  
          <div class="x-titlebar-right reverse top-right" bind-click="right1Click"> 
          <span xid="span9" style="position: relative;" bind-click="span9Click">
   <img src="$UI/zhixin/img/bellh.png" alt="" xid="image13" style="width:0.4rem;vertical-align:middle;"></img>
   <span xid="span9xiaohondian" class="ts" id="span99" style="display:none;"></span></span>
  </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1" style="bottom:0.98rem;background:#f0f0f0;">
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panelbannner" style="border: none;border-radius:0;margin-bottom:0;border-bottom:1px solid #e6e6e6;max-height:3.6rem;overflow:hidden;"><img src="" alt="" xid="image1" id="banner" style="max-width:100%;max-height:100%;"></img></div>
  <div component="$UI/system/components/bootstrap/tabs/tabs" xid="tabs1" style="width:100%;padding:0;height:0.96rem;oveflow:hidden;">
   <ul class="nav nav-tabs" xid="ul4" style="border-bottom: 1px solid #FFF;font-size:0.3rem;background-color:#ffffff;height:1rem;">
    <li xid="li8" style="font-weight:normal;text-align:center;width:49.5%;height:1rem;" class="active">
     <a content="shequgonggao" xid="tabItem7" style="height:0.96rem;display:inline-block;padding:0 0.2rem"><![CDATA[社区公告]]></a></li> 
    <span xid="span2" class="spanborder"></span><li role="presentation" xid="li9" style="font-weight:normal;text-align:center;width:49.5%;height:1rem;">
     
  <a xid="tabItem8ejiashenghuo" style="height:0.96rem;display:inline-block;padding:0 0.2rem;" content="ejiashenghuo"><![CDATA[e家生活]]></a>
  </li> </ul> 
   <div class="tab-content" xid="div8">
    <div class="tab-pane active" xid="shequgonggao">
     
     
     
     
     
     <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="ggDta">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" style="border-bottom: 1px solid #eeeeee;padding:0 0.3rem;background-color:#ffffff;position:relative;margin-top:0.2rem" bind-click="li1Click">
  <span xid="span5"></span><div component="$UI/system/components/justep/row/row" class="x-row" xid="rowTitle" style=" border-bottom:1px solid #eee;height:1rem;line-height:1rem;">
   <div class="x-col" xid="col4" style="overflow: hidden;padding:0;margin:0;font-weight:bold;font-size:0.32rem;padding:0;overflow:hidden;">
  <span xid="title1" bind-text='val("title")' style="display:inline-block;vertical-align:middle;overflow:hidden;white-space: nowrap;text-overflow: ellipsis;"><![CDATA[]]></span><span xid="flag" style="color:#ffffff;font-weight:normal;background-color:#ff5a59;font-size:0.2rem;height:0.3rem;border-radius:0.04rem;vertical-align:middle;padding:0.02rem 0.1rem;border-radius:0.06rem" bind-visible=' val("notice") == 0'><![CDATA[NEW]]></span></div>
   <div class="x-col x-col-fixed" xid="col6" style="width:auto;text-align:right;"><img src="$UI/zhixin/img/shop/eyes.png" alt="" xid="image4" style="width:0.3rem;"></img>
  <span xid="span3" style="color:#999999;font-size:0.26rem;" bind-text=' val("yuedu")'><![CDATA[10]]></span></div>
  </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="rowneirong" style="padding:0.2rem 0;">
   <div class="x-col" xid="col8"><p xid="p2" style="margin:0;overflow: hidden;max-height:2.4rem;font-size:0.26rem;color:#333333;line-height:0.4rem;" bind-text='val("content")'><![CDATA[内容内容内内容内容内容内容内内容内容内容容内容内容内容内容内容内容内容内容容内容内容内容内容内容内容内容]]></p></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="max-height:0.6rem;line-height:0.6rem;">
   <div class="x-col" xid="col10" style="color:#999999;">
    
  </div> 
  <div class="x-col" xid="col1"><p xid="p3" style="margin:0;float:right;font-size:0.24rem;color:#999999;" bind-text=' val("updatetime")'><![CDATA[2017年2月33日]]></p></div></div>
  </li></ul> </div>
  </div> 
    <div class="tab-pane" xid="ejiashenghuo">
     <div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="ejiaDta" style="padding:0;">
   <ul class="x-list-template" xid="listTemplateUl2" style="padding:0;">
    <li xid="li2" style="border-bottom: 1px solid #eeeeee;padding:0 0.3rem;background-color:#ffffff;margin-top:0.2rem" bind-click="li2Click">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="border-bottom:1px solid #eee;padding:0;line-height:1rem;">
      <div class="x-col" xid="col13" style="padding:0;white-space: nowrap;text-overflow: ellipsis;">
       <p xid="p5" style="ight:bold;font-size:0.32rem;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;display:inline-block;float:left;" bind-text=' val("title")' class="ejiatitle"><![CDATA[]]></p>
  <span xid="span6" style="color:#ffffff;font-weight:normal;background-color:#ff5a59;font-size:0.2rem;border-radius:0.04rem;vertical-align:middle;padding:0.02rem 0.1rem;border-radius:0.06rem;height:0.3rem;margin-left:0.05rem" bind-visible=' val("type") == 1'><![CDATA[活动]]></span></div> 
      <div class="x-col x-col-fixed" xid="col12" style="width:auto;">
       
       
  <div xid="div3" bind-visible='val("type") !=1'><img src="$UI/zhixin/img/shop/eyes.png" alt="" xid="image6" style="width:0.3rem;"></img><span xid="span4" style="color:#999999;font-size:0.26rem;" bind-text='val("browse_volume")'>10</span></div>
  <div xid="div4" style="color:#999" bind-visible=' val("type") == 1'><span xid="span"><![CDATA[报名:]]></span>
  <span xid="span10" bind-text='val("participants_number")' style="color:#ff5a59"><![CDATA[0]]></span>
  <span xid="span11"><![CDATA[/]]></span>
  <span xid="span12" bind-text=' val("total_number")'><![CDATA[20]]></span></div></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7" style="padding:0.2rem 0;">
      <div class="x-col x-col-fixed" xid="col11" style="width:5.1rem;">
       <p xid="p6" style="margin:0;overflow: hidden;max-height:2rem;line-height:0.4rem;font-size:0.26rem;color:#333333;" bind-text=' val("content")'>内容内容内内容内容内容内容内内容内容内容容内容内容内容内容内容内容内容内容容内容内容内容内容内容内容内容</p></div> 
  <div class="x-col" xid="col15" style="padding:0;width:1.3rem;">
  <div xid="div1" style="width:1.28rem;height:1.28rem;overflow:hidden;margin-top:0.04rem;" bind-visible=' val("default_picture") !=""' class="pull-right"><img src="$UI/zhixin/img/error.png" alt="" xid="image8" bind-attr-src=' val("default_picture")' style="max-width:100%;max-height:100%;"></img></div></div></div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="max-height:0.6rem;line-height:0.6rem;">
      <div class="x-col" xid="col14" style="color:#999999;">
       
       <p xid="p9" style="margin:0;color:#7bc93d;font-size:0.24rem;" bind-text=' val("cate_name")'><![CDATA[生活健康]]></p></div> 
  <div class="x-col" xid="col16"><p xid="p7" style="margin:0;float:right;font-size:0.24rem;color:#999999;" bind-text='val("up_time")'>2017年2月33日</p></div></div> 
  </li> </ul> </div></div> </div> 
  </div></div>
  <div class="x-panel-bottom" xid="bottom1" style="height:0.98rem;border-top:1px solid #eee;background-color:#fff;">
   
  <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified mainbottom" tabbed="true" xid="buttonGroup3" style="background-color:white;margin-top:0.09rem;border:none;display:block;">
   <div component="$UI/system/components/justep/list/list" class="x-list" xid="bottomIconList" data="bottomIconData">
    <ul class="x-list-template" xid="listTemplateUl9" style="margin:0;">
     <li xid="bottomIcon" class="pull-left col text-center" style="height:0.98rem;width:20%;" bind-click="bottomIconClick">
      <a component="$UI/system/components/justep/button/button" class="btn btn-icon-top" label="首页" xid="bottomBtn" target="homeContent" style="color:#666;font-weight:normal;" bind-css="{'bottomFont':val(&quot;short_name&quot;)==&quot;neighbourhood&quot;}">
       <img src="$UI/zhixin/img/main/home.png" xid="image40" style="width:0.48rem;height:0.48rem;" bind-attr-src='val("short_name")=="neighbourhood"?val("icon_image2"):val("icon_image1")' height="0.48rem"></img>
       <span xid="span40" style="font-size: 0.22rem;" bind-css="{}" bind-text='val("icon_name")'>首页</span></a> </li> </ul> </div> </div></div></div> 
<div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="livelineOver" dismissible="false">
   <div class="x-popOver-overlay" xid="div2"></div>
   <div class="x-popOver-content" xid="div5" style="margin-left:-150px;margin-top:-150px;">
    <img src="$UI/zhixin/img/gameover.png" alt="" xid="image3" style="width:300px;"></img>
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10" style="position: absolute;bottom:10px;">
     <div class="x-col" xid="col17">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="确定" xid="button5" style="font-size:16px;color:white;background-color:#7bc93d;margin-left: auto;margin-right: auto;width:50%;border-radius: 8px;    border-color: #57AD14;" onClick="denglu">
       <i xid="i3"></i>
       <span xid="span1">确定</span></a> </div> </div> </div> </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="loadpopOver" opacity="1" style="display:none;">
<div class="x-popOver-overlay" xid="div14" style="background-color:white;"></div>
   <div class="x-popOver-content" xid="div13" style="margin-left:-100px;margin-top:-80px;">
    <img src="$UI/zhixin/img/loading.gif" alt="" xid="image15" style="width:200px;"></img></div> </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="Overlineerrorlinli" dismissible="false">
   <div class="x-popOver-overlay" xid="div15"></div>
   <div class="x-popOver-content" xid="div16" style="margin-left:-150px;margin-top:-150px;">
    <img src="$UI/zhixin/img/error.png" alt="" xid="image9" style="width:300px;"></img>
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row17" style="position: absolute;bottom:10px;">
     <div class="x-col" xid="col23">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="确定" xid="button9" style="font-size:16px;color:white;background-color:#7bc93d;margin-left: auto;margin-right: auto;width:50%;border-radius: 8px;    border-color: #57AD14;" onClick="denglu">
       <i xid="i14"></i>
       <span xid="span7">确定</span></a> </div> </div> </div> </div></div>