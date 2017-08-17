<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar top" title="我的E卡" xid="titleBar1">
   <div class="x-titlebar-left top-left" xid="left1">
    <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon left-btn" icon="icon-ios7-arrow-left" onClick="{operation:'window.close'}" xid="backBtn">
     <i class="icon-ios7-arrow-left" xid="i1"></i>
     <span xid="span1"></span></a> </div> 
   <div class="x-titlebar-title" style="font-weight:normal;" xid="title1">我的E卡</div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>
   <div class="x-panel-content" xid="content1" style="background-color:#eee;"><ul xid="ul1" style="margin-top:0.2rem;padding:0 0 0 0.3rem;background-color:#ffffff;margin-bottom:0.2rem;"><li xid="limyCard" style="height:1rem;background-color:#fff;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row13" style="border-bottom: 1px solid #eeeeee;align-items:center;height:100%;">
   <div class="x-col x-col-fixed" xid="col37" style="width:0.58rem;margin-right:0.3rem;" bind-click="col1Click">
    <img src="$UI/zhixin/img/user/redBig.png" alt="" xid="image7" style="width:0.58rem;height:0.58rem;"></img></div> 
   <div class="x-col x-col-fixed" xid="col38" style="width:auto;" bind-click="col1Click">
    <span xid="span21" style="font-size:0.28rem;"><![CDATA[红包奖金]]></span>
  </div> 
   <div class="x-col x-col-fixed" xid="col2" style="width:auto;vertical-align:middle;height:100%;" bind-click="instructClick"><img src="$UI/zhixin/img/wyfw/wyjg.png" alt="" xid="image3" style="width:0.3rem;margin-left:0.1rem;vertical-align:middle;margin-top:0.35rem;"></img></div><div class="x-col" xid="col3" style="height:100%;" bind-click="col1Click"></div><div class="x-col x-col-10" xid="col1" style="padding-right:0.3rem" bind-click="col1Click">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right" label="button" xid="button3" icon="icon-ios7-arrow-right">
     <i xid="i5" class="icon-ios7-arrow-right" style="font-size:0.4rem;color:#999;"></i>
     <span xid="span9"></span></a> </div> 
  </div></li></ul>
  <div xid="divredBbonus" style="bottom:0;height:100%;width:100%;position:fixed;background-color:rgba(0, 0, 0, 0.18);z-index:20;display:none;">
   <div xid="infomationBox" style="position:absolute;bottom:0px;width:100%;height:60%;background-color:#FFFFFF;">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar2" style="background-color:white;color:#333;background-color:#fff;line-height:48px;" title="红包奖金说明">
     <div class="x-titlebar-left" xid="left2"></div>
     <div class="x-titlebar-title" xid="title2" style="font-weight:normal;">红包奖金说明</div>
     <div class="x-titlebar-right reverse" xid="right2"></div></div> 
    
    <div xid="div1redBcontent" style="padding:0 0.2rem;"></div><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="我知道了" xid="button1" style="position:absolute;bottom:0px;background-color:#7bc93d;font-size: 0.36rem;border-radius: 0;border:none;height:0.9rem;" onClick="knowClick">
     <i xid="i2"></i>
     <span xid="span10">我知道了</span></a> 
  </div> </div></div>
   </div></div>