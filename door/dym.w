<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="dymData"></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1">
    <div component="$UI/system/components/justep/titleBar/titleBar" title="选择单元门" class="x-titlebar" style="background-color:white;color:#303030;font-weight:normal;" xid="titleBar1">
     <div class="x-titlebar-left" xid="left1">
      <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}" xid="backBtn">
       <i class="icon-chevron-left" xid="i1"></i>
       <span xid="span1"></span></a> </div> 
     <div class="x-titlebar-title" style="font-weight:normal;" xid="title1">选择单元门</div>
     <div class="x-titlebar-right reverse" xid="right1"></div></div> </div> 
   <div class="x-panel-content" xid="content1" style="background-color:#eee;">
    <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div xid="div1" style="margin-top:10px;padding-left:10px;background-color:white;">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="border-bottom:1px solid #eee;" bind-click="row1Click">
      <div class="x-col" xid="col1">
       <span xid="span2"><![CDATA[一楼]]></span></div> 
      <div class="x-col" xid="col2"></div>
      <div class="x-col" xid="col3" style="text-align:right;margin-right:10px;">
       <i xid="i2" class="icon-chevron-right"></i></div> </div> 
     </div></li></ul> </div> 
  </div> </div></div>