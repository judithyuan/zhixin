<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:5px;left:120px;height:auto;" onLoad="modelLoad"/> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar top" xid="titleBar1" title="发表评价">
     <div class="x-titlebar-left top-left" xid="left1">
      <a component="$UI/system/components/justep/button/button" class="btn btn-only-icon left-btn" label="button" xid="backBtn" icon="icon-ios7-arrow-left" onClick="{operation:'window.close'}">
       <i xid="i6" class="icon-ios7-arrow-left"></i>
       <span xid="span31"></span></a> </div> 
     <div class="x-titlebar-title" xid="title1">发表评价</div>
     <div class="x-titlebar-right reverse" xid="right1"></div></div> </div> 
   <div class="x-panel-content" xid="content1" style="background-color:#f0f0f0;padding-top:0.2rem;">
    <div xid="div1">
     <textarea component="$UI/system/components/justep/textarea/textarea" class="form-control" xid="textarea1" placeHolder="写评论..." style="box-shadow:none;height:3.6rem;padding:0.3rem;font-size:0.3rem;color:#333;"></textarea></div> 
    <a component="$UI/system/components/justep/button/button" class="btn btn-default center-block" label="提交评价" xid="button1" style="height:0.8rem;line-height:0.8rem;margin: 0.4rem;background-color:#7bc83e;color:white;font-size:0.36rem;font-weight:6rem;padding:0;border:none;" onClick="button1Click">
     <i xid="i1"></i>
     <span xid="span1">提交评价</span></a> 
  </div> </div></div>