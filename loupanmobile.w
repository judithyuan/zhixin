<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:169px;left:348px;" onModelConstructDone="modelModelConstructDone"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="phoneData" idColumn="id" onCustomRefresh="phoneDataCustomRefresh"><column name="id" type="String" xid="xid1"></column>
  <column name="zt" type="Boolean" xid="xid2"></column>
  <column name="mobile" type="String" xid="xid3"></column>
  <column name="cs" type="Boolean" xid="xid4"></column>
  <data xid="default2">[{&quot;id&quot;:&quot;1&quot;,&quot;zt&quot;:&quot;true&quot;,&quot;mobile&quot;:&quot;32432432&quot;,&quot;cs&quot;:&quot;1&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;zt&quot;:&quot;false&quot;,&quot;mobile&quot;:&quot;1321321321321&quot;,&quot;cs&quot;:&quot;0&quot;}]</data>
  <column label="状态" name="state" type="String" xid="xid5"></column></div></div>  
  <span component="$UI/system/components/justep/timer/timer" xid="timer" times="60" onTimer="timerTimer" enabled="false" style="top:13px;left:46px;"></span><div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="手机信息"
          class="x-titlebar top">
          <div class="x-titlebar-left top-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon left-btn" icon="icon-ios7-arrow-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-ios7-arrow-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title" style="font-size:0.36rem;font-weight:normal;color:#333333;">手机信息</div>  
          <div class="x-titlebar-right reverse" bind-click="right1Click"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1" style="background-color:#f0f0f0;bottom:0"><p xid="p1" style="line-height:0.8rem;margin-left:0.26rem;color:#999;"><![CDATA[选择预留手机号]]></p><div xid="div2" style="background-color:#ffffff;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="border-bottom: 1px solid #eeeeee;">
   <div class="x-col" xid="col5" style="padding:0;margin:0;padding-left:0.3rem"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="phoneData" style="padding:0">
   <ul class="x-list-template" xid="listTemplateUl2" style="margin-bottom:0px;">
    <li xid="li2" style="padding:0;height:1rem;" bind-click="li2Click" bind-visible=' val("mobile") !=""'><span component="$UI/system/components/justep/button/radio" class="x-radio" xid="radio1loupan" name="num" checked="false" bind-value='ref("state")' checkedValue="1" bind-visible=" val(&quot;mobile&quot;) !='无业主手机号！'" style="width:0.5rem;margin-top:0.25rem;"></span><span xid="span2" bind-text='val("mobile").replace(/^(\d{3})\d{4}(\d{4})$/, "$1****$2")' style="font-size:0.3rem;vertical-align:middle;color:#333;margin-top:0.3rem;" bind-style=" {fontSize:val(&quot;mobile&quot;).length  !='11'?'12px':'0.3rem'}"></span>
  </li></ul> </div></div>
   <div class="x-col" xid="col6" style="padding:0;margin:0;padding:0 0.3rem;heiht:1rem;line-height:1rem;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label pull-right" label="发送验证码" xid="getVcode" onClick="getVcodeClick" disabled="true" style="height:0.5rem;padding:0;padding-left:0.3rem;color:#999;margin-top:0.25rem;border-left:1px solid #eee;font-size:0.28rem;">
   <i xid="i3"></i>
   <span xid="span4">发送验证码</span></a></div></div>
  </div><p xid="p3" style="line-height:0.8rem;margin-left:0.26rem;color:#999;"><![CDATA[输入手机验证码]]>
  <span xid="span1" id="span1" style="line-height:38px;font-size:14px;margin-left:5px;color:#f0f0f0;"></span></p><div xid="div3" style="background-color:#ffffff;">
    
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label25" xid="labelEdit6" style="padding:0 0.3rem;height:1rem;">
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="vcode" onBlur="vcodeBlur" style="border:none;outline:none;padding:0;font-size:0.3rem;color:#333;" placeHolder="请输入验证码"></input></div></div><a component="$UI/system/components/justep/button/button" class="btn btn-default center-block" label="下一步" xid="registerBtn" style="background-color:#7bc83e;color:white;border:none;margin:0.9rem 0.4rem 0 0.4rem;" onClick="registerBtnClick">
   <i xid="i8"></i>
   <span xid="span8" style="font-size:0.36rem">下一步</span></a>
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel6" style="margin:0;    background-color: #f0f0f0;box-shadow:none;">
   <div xid="div1" style="text-align: center;">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col x-col-fixed" xid="col2" style="margin:0.1rem 0.4rem;"><span id="span3" xid="span3" style="font-size:0.26rem;color:#999;"><![CDATA[]]></span></div>
   </div>
  </div> </div></div>
  </div> 
</div>