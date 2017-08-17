<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:195px;left:371px;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="lpData" idColumn="id" onCustomRefresh="lpDataCustomRefresh">
   <column name="id" type="Integer" xid="xid3"></column>
   <column name="nam" type="String" xid="xid4"></column>
   <column name="p" type="String" xid="xid6"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="char" idColumn="c">
   <column name="c" type="String" xid="xid5"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar text-orange top" xid="titleBar" title="选择楼盘">
   <div class="x-titlebar-left top-left" xid="left1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-icon-left btn-only-icon text-orange left-btn" xid="button1" icon="icon-ios7-arrow-left" onClick="{operation:'window.close'}">
     <i xid="i7" class="icon-ios7-arrow-left"></i>
     <span xid="span3"></span></a> </div> 
   <div class="x-titlebar-title" xid="title1" style="font-weight: normal;color:#333333;">选择楼盘</div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>  
    <div class="x-panel-content" xid="content1" style="background-color:#f0f0f0;">
    <div style="padding-left:0.3rem;background-color:#f5f5f5;border-bottom:1px solid #eee;height:0.6rem;line-height:0.6rem;font-size:0.28rem;color:#333;border-bottom:1px solid #eee;color:#666;" bind-html="'&lt;span style=&quot;font-weight:bold&quot;&gt;'+$model.params.ctxt+'&lt;/span&gt;'"></div>
    <ul component="$UI/system/components/justep/list/list" class="x-list x-list-template" xid="list2" data="char">
   <li xid="li4">
    <div xid="div3" style="background-color:#f0f0f0;border-bottom:1px solid #eee;padding-left:0.3rem;height:0.6rem;line-height:0.6rem;color:#333;font-size:0.28rem;" bind-html="'&lt;span style=&quot;font-weight:bold;&quot; id=&quot;'+val(&quot;c&quot;)+'&quot;&gt;'+val(&quot;c&quot;)+'&lt;/span&gt;'"></div>
    <ul component="$UI/system/components/justep/list/list" class="x-list x-list-template" xid="list3" data="lpData" filter="$row.val('p')==$object.val('c')" style="background-color: white;">
     <li xid="li5" class="clearfix" style="padding-left:0.3rem;border-bottom: 1px solid #eeeeee;height:0.9rem;;line-height:0.9rem;" bind-value='val("id")' bind-click="list3Click">
      <span xid="span5" bind-text='ref("nam")' class="pull-left" style="color:#333;font-size:0.28rem;"></span>
      </li> </ul> </li> </ul>
  <ul component="$UI/system/components/justep/list/list" class="x-list x-list-template" xid="list7" data="char" style="position:fixed;right:0.3rem;top:2.2rem;">
   <li xid="li6" bind-html="'&lt;a style=&quot;color:#999;&quot; href=&quot;#'+val(&quot;c&quot;)+'&quot;&gt;'+val(&quot;c&quot;)+'&lt;/a&gt;'" style="font-size:0.28rem;color:#999;"></li></ul>
  </div>
  </div> 
</div>