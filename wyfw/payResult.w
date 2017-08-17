<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad" onActive="modelActive" onInactive="modelInactive"/> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar top" xid="titleBar1" title="缴费结果">
   <div class="x-titlebar-left top-left" xid="left1" style="font-weight:normal;">
   <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon left-btn" icon="icon-ios7-arrow-left" onClick="backBtnClick" xid="backBtn">
    <i class="icon-ios7-arrow-left" xid="i1"></i>
    <span xid="span3"></span></a> </div><div class="x-titlebar-title" xid="title1" style="font-weight:normal;font-size:0.36rem;">缴费结果</div>
   <div class="x-titlebar-right reverse" xid="right1"></div>
  </div></div>
   <div class="x-panel-content" xid="content1" style="background-color:#f0f0f0;bottom:0;padding:0.2rem;"><div xid="div1" style="background-color:#fff;padding:0.4rem;border-radius:10px;"><div xid="div2" style="text-align:center;"><img alt="" xid="image1suc" style="height:1rem;width:1rem;display:none;" src="$UI/zhixin/img/wyfw/right.png"></img>
  <img src="$UI/zhixin/img/wyfw/error.png" alt="" xid="image2err" style="height:1rem;width:1rem;display:none;"></img></div>
  <div xid="div3" style="margin-top:0.4rem;text-align:center;"><span xid="span1state" style="font-size:0.28rem;font-weight:bold;"><![CDATA[]]></span></div>
  <div xid="div4" style="margin-top:0.1rem;text-align:center;">
   <span xid="span2Info" style="font-size:0.28rem;color:#999;"><![CDATA[]]></span></div>
  <div xid="div5" style="margin-top:0.4rem;"><a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="leftBtn" style="padding:0 0.2rem;height:0.8rem;line-height:0.8rem;" bind-click="leftBtnClick">
   <i xid="i2"></i>
   <span xid="span5left"><![CDATA[]]></span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link pull-right" xid="rightBtn" style="padding:0 0.2rem;height:0.8rem;line-height:0.8rem;" bind-click="rightBtnClick">
   <i xid="i3"></i>
   <span xid="span6right"></span></a></div></div>
  <div xid="div6" style="text-align:center;margin-top:0.2rem;"><span xid="span4" style="font-size:0.26rem;color:#999;"><![CDATA[——熊猫e家一直在努力让物业缴费更方便——]]></span></div></div>
   </div>
  <div xid="div1zzc" style="width:100%;height:100%;background-color:rgba(0,0,0,0.5);position:fixed;top:0;left:0;z-index:999;display:none;">
   <div xid="div2redB" style="height:60%;width:80%;background-color:#df4237;position:absolute;top:50%;left:50%;margin-left:-40%;margin-top:-50%;">
    <img src="$UI/zhixin/img/redB.png" alt="" xid="image3" style="width:100%;height:100%;powition;position;relative;z-idex:1001;"></img>
    <div xid="div4reason" style="position:absolute;z-index:1001;left:0;top:60%;width:100%;text-align:center;">
     <span xid="span1reason" style="color:#eacb98;"></span>
     </div> 
    <div xid="div5btn" style="position:absolute;z-index:1001;left:0;top:70%;width:100%;text-align:center;">
     <span xid="span3btn" style="display:inline-block;width:60%;background-color:#ebcd9a;height:0.8rem;border-radius:10px;color:#333;line-height:0.8rem;" bind-click="span3btnClick">领取</span></div> 
    <span xid="span5qx" style="position:absolute;top:0;left:0;width:0.5rem;height:0.5rem;z-index:1001;" bind-click="span5qxClick"></span></div> </div></div>