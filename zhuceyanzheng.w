<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:495px;left:64px;" onLoad="modelLoad" onModelConstructDone="modelModelConstructDone"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="sfData" idColumn="id"><column name="id" type="Integer" xid="xid7"></column>
  <column name="name" type="String" xid="xid8"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="zyData" idColumn="occupation_id"><column name="occupation_id" type="String" xid="xid1"></column>
  <column name="occupation_name" type="String" xid="xid2"></column>
  <master xid="default1" data="sfData"></master></div></div>  
  <span component="$UI/system/components/justep/timer/timer" xid="timer" times="120" onTimer="timerTimer" enabled="false"></span>
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-top" xid="top2">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar text-orange" xid="titleBar1" title="设置密码" style="background-color:white;">
     <div class="x-titlebar-left" xid="left2">
      <a component="$UI/system/components/justep/button/button" class="btn btn-icon-left btn-only-icon text-orange" xid="button3" icon="icon-chevron-left" onClick="{operation:'window.close'}">
       <i xid="i4" class="icon-chevron-left"></i>
       <span xid="span7"></span></a> </div> 
     <div class="x-titlebar-title" xid="title2">设置密码</div>
     <div class="x-titlebar-right reverse" xid="right2"></div></div> </div> 
   <div class="x-panel-content" xid="content2" style="background-color:#eeeeee;">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="padding:15px;margin:0;background-color:#eeeeee;">
     <div class="x-col" xid="col2" style="padding:0;margin:0;">
      <span xid="span9" style="color:#989898;"><![CDATA[]]></span></div> </div> 
    
    
    
    
    
    
    
    
    
    
    
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label-right x-label30" xid="labelEdit2" style="border-bottom: 1px solid #f0f0f0;background-color:white;">
   <label class="x-label" xid="label2"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="获取验证码" xid="getVcode" onClick="getVcodeClick" style="color:#fff;border-radius:none;border-left:1px solid #d2d2d2;background-color:#7bc93d;margin-right:10px;padding-left:6px;border-radius: 4px;">
   <i xid="i3"></i>
   <span xid="span4">获取验证码</span></a></label>
   <div class="x-edit" xid="div1"><img src="$UI/zhixin/img/user/right.png" alt="" xid="image1" style="float:left;margin-left: 15px;" height="20px"></img>
  <span xid="span11" bind-text="localStorage.getItem('number')" style="float:left;margin-left: 15px;"></span></div></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label25" xid="labelEdit6" style="border-bottom: 1px solid #f0f0f0;">
   <label class="x-label" xid="label6" style="text-align:left;font-weight:bold;margin-left:15px;">验证码</label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="vcode" onBlur="vcodeBlur" style="margin-right: 15px;"></input>
   </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col5"></div>
   <div class="x-col  x-col-fixed" xid="col7" style="width:auto;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs " xid="button1" style="margin-top:5px;color:#7bc93d;margin-right:0px;" onClick="button1Click" icon="img:$UI/zhixin/img/qren.png|">
     <i xid="i1"></i>
     <img src="$UI/zhixin/img/qren.png" xid="image4" style="height:15px;width:15px;margin-right:5px;"></img>
     <span xid="span2" style="color:#d2d2d2;"><![CDATA[我已经认真阅读]]></span><span xid="span3"><![CDATA[注册协议]]></span></a> 
  </div> </div><a component="$UI/system/components/justep/button/button" class="btn btn-default center-block" label="下一步" xid="registerBtn" style="margin: 10px;background-color:#7bc93d;color:white;border:none;" onClick="registerBtnClick">
   <i xid="i8"></i>
   <span xid="span1" style="font-size:large">下一步</span></a>
  
  
  </div> 
  </div>
  </div>