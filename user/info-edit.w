<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:367px;top:57px;"> 
  </div>  
  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" style="background-color:white;color:#ff3226;">
     <div class="x-titlebar-left" xid="left1">
      <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}" xid="backBtn">
       <i class="icon-chevron-left" xid="i2"></i>
       <span xid="span2"></span></a> </div> 
     <div class="x-titlebar-title" bind-text=" $model.params.data.tit" xid="title1"></div>
     <div class="x-titlebar-right reverse" xid="right1">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="完成" xid="button1" icon="icon-android-checkmark" onClick="button1Click">
       <i xid="i1" class="icon-android-checkmark"></i>
       <span xid="span1">完成</span></a> </div> </div> </div> 
   <div class="x-panel-content" xid="content1" style="background-color:#f5f5f5;"><div xid="div3" style="padding-top:10px;"><input component="$UI/system/components/justep/input/input" class="form-control" xid="infoedit" bind-ref="$model.userInfo($model.params.data.field)"></input></div></div></div></div>