<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="data" idColumn="url" confirmRefresh="false">
   <column name="url" type="String" xid="xid1"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar top" xid="titleBar1">
   <div class="x-titlebar-left top-left" xid="left1">
    <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon left-btn" icon="icon-chevron-left" onClick="{operation:'window.close'}" xid="backBtnguanjiaifram">
     <i class="icon-ios7-arrow-left icon-chevron-left" style="font-size:0.6rem;" xid="i2"></i>
     <span xid="span1"></span></a> 
    </div> 
    
   <div class="x-titlebar-title">
    <span id="type" xid="span8" style="color:#333333;" bind-text="titleName">熊猫管家</span></div><div class="x-titlebar-right reverse top-right" xid="right1">
    </div> </div></div>
   <div class="x-panel-content" xid="content1"></div>
   <iframe src="" id="iframe1" xid="iframe1" bind-attr-src='$model.data.val("url")' style="display:none;position:absolute;background-color:white;top:48px;" width="100%" height="100%"></iframe></div></div>