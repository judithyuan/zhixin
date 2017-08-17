<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:4px;left:667px;" onLoad="modelLoad"/> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar top" xid="titleBar1" title="注册">
   <div class="x-titlebar-left top-left" xid="left1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon left-btn" label="登录" xid="button3" onClick="button2Click" icon="icon-ios7-arrow-left">
   <i xid="i5" class="icon-ios7-arrow-left"></i>
   <span xid="span6">登录</span></a></div>
   <div class="x-titlebar-title" xid="title1">注册</div>
   <div class="x-titlebar-right reverse" xid="right1" style="padding-right:0.4rem;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="登录" xid="button1" style="font-size:0.26rem;height:100%;color:#999;line-height:48px;" onClick="button2Click">
     <i xid="i4"></i>
     <span xid="span3">登录</span></a> </div> </div></div>
   <div class="x-panel-content" xid="content1">
  <div xid="content2" style="padding:0 0.4rem;">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit7" style="height:1.25rem;color:#333;font-size:0.3rem;border-bottom:1px solid #eee;">
    <label class="x-label" xid="label8" style="color:#333333;padding-right:0.66rem;width:auto;">手机号</label>
    <input component="$UI/system/components/justep/input/input" xid="mobile" placeHolder="请填写您的手机号" style="border:none;font-size:0.3rem;" onBlur="mobileBlur" class="form-control x-edit"></input></div> 
    
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit6" style="height:1.25rem;color:#333;font-size:0.3rem;border-bottom:1px solid #eee;">
   <label class="x-label" xid="label6" style="color:#333333;padding-right:0.66rem;width:auto;">验证码</label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="vcode" style="font-size:0.3rem;" onBlur="vcodeBlur" placeHolder="请输入验证码"></input><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="发送验证码" xid="getVcode" onClick="getVcodeClick" style="color:#666;border-radius:none;border-left:1px solid #eee;margin-right:10px;font-size:0.3rem;height:0.5rem;padding-left:0.3rem;">
     <i xid="i3"></i>
     <span xid="span4">发送验证码</span></a></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col  x-col-fixed" xid="col7" style="width:auto;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs " xid="button2" style="margin-top:0.3rem;color:#7bc83e;margin-right:0px;line-height:0.4rem;" onClick="button1Click" icon="img:$UI/zhixin/img/qren.png">
     <img src="$UI/zhixin/img/qren.png" xid="image4" style="height:0.4rem;width:0.4rem;margin-right:0.15rem;"></img>
     <span xid="span2" style="color:#999;font-size:0.26rem;">我已经认真阅读并同意</span>
     <span xid="span5" style="color:#7bc83e;font-size:0.26rem;">《熊猫e家APP注册协议》</span></a> </div> 
   <div class="x-col" xid="col5"></div></div><a component="$UI/system/components/justep/button/button" class="btn btn-default center-block" label="注   册" xid="registerBtn" onClick="registerBtnClick" style="background-color:#e3e3e3;margin-top:0.6rem;border-radius:0.1rem;font-size:0.36rem;height:0.8rem;border:none;width:100%;">
    <i xid="i1"></i>
    <span xid="span1" style="font-size:large">注   册</span></a>
  </div>
  <div xid="div4" style="padding:0 0.4rem;margin-top:150%;">
   <img src="$UI/zhixin/img/logonbtm.png" alt="" xid="image1" style="width:100%;"></img></div></div>
   </div>
  <span component="$UI/system/components/justep/timer/timer" xid="timer" times="60" onTimer="timerTimer" enabled="false" style="top:10px;left:78px;"></span></div>