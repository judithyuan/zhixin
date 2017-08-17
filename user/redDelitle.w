<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"/> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="红包详情" style="height:48px;line-height:48px;color:#fff;font-size:0.36rem;background-color:#df4237;">
    <div class="x-titlebar-left top-left" xid="left1" style="font-weight:normal;">
     <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon left-btn" icon="icon-ios7-arrow-left" onClick="backBtnClick" xid="backBtn">
      <i class="icon-ios7-arrow-left" xid="i1"></i>
      <span xid="span1"></span></a> </div> 
    <div class="x-titlebar-title" xid="title1">红包详情</div>
    <div class="x-titlebar-right reverse" xid="right1"></div></div><div xid="div1" class="ellipse" style="margin-top:-0.5rem;"></div></div>
   <div class="x-panel-content" xid="content1" style="background-color:#f0f0f0;"><div xid="div4" style="text-align:center;padding-top:1rem;"><span xid="span2" style="font-size:0.36rem;font-weight:bold;"><![CDATA[恭喜您获得红包]]></span></div><div xid="div5" style="text-align:center;padding-top:0.5rem;">
   <span xid="span3" style="font-size:1rem;color:#ff5959;font-weight:bold;" bind-text="redEnvelope"><![CDATA[]]></span>
  <span xid="span4" style="font-size:0.24rem;"><![CDATA[元]]></span></div><div xid="div6" style="text-align:center;"><span xid="span5" style="color:#5e7faa;font-size:0.28rem;"><![CDATA[已存入红包奖金]]></span></div><div xid="div7" style="text-align:center;">
   <span xid="span6" style="color:#5e7faa;font-size:0.28rem;"><![CDATA[仅物业缴费和电商购物消费]]></span></div><div xid="div8" style="margin-top:3rem;text-align:center;"><span xid="span7join" style="background-color:#df4237;color:#fff;display:inline-block;height:0.8rem;line-height:0.8rem;width:40%;border-radius:10px;font-size:0.28rem;" bind-click="span7joinClick"><![CDATA[查看我的红包记录]]></span></div><div xid="div9" style="text-align:center;margin-top:0.2rem;">
   <span xid="span8" style="font-size:0.28rem;color:#999;"><![CDATA[熊猫e家感谢一路有您的支持]]></span></div></div>
   </div></div>