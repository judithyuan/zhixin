<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:138px;left:178px;"
    onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="data" idColumn="url" confirmRefresh="false"> 
      <column name="url" type="String" xid="xid1"/>
    </div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="wyfwData" idColumn="short_name" onCustomRefresh="wyfwDataCustomRefresh"><column name="short_name" type="String" xid="xid2"></column>
  <column name="icon_name" type="String" xid="xid3"></column>
  <column name="icon_image" type="String" xid="xid4"></column>
  <column name="icon_state" type="String" xid="xid5"></column>
  <column name="top_right_corner" type="String" xid="xid6"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="bmshData" idColumn="short_name" onCustomRefresh="bmshDataCustomRefresh">
   <column name="short_name" type="String" xid="column1"></column>
   <column name="icon_name" type="String" xid="column2"></column>
   <column name="icon_image" type="String" xid="column3"></column>
   <column name="icon_state" type="String" xid="column4"></column>
   <column name="top_right_corner" type="String" xid="column5"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="sqzbData" idColumn="short_name" onCustomRefresh="sqzbDataCustomRefresh">
   <column name="short_name" type="String" xid="column6"></column>
   <column name="icon_name" type="String" xid="column10"></column>
   <column name="icon_image" type="String" xid="column9"></column>
   <column name="icon_state" type="String" xid="column8"></column>
   <column name="top_right_corner" type="String" xid="column7"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="bottomIconData" idColumn="short_name" onCustomRefresh="bottomIconDataCustomRefresh">
   <column name="short_name" type="String" xid="xid36"></column>
   <column name="icon_name" type="String" xid="xid37"></column>
   <column name="icon_image1" type="String" xid="xid38"></column>
   <column name="icon_image2" type="String" xid="xid39"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar top"> 
        <div class="x-titlebar-left top-left"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-only-icon left-btn" icon="icon-chevron-left" onClick="{operation:'window.close'}"
            xid="backBtnguanjiaifram"> 
            <i class="icon-ios7-arrow-left icon-chevron-left" style="font-size:0.6rem;"/>  
            <span/> 
          </a> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon left-btn" label="返回选择" xid="button1guanjiafanhui" icon="icon-chevron-left" onClick="button1Click" bind-visible=" $model.data.val(&quot;url&quot;)  !=&quot;&quot;" style="display:none;"> 
            <i xid="i1" class="icon-ios7-arrow-left icon-chevron-left" style="font-size:0.6rem;"/>  
            <span style="display:none;" xid="span7">返回选择</span>
          </a></div>  
        <div class="x-titlebar-title"> 
          <span id="type" xid="span8" style="color:#333333;"><![CDATA[熊猫管家]]></span>
        </div>  
        <div class="x-titlebar-right reverse top-right"> 
          <span xid="span9" style="position:relative;display:block;"
            bind-click="span9Click"> 
            <img src="$UI/zhixin/img/bellh.png" alt="" xid="image21"
              style="vertical-align:middle;width:0.4rem;"/>  
            <span xid="span99" class="ts" id="span99" style="display:none;"/>
          </span>
           
        </div> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1" id='bodyguanjia'>
      <div component="$UI/system/components/bootstrap/panel/panel"
        xid="panelwuyefuwu" style="background-color:#f0f0f0;border-radius:0;height:0.7rem;">
        <p xid="p1" style="font-size:0.26rem;margin-left:0.3rem;line-height:0.7rem;"><![CDATA[物业服务]]></p>
      </div>  
      <div component="$UI/system/components/justep/list/list" class="x-list clearfix" xid="listwyfw" style="display:block;" data="wyfwData">
   <ul class="x-list-template x-min-height" xid="listTemplateUl1" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl1">
    <li xid="wyfwBtn" class="col col-xs-3 text-center" componentname="li(html)" id="undefined_li1" bind-click="wyfwBtnClick" style="padding:0;">
     <div xid="div1" style="height:1.9rem;padding:0;text-align: center;position: relative;">
      <p xid="p20">
   <img src="$UI/zhixin/img/guanjia/ejqb.png" alt="" xid="image24" style="max-width: 3em;min-width:0.5em;width:100%;" bind-attr-src="val('icon_image')"></img>
   <img src="$UI/zhixin/img/guanjia/new.png" alt="" xid="image25" style="width:0.6rem;padding:0 0.1rem;position:absolute;top:0.5em;right:-0.2rem;" bind-visible="val('top_right_corner')==1"></img></p>
  <p xid="p18" style="font-size:0.28rem;color:#666;margin-top:0.3rem;margin-bottom:0.3rem;" bind-text="val('icon_name')">e钱包</p></div> </li> </ul> </div><div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel"
        xid="panelbianmin" style="background-color:#f0f0f0;border-radius:0;height:0.7rem;"> 
        <p xid="p19" style="font-size:0.26rem;margin-left:0.3rem;line-height:0.7rem;"><![CDATA[便民生活]]></p>
      </div>  
      <div component="$UI/system/components/justep/list/list" class="x-list clearfix" xid="listbmsh" style="display:block;" data="bmshData">
   <ul class="x-list-template x-min-height" xid="listTemplateUl2" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl1">
    <li xid="li1" class="col col-xs-3 text-center" componentname="li(html)" id="undefined_li1" bind-click="bmshBtnClick" style="padding:0;">
     <div xid="div6" style="height:1.9rem;padding:0;text-align: center;position: relative;">
      <p xid="p34">
       <img src="$UI/zhixin/img/guanjia/ejqb.png" alt="" xid="image26" style="max-width: 3em;min-width:0.5em;width:100%;" bind-attr-src="val('icon_image')"></img>
       <img src="$UI/zhixin/img/guanjia/new.png" alt="" xid="image29" style="width:0.6rem;padding:0 0.1rem;position:absolute;top:0.5em;right:-0.2rem;" bind-visible="val('top_right_corner')==1"></img></p> 
      <p xid="p21" style="font-size:0.28rem;color:#666;margin-top:0.3rem;margin-bottom:0.3rem;" bind-text="val('icon_name')">e钱包</p></div> </li> </ul> </div><div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel"
        xid="panelshequzb" style="background-color:#f0f0f0;border-radius:0;height:0.7rem;"> 
        <p xid="p38" style="font-size:0.26rem;margin-left:0.3rem;line-height:0.7rem;"><![CDATA[社区周边]]></p>
      </div>  
      <div component="$UI/system/components/justep/list/list" class="x-list clearfix" xid="listsqzb" style="display:block;" data="sqzbData">
   <ul class="x-list-template x-min-height" xid="listTemplateUl3" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl1">
    <li xid="sqzbBtn" class="col col-xs-3 text-center" componentname="li(html)" id="undefined_li1" bind-click="sqzbBtnClick">
     <div xid="div7" style="height:1.9rem;padding:0;text-align: center;position: relative;">
      <p xid="p35">
       <img src="$UI/zhixin/img/guanjia/ejqb.png" alt="" xid="image31" style="max-width: 3em;min-width:0.5em;width:100%;" bind-attr-src="val('icon_image')"></img>
       <img src="$UI/zhixin/img/guanjia/new.png" alt="" xid="image30" style="width:0.6rem;padding:0 0.1rem;position:absolute;top:0.5em;right:-0.2rem;" bind-visible="val('top_right_corner')==1"></img></p> 
      <p xid="p36" style="font-size:0.28rem;color:#666;margin-top:0.3rem;margin-bottom:0.3rem;" bind-text="val('icon_name')">e钱包</p></div> </li> </ul> </div></div>  
    <div class="x-panel-bottom" xid="bottom1guanjia" style="height:0.98rem;border-top:1px solid #eee;"> 
      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified mainbottom" tabbed="true" xid="buttonGroup3" style="background-color:white;margin-top:0.09rem;border:none;display:block;">
   <div component="$UI/system/components/justep/list/list" class="x-list" xid="bottomIconList" data="bottomIconData">
    <ul class="x-list-template" xid="listTemplateUl9" style="margin:0;">
     <li xid="bottomIcon" class="pull-left col text-center" style="height:0.98rem;width:20%;" bind-click="bottomIconClick">
      <a component="$UI/system/components/justep/button/button" class="btn btn-icon-top" label="首页" xid="bottomBtn" target="homeContent" style="color:#666;font-weight:normal;" bind-css="{'bottomFont':val(&quot;short_name&quot;)==&quot;steward&quot;}">
       <img src="$UI/zhixin/img/main/home.png" xid="image40" style="width:0.48rem;height:0.48rem;" bind-attr-src='val("short_name")=="steward"?val("icon_image2"):val("icon_image1")' height="0.48rem"></img>
       <span xid="span40" style="font-size: 0.22rem;" bind-css="{}" bind-text='val("icon_name")'>首页</span></a> </li> </ul> </div> </div></div>
    <iframe src="" id="iframe1" xid="iframe1" bind-attr-src="$model.data.val(&quot;url&quot;)"
      style="display:none;position:absolute;background-color:white;top:48px;" width="100%"
      height="100%"/> 
  </div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    direction="auto" xid="livelineOver" dismissible="false"> 
    <div class="x-popOver-overlay" xid="div2"/>  
    <div class="x-popOver-content" xid="div5" style="margin-left:-150px;margin-top:-150px;"> 
      <img src="$UI/zhixin/img/gameover.png" alt="" xid="image6" style="width:300px;"/>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10"
        style="position: absolute;bottom:10px;"> 
        <div class="x-col" xid="col20"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block"
            label="确定" xid="button5" style="font-size:16px;color:white;background-color:#7bc93d;margin-left: auto;margin-right: auto;width:50%;border-radius: 8px;    border-color: #57AD14;"
            onClick="denglu"> 
            <i xid="i3"/>  
            <span xid="span16">确定</span>
          </a> 
        </div> 
      </div> 
    </div> 
  </div>
<div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="ykrzpopOver" style="display:none;">
   <div class="x-popOver-overlay" xid="div26" style="background-color:black;"></div>
   <div class="x-popOver-content" xid="div26" style="height:8.6rem;margin-left:-3.2rem;margin-top:-4.3rem;padding-top:0.8rem;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="button9" style="font-size:16px;color:#7bc93d;    position: absolute;right: 0;z-index:20;height:0.5rem;width:0.5rem;top:0;" onClick="button6Clickcancle">
     <i xid="i2"></i>
     <span xid="span33"></span></a> 
    <img src="$UI/zhixin/img/main/x.png" alt="" xid="image27" style="position:absolute;right:0;top:0;height:0.5rem"></img>
    <img src="$UI/zhixin/img/main/rzfw.png" alt="" xid="image28" style="width:6.4rem;"></img>
    <div xid="div4" style="width:6.4rem;height:3rem;padding-top:0.8rem;">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row18">
      <div class="x-col" xid="col24">
       <span xid="span31" style="width:100%;text-align:center;color:#999;font-size:0.28rem;" class="center-block">该服务目前仅对指定小区的认证住户开通</span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row18" style="margin-top:0.2rem;">
      <div class="x-col" xid="col22">
       <span xid="span22" style="width:100%;text-align:center;color:#999;font-size:0.28rem;" class="center-block"></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row17" style="margin-top:0.2rem;">
      <div class="x-col" xid="col23">
       <span xid="span17" style="width:100%;text-align:center;color:#999;font-size:0.28rem;" class="center-block"></span></div> </div> </div> 
    <div xid="div3" style="height:7.6rem;background-color:#fff;position:absolute;top:1rem;left:0;width:6.4rem;z-index:-1;"></div>
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row22" style="position: absolute;bottom:0.3rem;">
     <div class="x-col" xid="col46" style="position:relative;height:0.8rem;margin:0 0.15rem 0 0.3rem;">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="立即认证" xid="button18" style="background-color:rgb(93,248,224);height:100%;line-height:0.8rem;color:#fff;font-size:0.36rem;border-radius:5px;" onClick="button7Clicklikerenz">
       <i xid="i17"></i>
       <span xid="span41">立即认证</span></a> </div> 
     <div class="x-col" xid="col48" style="height:0.8rem;margin:0 0.3rem 0 0.15rem;">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="再看看" xid="button19" style="background-color:#e3e3e3;height:100%;line-height:0.8rem;color:#fff;font-size:0.36rem;border-radius:5px;" onClick="button19Click">
       <i xid="i18"></i>
       <span xid="span42">再看看</span></a> </div> </div> </div> </div></div>
