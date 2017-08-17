<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:-2px;left:525px;height:auto;" onParamsReceive="modelParamsReceive" onLoad="modelLoad"> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1">
   <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar top" xid="titleBar2" title="我的投诉">
    <div class="x-titlebar-left top-left" xid="left2">
     <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon left-btn" icon="icon-chevron-left" onClick="{operation:'window.close'}" xid="button4">
      <i class="icon-ios7-arrow-left icon-chevron-left" xid="i6"></i>
      <span xid="span9"></span></a> </div> 
    <div class="x-titlebar-title" xid="title2" style="font-weight:normal;font-size:0.36rem;">我的投诉
     <span id="type" xid="span6"></span></div> 
    <div class="x-titlebar-right reverse top-right" xid="right2">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="投诉" xid="toComplain" style="font-size:0.26rem;color:#999999;text-align:bottom;height:auto;" onClick="toComplainClick">
      <span xid="span30" style="vertical-align:bottom;">投诉</span>
      <i xid="i4"></i></a> </div> </div> </div><div class="x-panel-content" xid="content1" style="background-color:#f0f0f0;"><div xid="div2" style="height:1rem;line-height:1rem;padding:0 0.3rem;font-size:0.3rem;border-bottom:1px solid #e3e3e3;background-color:#fff;">
   <img src="$UI/zhixin/img/user/avt.png" alt="" xid="image3" class="img-circle" style="margin-right:0.2rem;width:0.6rem"></img>
   <span><![CDATA[我]]></span><span xid="notReply" class="pull-right" bind-visible=' ' style="display:none">处理中</span>
   <span xid="alreadyReply" class="pull-right" style="color:#7bc83e;display:none">已回复</span>
  </div>
  <div xid="div1" style="padding:0.3rem;background-color:#fff;">
   <p xid="complaincontent" style="line-height:0.6rem;"></p>
   <div xid="complainimgbox"></div><p xid="complainaddTime" style="text-align:right;color:#999"></p>
  </div>
  
  
  <div xid="replyBox" style="display:none"><div xid="div4" style="height:1rem;line-height:1rem;padding:0 0.3rem;font-size:0.3rem;border-bottom:1px solid #e3e3e3;margin-top:0.2rem;background-color:#fff;">
   <img src="$UI/zhixin/img/wyfw/service.png" alt="" xid="image2" class="img-circle" style="margin-right:0.2rem;width:0.6rem"></img>
   <span xid="span7"><![CDATA[客服]]></span>
   </div><div style="padding:0.3rem;background-color:#fff;">
   <p xid="replyContent" style="line-height:0.6rem;"></p>
   <p xid="replyTime" style="text-align:right;color:#999"></p></div></div>
  <div xid="serviceTel" style="width:4.4rem;margin:1rem auto 0.6rem auto"><p xid="p1" style="font-size:0.34rem;color:#999;background-color:#dedede;line-height:0.58rem;border-radius:0.29rem;text-align:center"><![CDATA[联系客服：400-186-1626]]></p></div></div>
  </div> 
</div>