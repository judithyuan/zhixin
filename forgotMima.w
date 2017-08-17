<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"/> 

  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar text-orange top" xid="titleBar" title="设置密码">
   <div class="x-titlebar-left top-left" xid="left1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-icon-left btn-only-icon text-orange left-btn" xid="button1" icon="icon-ios7-arrow-left" onClick="{operation:'window.close'}">
     <i xid="i7" class="icon-ios7-arrow-left"></i>
     <span xid="span3"></span></a> </div> 
   <div class="x-titlebar-title" xid="title1" style="font-weight:normal;">设置密码</div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>
   <div class="x-panel-content" xid="content1" style="background-color:#f0f0f0;padding-top:0.2rem"><div xid="div2" style="padding:0 0.4rem;background-color:#fff;"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label25" xid="labelEdit8" style="border-bottom: 1px solid #eee;height:1.25rem;font-size:0.3rem;">
   <label class="x-label" xid="label7" style="color:#333333;padding-right:0.98rem;width:auto;">密码</label>
   <input component="$UI/system/components/justep/input/password" class="form-control x-edit" xid="pwd" placeHolder="密码长度不得小于6位" style="font-size:0.3rem;box-shadow:none;border:none;" onChange="pwdChange" bind-keyup="btnChange"></input></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label25" xid="labelEdit9" style="border-bottom: 1px solid #eee;height:1.25rem;font-size:0.3rem;">
   <label class="x-label" xid="label9" style="color:#333333;padding-right:0.38rem;width:auto;">确认密码</label>
   <input component="$UI/system/components/justep/input/password" class="form-control x-edit" xid="password1" placeHolder="请确认您的登录密码" style="font-size:0.3rem;box-shadow:none;border:none;" onChange="password1Change" bind-keyup="btnChange"></input></div></div>
  
  <a component="$UI/system/components/justep/button/button" class="btn btn-default center-block" label="下一步" xid="registerBtn" style="margin:0 0.4rem;margin-top:0.9rem;background-color:#e3e3e3;color:white;border:none;border-radius:0.1rem;font-size:0.36rem;height:0.8rem;padding:0;line-height:0.8rem;" onClick="registerBtnClick">
   <i xid="i8"></i>
   <span xid="span4" style="font-size:large">下一步</span></a>
  </div>
   <div class="x-panel-bottom" xid="bottom1"></div></div></div>