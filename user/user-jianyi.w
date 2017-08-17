<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="意见建议"
          class="x-titlebar top">
          <div class="x-titlebar-left top-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon left-btn" icon="icon-ios7-arrow-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-ios7-arrow-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">意见建议</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1" style="background-color:#f0f0f0;"><div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel3" style="background-color:white;box-shadow:none;margin-top:0.2rem;">
   
   <textarea component="$UI/system/components/justep/textarea/textarea" class="form-control" xid="textarea1" style="box-shadow:none;height:3.6rem;padding:0.3rem;font-size:0.3rem;color:#333;" placeHolder="您的每个反馈对我们都很重要（篇幅所限，请控制在200字以内）" bind-keyup="btnChange"></textarea></div>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default center-block" label="提交" xid="registerBtn" style="height:0.8rem;line-height:0.8rem;margin: 0.4rem;color:white;font-size:0.36rem;font-weight:6rem;padding:0;border:none;background-color:#e3e3e3;" onClick="registerBtnClick">
   <i xid="i8"></i>
   <span xid="span2" style="font-size:large">提交</span></a></div>
  </div> 
</div>