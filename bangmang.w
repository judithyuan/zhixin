<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:206px;left:51px;" onLoad="modelLoad"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="bangmangData" onCustomRefresh="bangmangDataCustomRefresh" idColumn="id"><column name="id" type="String" xid="xid1"></column>
  <column label="地址" name="address" type="String" xid="xid2"></column>
  <column label="内容" name="content" type="String" xid="xid3"></column>
  <column label="创建时间" name="create_time" type="String" xid="xid4"></column>
  <column label="结束时间" name="end_time" type="String" xid="xid5"></column>
  <column label="image" name="image" type="String" xid="xid6"></column>
  <column label="标题" name="title" type="String" xid="xid7"></column>
  <column label="start_time" name="start_time" type="String" xid="xid8"></column></div>
  </div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel3" style="background-color:#f0f0f0;">
   <div class="x-panel-top" xid="top2"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" style="background-color:#7bc93d;" title="帮帮忙">
   <div class="x-titlebar-left" xid="left1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button1" icon="icon-chevron-left" onClick='tuichu'>
   <i xid="i1" class="icon-chevron-left"></i>
   <span xid="span1"></span></a></div>
   <div class="x-titlebar-title" xid="title1">帮帮忙</div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>
   <div class="x-panel-content" xid="content4"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="bangmangData" bind-click="list1Click">
   <ul class="x-list-template" xid="listTemplateUl1" style="margin:10px 10px 10px 10px;">
    <li xid="li1" style="margin-bottom: 10px;background-color:white;border-radius:10px;">
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col4"></div>
   <div class="x-col" xid="col5" style="text-align:center;"><span xid="span2" bind-text='val("title")'><![CDATA[这里是活动名称]]></span></div>
   <div class="x-col" xid="col6"></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col2"><img src="$UI/zhixin/img/main/background.png" alt="" xid="image1" bind-attr-src='val("image")' style="width:100%;height:100%;" height="100%"></img></div>
  </div></li></ul> </div></div>
   </div></div>