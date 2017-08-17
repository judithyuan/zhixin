<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;" onParamsReceive="modelParamsReceive" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="conternDat" onCustomRefresh="conternDatCustomRefresh" idColumn="id"><column name="id" type="String" xid="xid1"></column>
  <column name="banner" type="String" xid="xid2"></column>
  <column name="up_time" type="String" xid="xid3"></column>
  <column name="title" type="String" xid="xid4"></column>
  <column name="content" type="String" xid="xid5"></column>
  <column name="add_time" type="String" xid="xid6"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar top" xid="titleBar1" title="详情">
   <div class="x-titlebar-left top-left" xid="left1">
    <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon left-btn" icon="icon-ios7-arrow-left" onClick="{operation:'window.close'}" xid="backBtn" style="padding-right:0.2rem;">
   <i class="icon-ios7-arrow-left" xid="i1"></i>
   <span xid="span4"></span></a></div> 
   <div class="x-titlebar-title" xid="title1" style="font-weight:normal;">详情</div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>  
    <div class="x-panel-content" xid="content1" style="background-color: #f0f0f0;"><div xid="div1"><div xid="div2" style="padding:0.4rem 0.3rem 0.1rem;font-size:0.3rem;color:#333;font-weight:bold;"><p xid="p1"><span xid="span1" bind-text='$model.conternDat.ref("title")'><![CDATA[]]></span></p></div>
  <div xid="div3"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="conternDat" limit="1">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" style="margin: 0 0.3rem;"><div component="$UI/system/components/justep/panel/panel" class="panel panel-default x-card" xid="panel2" style="border-radius: 5px;border-color: #FFF;">
   <div class="panel-content" xid="content2"><img src="$UI/zhixin/img/loading.gif" alt="" xid="image1ddd" bind-attr-src=' val("banner")' style="width:100%;"></img></div>
   <div class="panel-bottom" xid="bottom2"><p xid="p2" style="margin:0 20px;"><span id='mazspan' xid="span3" bind-html='val("content")'><![CDATA[13213213]]></span><span xid="span2" class="pull-right"><![CDATA[]]></span>
  </p></div>
  </div></li></ul> </div></div></div></div>
  </div> 
</div>