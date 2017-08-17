<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:261px;top:5px;" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="sfData" idColumn="id"><column name="id" type="Integer" xid="xid7"></column>
  <column name="name" type="String" xid="xid8"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="zyData" idColumn="occupation_id"><column name="occupation_id" type="String" xid="xid1"></column>
  <column name="occupation_name" type="String" xid="xid2"></column>
  <master xid="default1" data="sfData"></master></div></div>  
  <span component="$UI/system/components/justep/timer/timer" xid="timer" times="120" onTimer="timerTimer" enabled="false"></span><div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar text-orange" xid="titleBar" title="注册" style="background-color:white;">
   <div class="x-titlebar-left" xid="left1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-icon-left btn-only-icon text-orange" xid="button1" icon="icon-chevron-left" onClick="{operation:'window.close'}">
     <i xid="i7" class="icon-chevron-left"></i>
     <span xid="span3"></span></a> </div> 
   <div class="x-titlebar-title" xid="title1">注册</div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>  
    <div class="x-panel-content" xid="content1" style="padding:30px 20px 20px 20px;"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label25" xid="labelEdit1">
   <label class="x-label" xid="label1" style="text-align:right;font-weight:bold;"><![CDATA[姓名]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="name" placeHolder="怎么称呼您？"></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label25" xid="labelEdit7">
   <label class="x-label" xid="label8" style="text-align:right;font-weight:bold;"><![CDATA[手机号]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="mobile" placeHolder="请填写您的手机号码."></input></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label25" xid="labelEdit2">
   <label class="x-label" xid="label2" style="text-align:right;font-weight:bold;"><![CDATA[验证码]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="vcode" onBlur="vcodeBlur"></input><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="获取验证码" xid="getVcode" onClick="getVcodeClick">
   <i xid="i3"></i>
   <span xid="span4">获取验证码</span></a></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label25" xid="labelEdit8">
   <label class="x-label" xid="label7" style="text-align:right;font-weight:bold;"><![CDATA[密码]]></label>
   <input component="$UI/system/components/justep/input/password" class="form-control x-edit" xid="pwd" placeHolder="请设置您的登录密码."></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label25" xid="labelEdit3" style="position:relative;">
   <label class="x-label" xid="label3" style="text-align:right;font-weight:bold;"><![CDATA[城市]]></label><input type="hidden" xid="cid" bind-value="$model.getdist('cid')"/>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="ctxt" readonly="true" bind-click="seldist" bind-value="$model.getdist('ctxt')"></input><i xid="i4" class="icon-chevron-right" style="position:absolute;top:18px;right:6px;font-size:large;color:#ddd;"></i></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label25" xid="labelEdit6" style="position:relative;">
   <label class="x-label" xid="label6" style="text-align:right;font-weight:bold;"><![CDATA[楼盘]]></label><input type="hidden" xid="lid" bind-value="$model.getdist('lid')"/>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="ltxt" readonly="true" bind-click="seldist" bind-value="$model.getdist('ltxt')"></input>
   <i xid="i5" class="icon-chevron-right" style="position:absolute;top:18px;right:6px;font-size:large;color:#ddd;"></i></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label25" xid="labelEdit9" style="position:relative;">
   <label class="x-label" xid="label9" style="text-align:right;font-weight:bold;"><![CDATA[房间]]></label><input type="hidden" xid="bid" bind-value="$model.getdist('bid')"/><input type="hidden" xid="rid" bind-value="$model.getdist('rid')"/>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="brtxt" readonly="true" bind-click="seldist" bind-value="$model.getdist('brtxt')"></input>
   <i xid="i6" class="icon-chevron-right" style="position:absolute;top:18px;right:6px;font-size:large;color:#ddd;"></i></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label25" xid="labelEdit5">
   <label class="x-label" xid="label5" style="text-align:right;font-weight:bold;"><![CDATA[身份]]></label>
   <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="shenfen" bind-options="sfData" bind-optionsValue="id" bind-optionsLabel="name" bind-blur="shenfenBlur"></select></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label25" xid="labelEdit4">
   <label class="x-label" xid="label4" style="text-align:right;font-weight:bold;"><![CDATA[职业]]></label>
   <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="occupation_id" bind-options="zyData" bind-optionsValue="occupation_id" bind-optionsLabel="occupation_name"></select></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label25" xid="labelEditshenfen" style="display:none;">
   <label class="x-label" xid="label10" style="text-align:right;font-weight:bold;"><![CDATA[验证手机号]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="inputyanzheng" placeHolder="请输入业主手机号码后四位." onBlur="input1Blur"></input></div><div xid="div1" class="clearfix" style="margin-top:10px;" dir="ltr"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs pull-left" label="《协议条款》" xid="button2" style="margin-top:5px;color:#ff3226;">
   <i xid="i2"></i>
   <span xid="span2">《协议条款》</span></a>
  
  <span component="$UI/system/components/justep/button/checkbox" class="x-checkbox pull-right" xid="readagree" label="我已阅读并同意"></span></div><a component="$UI/system/components/justep/button/button" class="btn btn-default center-block" label="注册" xid="registerBtn" style="margin-top:20px;" onClick="registerBtnClick">
   <i xid="i1"></i>
   <span xid="span1" style="font-size:large">注册</span></a>
  </div>
  </div> 
</div>