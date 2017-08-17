<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:254px;left:86px;height:auto;"> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="实名认证"
          class="x-titlebar top">
          <div class="x-titlebar-left top-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon left-btn" icon="icon-ios7-arrow-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-ios7-arrow-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">实名认证</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1" style="background-color:#f0f0f0;"><div xid="div1" style="background-color:#fff;padding-left:0.3rem;"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label25" xid="labelEdit6" style="margin-top:0.2rem;background-color:white;height:1rem;border-bottom:1px solid #eee;">
   <label class="x-label" xid="label6" style="text-align:left;font-weight:bold;"><![CDATA[姓名]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="vcode" style="box-shadow:none;border:none;"></input></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label25" xid="labelEdit1" style="background-color:white;height:1rem;">
   <label class="x-label" xid="label1" style="text-align:left;font-weight:bold;"><![CDATA[身份证]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input1" onBlur="vcodeBlur" style="box-shadow:none;border:none;" onFocus="input1Focus"></input></div></div>
  
  <a component="$UI/system/components/justep/button/button" class="btn btn-default center-block" label="认证" xid="registerBtn" style="margin:0.4rem;background-color:#7bc83e;color:white;border:none;font-size:0.36rem;height:0.8rem;border-radius:0.05rem;" onClick="registerBtnClick" disabled="true">
   <i xid="i8"></i>
   <span xid="span1" style="font-size:large">认证</span></a>
  </div>
  </div> 
</div>