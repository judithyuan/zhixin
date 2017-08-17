<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:-3px;left:49px;height:auto;" onLoad="modelLoad"/> 

  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar text-orange top" xid="titleBar" title="设置登录密码">
   <div class="x-titlebar-left top-left" xid="left1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-icon-left btn-only-icon text-orange left-btn" xid="button1" icon="icon-ios7-arrow-left" onClick="{operation:'window.close'}">
     <i xid="i7" class="icon-ios7-arrow-left"></i>
     <span xid="span3"></span></a> </div> 
   <div class="x-titlebar-title" xid="title1">设置登录密码</div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>
   <div class="x-panel-content" xid="content1" style="background-color:#ffffff;padding:0 0.4rem;"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit8" style="border-bottom: 1px solid #eee;height:1.25rem;font-size:0.3rem;">
   <label class="x-label" xid="label7" style="color:#333333;padding-right:0.38rem;width:auto;">密码</label>
   <input component="$UI/system/components/justep/input/password" class="form-control x-edit" xid="pwdmima" placeHolder="密码为数字和字母组合，6~20位" style="font-size:0.3rem;" onChange="pwdChange"></input><span xid="span2" bind-click="button2Click"><img src="$UI/zhixin/img/passwordOpen.png" alt="" xid="image1" style="width:0.36rem;height:0.24rem;display:block;"></img>
  <img src="$UI/zhixin/img/passwordClose.png" alt="" xid="image3" style="width:0.36rem;height:0.24rem;display:none;"></img></span></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="padding-left:15px;padding-right:15px;margin-top:0.1rem;">
   <div class="x-col" xid="col1" style="padding:0;">
    <div xid="div1ruo" style="text-align:center;background-color:red;width:0;color:white;height:1.5em;float: left;">弱</div></div> 
   <div class="x-col" xid="col9" style="padding:0;">
    <div xid="div2zhong" style="text-align:center;width:0;background-color:rgb(255, 192, 25);color:white;height:1.5em;float: left;">中</div></div> 
   <div class="x-col" xid="col10" style="padding:0;">
    <div xid="div3qiang" style="text-align:center;width:0;background-color:green;color:white;height:1.5em;">强</div></div> </div><a component="$UI/system/components/justep/button/button" id='registerBtn' class="btn btn-default center-block" label="确  认" xid="registerBtn" style="margin-top:0.9rem;background-color:#e3e3e3;color:white;border:none;border-radius:0.1rem;font-size:0.36rem;height:0.8rem;padding:0;line-height:0.8rem;" onClick="registerBtnClick">
   <i xid="i8"></i>
   <span xid="span4">确  认</span></a>
  </div>
   <div class="x-panel-bottom" xid="bottom1"></div></div></div>