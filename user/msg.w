<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:356px;left:132px;height:auto;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="msgData" idColumn="id" onCustomRefresh="msgDataCustomRefresh"><column name="add_time" type="String" xid="xid10"></column>
  <column label="del" name="del" type="String" xid="xid11"></column>
  <column name="id" type="String" xid="xid12"></column>
  <column label="message" name="message" type="String" xid="xid13"></column>
  <column name="title" type="String" xid="xid14"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="消息中心"
          class="x-titlebar top">
          <div class="x-titlebar-left top-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon left-btn" icon="icon-ios7-arrow-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-ios7-arrow-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title" style="font-weight: normal;">消息中心</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1" style="background-color:#f0f0f0;padding-right:10px;padding-left:10px;padding-top:10px;"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="msgData">
   <ul class="x-list-template" xid="listTemplateUl2">
    <li xid="li2"><div xid="div2" style="border-radius:0.1rem;color:#333;padding-left:0.3rem;padding-right:0.3rem;background-color:white;padding-top:0.56rem;font-size:0.3rem;">
   <span xid="span6" bind-text="'【' + val(&quot;title&quot;) +'】'">1</span>
   <span xid="span4" bind-text='val("message")'>1</span>
   <p xid="p2" style="color:#999;margin-top:0.56rem;text-align:right;border-top:1px solid #eee;height:1rem;line-height:1rem;">
    <i xid="i2" class="icon-android-clock" style="font-size:0.34rem;color:#999;position:relative;top:0.03rem;"></i>
    <span xid="span5" bind-text='val("add_time")'>1</span></p> </div>
  <div xid="div1" style="height:0.2rem;background-color:#f0f0f0;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div></li></ul> </div></div>
  </div> 
</div>