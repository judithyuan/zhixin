<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;" onLoad="modelLoad"></div>  
  <span component="$UI/system/components/justep/timer/timer" xid="timer" style="top:-7px;left:162px;"
    onTimer="timerTimer" times="60" enabled="false"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="忘记密码"
        class="x-titlebar top" xid="titleBar1"> 
        <div class="x-titlebar-left top-left" xid="left1"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-only-icon left-btn" icon="icon-ios7-arrow-left" onClick="{operation:'window.close'}"
            xid="backBtn"> 
            <i class="icon-ios7-arrow-left" xid="i1"/>  
            <span xid="span5"/>
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title1" style="font-weight: normal;color:#333333;font-size:0.36rem;">忘记密码</div>  
        <div class="x-titlebar-right reverse" xid="right1"/>
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1" style="    background-color: #f0f0f0;bottom:0"> 
      <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label25" xid="labelEdit1" style="background-color:white;height:1.25rem;padding:0 0.4rem;"> 
          <label class="x-label" xid="label1" style="text-align:left;padding-right:0.38rem;"><![CDATA[手机号]]></label>  
          <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="phone" onBlur="phoneBlur" placeHolder="请输入您的手机号" style="paddding-left:0;"/>
        </div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label25" xid="labelEdit6" style="background-color:white;height:1.25rem;padding:0 0.4rem;"> 
          <label class="x-label" xid="label6" style="text-align:left;padding-right:0.38rem;">验证码</label>  
          <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="vcode" onBlur="vcodeBlur" placeHolder="请输入验证码" style="paddding-left:0;" bind-keyup="btnChange"/>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="获取验证码" xid="getVcode" onClick="getVcodeClick" style="color:#cccccc;border-radius:none;border-left:1px solid #d2d2d2;margin-right:10px;padding-left:0.1rem;"> 
            <i xid="i3" />  
            <span xid="span4" style="font-size:0.28rem;">获取验证码</span>
          </a> 
        </div><a component="$UI/system/components/justep/button/button" class="btn btn-default center-block" label="提交" xid="registerBtn" style="background-color:#e3e3e3;color:white;border:none;margin:0.9rem 0.4rem 0 0.3rem;font-size:0.36rem;height:0.88rem;" onClick="registerBtnClick"> 
          <i xid="i8" />  
          <span xid="span2" style="font-size:large">提交</span>
        </a></div> 
  </div>
</div>
