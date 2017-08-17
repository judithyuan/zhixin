<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;" onLoad="modelLoad"> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="修改密码"
          class="x-titlebar top">
          <div class="x-titlebar-left top-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon left-btn" icon="icon-ios7-arrow-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-ios7-arrow-left" style="font-size:0.6rem;"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title" style="font-weight:normal;font-size:0.36rem;">修改密码</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1" style="    background-color: #fff;">
  <span xid="span5"></span><div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel2" style="background-color:white;box-shadow:none;border:none;">
   
   <div xid="div1" style="height:0.2rem;background-color:#f0f0f0;"></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label25" xid="labelEdit6" style="background-color:white;margin:0 0.3rem;color:#333333;height:1.25rem;">
   <label class="x-label" xid="label6" style="text-align:left;">验证码</label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="vcode" onBlur="vcodeBlur" placeHolder="请输入验证码" style=" padding:0;color:#333;"></input><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="获取验证码" xid="getVcode" onClick="getVcodeClick" style="color:#666666;border-radius:none;border-left:1px solid #d2d2d2;padding-left:6px;padding-top:0px;padding-bottom:0px;font-size:0.3rem">
   <i xid="i3"></i>
   <span xid="span4">获取验证码</span></a></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label25" xid="labelEdit9" style="background-color:white;color:#333333;margin:0 0.3rem;height:1.25rem;">
   <label class="x-label" xid="label9" style="text-align:left;"><![CDATA[设置密码]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="password1" placeHolder="6-20位数字、字母组合" style="padding:0;color:#333;" bind-keyup="password1Change"></input>
   <span xid="span10" bind-click="passwordClick">
   <img src="$UI/zhixin/img/passwordOpen.png" alt="" xid="image5" style="width:0.36rem;height:0.24rem;display:block;"></img>
   <img src="$UI/zhixin/img/passwordClose.png" alt="" xid="image4" style="width:0.36rem;height:0.24rem;display:none;"></img></span></div><a component="$UI/system/components/justep/button/button" class="btn btn-default center-block" label="提　交" xid="registerBtn" style="background-color:#e3e3e3;color:white;border:none;margin-top:55px;margin:0.9rem 0.4rem 0 0.4rem;height:0.8rem;font-size:0.36rem" onClick="registerBtnClick" disabled="true">
   <i xid="i8"></i>
   <span xid="span2">提　交</span></a>
  </div>
  
  
  
  
  <div xid="div4" style="padding:0 0.4rem;margin-top:80%;">
   <img src="$UI/zhixin/img/logonbtm.png" alt="" xid="image1" style="width:100%;"></img></div></div>
  </div> 
<span component="$UI/system/components/justep/timer/timer" xid="timer" times="60" onTimer="timerTimer" enabled="false" style="top:80px;left:32px;"></span></div>