<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:297px;left:80px;" onActive="modelActive"/> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar text-orange top" xid="titleBar" title="选择身份">
   <div class="x-titlebar-left top-left" xid="left1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-icon-left btn-only-icon text-orange left-btn" xid="button1" icon="icon-ios7-arrow-left" onClick="{operation:'window.close'}">
     <i xid="i7" class="icon-ios7-arrow-left"></i>
     <span xid="span3"></span></a> </div> 
   <div class="x-titlebar-title" xid="title1" style="font-weight: normal;color:#333333;">选择身份</div>
   <div class="x-titlebar-right reverse" xid="right1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label right-btn" label="跳过" xid="button5" style="display:block;margin-right: 0.3rem;" onClick="button1Click">
   <i xid="i4"></i>
   <span xid="span5" style="font-size:0.26rem;">跳过</span></a></div></div></div>
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit1" style="background-color:white;margin:0.2rem 0 0 0;height:1rem;" bind-click="labelEdit1Click">
   <label class="x-label" xid="label1" style="text-align:left;font-weight:normal;margin-left:0.3rem;border-bottom:1px solid #eee;padding-right:0.38rem;width:auto;font-size:0.3rem;line-height:1rem;height:1rem;color:#333;">我是业主</label>
   <div class="x-edit" xid="div1" style="height:1rem;line-height:1rem;border-bottom:1px solid #eee;margin-right:0.3rem;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right" label="button" xid="button2" icon="icon-ios7-arrow-right" style="height:100%;line-height:1rem;font-size:0.4rem;">
     <i xid="i1" class="icon-ios7-arrow-right"></i>
     <span xid="span2"></span></a> </div> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit2" style="background-color:white;height:1rem;" bind-click="labelEdit2Click">
   <label class="x-label" xid="label2" style="text-align:left;font-weight:normal;margin-left:0.3rem;border-bottom:1px solid #eee;padding-right:0.38rem;width:auto;font-size:0.3rem;height:1rem;line-height:1rem;color:#333;">我是家属</label>
   <div class="x-edit" xid="div2" style="height:1rem;line-height:1rem;border-bottom:1px solid #eee;margin-right:0.3rem;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right" label="button" xid="button3" icon="icon-ios7-arrow-right" style="height:100%;line-height:1rem;font-size:0.4rem;">
     <i xid="i2" class="icon-ios7-arrow-right"></i>
     <span xid="span4"></span></a> </div> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label65" xid="labelEdit3" style="background-color:white;height:1rem;" bind-click="labelEdit3Click">
   <label class="x-label" xid="label3" style="text-align:left;font-weight:normal;margin-left:0.3rem;padding-right:0.38rem;width:auto;font-size:0.3rem;height:1rem;line-height:1rem;color:#333;"><![CDATA[我是租户]]></label>
   <div class="x-edit" xid="div3" style="height:1rem;line-height:1rem;margin-right:0.3rem;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right" label="button" xid="button4" icon="icon-ios7-arrow-right" style="height:100%;line-height:1rem;font-size:0.4rem;">
     <i xid="i3" class="icon-ios7-arrow-right"></i>
     <span xid="span1"></span></a> </div> </div>
  </div>
   </div>
  </div>