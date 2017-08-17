<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="shujuData" onCustomRefresh="shujuDataCustomRefresh"></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1" height="48"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar top" xid="titleBar1">
   <div class="x-titlebar-left top-left" xid="left1">
    <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon left-btn" icon="icon-ios7-arrow-left" onClick="{operation:'window.close'}" xid="backBtn">
     <i class="icon-ios7-arrow-left" xid="i2"></i>
     <span xid="span1"></span></a> </div> 
   <div class="x-titlebar-title" style="font-weight:normal;" xid="title1"><span id="span3" xid="span3"><![CDATA[]]></span></div>
   <div class="x-titlebar-right reverse" xid="right1">
    </div> 
  </div></div>  
    <div class="x-panel-content" xid="content1" style="bottom:0;background-color:white;padding:0.15rem;"><div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel2" style="border:none;box-shadow:0 0 0 white;">
   <div class="panel-body" xid="body1"><span id="span2" xid="span2"><![CDATA[]]></span></div></div></div>
  </div> 
</div>