<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:8px;left:83px;height:auto;" onParamsReceive="modelParamsReceive" onLoad="modelLoad"/> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1">
    <div component="$UI/system/components/justep/titleBar/titleBar" title="访客开门" class="x-titlebar top" xid="titleBar1">
     <div class="x-titlebar-left top-left" xid="left1">
      <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon left-btn" icon="icon-ios7-arrow-left" onClick="{operation:'window.close'}" xid="backBtn">
       <i class="icon-ios7-arrow-left" xid="i2" style="font-size:0.6rem;"></i>
       <span xid="span3"></span></a> 
  <span xid="span10"></span></div> 
     <div class="x-titlebar-title" style="font-weight:normal;" xid="title1">访客开门</div>
     <div class="x-titlebar-right reverse" xid="right1" style="padding-right:0.3rem;"></div></div> </div> 
   <div class="x-panel-content" xid="content1" style="background-color:#eee;font-size:0.3rem;">
    <div xid="div1" style="margin-top:0.2rem;padding-left:0.3rem;background-color:white;">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="border-bottom:1px solid #eee;line-height:1rem;">
      <div class="x-col x-col-20" xid="col1">
       <span xid="span1"><![CDATA[有效时间]]></span></div> 
      <div class="x-col x-col-fixed" xid="col2" style="width:auto;"><span xid="span4" style="color:#bebebe;"><![CDATA[此邀请码20分钟以内有效]]></span></div>
      <div class="x-col" xid="col3" style="text-align:right;margin-right:10px;">
       </div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="border-bottom:1px solid #eee;line-height:1rem;;">
       
      <div class="x-col x-col-20" xid="col9" style="width:auto;">
       <span xid="span2"><![CDATA[邀请码]]></span></div><div class="x-col" xid="col7"><span id="span9code" xid="span9code" style="color:#7bc93d;"><![CDATA[1314]]></span></div>
      <div class="x-col" xid="col8" style="text-align:right;">
       <a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="button1" style="color:#999999;border-left:1px solid #eeeeee;padding:0.1rem 0.3rem;display:none;" onClick="button1Click" label="发送验证码">
   <i xid="i3"></i>
   <span xid="span5" style="font-size:0.26rem;">发送验证码</span></a></div> </div> 
  </div> 
  <div xid="div2" style="padding:0 0.4rem;margin-top:0.4rem;"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" xid="button3" style="background-color:#7bc83e;border:none;" onClick="button3Click" label="发给访客">
   <i xid="i5"></i>
   <span xid="span16" style="font-size:0.36rem;font-weight:bold;">发给访客</span></a></div></div> </div>
  </div>