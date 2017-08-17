<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:138px;left:178px;" onLoad="modelLoad" onActive="modelActive"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="data" idColumn="url" confirmRefresh="false"> 
      <column name="url" type="String" xid="xid1"/>
    </div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar top" xid="titleBar" title="游客登录">
     <div class="x-titlebar-left top-left" xid="left1">
      <a component="$UI/system/components/justep/button/button" class="btn btn-icon-left btn-only-icon text-orange" xid="button1" icon="icon-ios7-arrow-left" onClick="{operation:'window.close'}" style="font-size:0.6rem;height:0.88rem;line-height:0.88rem;padding-left:0.4rem;color:#333;">
       <i xid="i7" class="icon-ios7-arrow-left"></i>
       <span xid="span3"></span></a> </div> 
     <div class="x-titlebar-title" xid="title1" style="font-weight:normal;">游客登录</div>
     <div class="x-titlebar-right reverse" xid="right1" style="padding-right:0rem;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="注册" xid="button3" style="font-size:0.26rem;height:100%;color:#999;line-height:48px;padding-right:0.4rem;color:#7bc83e;" onClick="button2Click">
   <i xid="i1"></i>
   <span xid="span1">注册</span></a></div></div> </div> 
   <div class="x-panel-content" xid="content1" style="background-color:#fff;">
    
    <div id="plant" xid="div3login" style="padding:0 0.4rem;font-size:0.3rem;color:#333;">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label20" xid="labelEdit1login" style="padding:0;margin:0;border-bottom:1px solid #eee;height:1.25rem;">
    <label class="x-label" xid="label1" style="color:#333333;padding-right:0.66rem;width:auto;">手机号码</label>
    <input component="$UI/system/components/justep/input/input" class="form-control x-edit form-controls" xid="mobile" placeHolder="请输入手机号" style="font-size:0.3rem;border:none;box-shadow:none;"></input></div> 
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit6" style="height:1.25rem;color:#333;font-size:0.3rem;border-bottom:1px solid #eee;">
   <label class="x-label" xid="label6" style="color:#333333;padding-right:0.96rem;width:auto;">验证码</label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="vcode" style="font-size:0.3rem;box-shadow:none;border:none;" placeHolder="请输入验证码"></input>
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="发送验证码" xid="getVcode" onClick="getVcodeClick" style="color:#666;border-radius:none;border-left:1px solid #eee;margin-right:10px;font-size:0.3rem;height:0.5rem;padding-left:0.3rem;">
    <i xid="i3"></i>
    <span xid="span4">发送验证码</span></a> </div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="padding:0;height:0.8rem;margin-top:0.7rem;">
   <div class="x-col x-col-fixed" xid="col3" style="padding-left:0.4rem;padding-right:0.4rem;height:0.8rem;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label" label="登　录" xid="button6loadyk" onClick="loginBtnClick" style="background-color:#e3e3e3;font-size:0.36rem;color:#ffffff;width:100%;height:100%;">
     <i xid="i6"></i>
     <span xid="span6">登　录</span></a> </div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col" xid="col10" style="padding-left:0;padding-right:0.4rem;">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="padding:0;margin:0;margin-top:0.7rem;">
     <div class="x-col" xid="col13" style="padding:0;margin:0">
      <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label" label=" 住户登录" xid="button2" onClick="houseLoad" style="padding:0;padding-left:0.4rem;text-align: -webkit-left;background-color: rgba(123, 201, 61, 0);font-size:0.28rem;color:#999999;width:100%;">
       <i xid="i5"></i>
       <span xid="span2"> 住户登录</span></a> </div> 
     <div class="x-col x-col-fixed" xid="col15" style="padding:0;margin:0;width:1px;background-color: rgba(255, 255, 255, 0.73);"></div>
     <div class="x-col" xid="col16" style="padding:0;margin:0">
      </div> </div> </div> </div>
  <div xid="div4" style="padding:0 0.4rem;margin-top:65%;">
   <img src="$UI/zhixin/img/logonbtm.png" alt="" xid="image1" style="width:100%;"></img></div></div> </div>
  <span component="$UI/system/components/justep/timer/timer" xid="timer" times="60" onTimer="timerTimer" enabled="false" style="top:13px;left:46px;"></span></div>
