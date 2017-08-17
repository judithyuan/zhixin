<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:389px;left:124px;height:auto;" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="payDta" idColumn="type">
   <column name="type" type="String" xid="xid1"></column>
  <column label="折扣" name="discount" type="String" xid="xid2"></column>
  <column name="ID" type="String" xid="xid3"></column>
  <data xid="default1">[{&quot;type&quot;:&quot;缴物业费&quot;,&quot;discount&quot;:&quot;1&quot;,&quot;ID&quot;:&quot;1&quot;},{&quot;type&quot;:&quot;缴水费&quot;,&quot;discount&quot;:&quot;0&quot;,&quot;ID&quot;:&quot;2&quot;},{&quot;type&quot;:&quot;垃圾费&quot;,&quot;discount&quot;:&quot;0&quot;,&quot;ID&quot;:&quot;3&quot;},{&quot;type&quot;:&quot;缴停车费&quot;,&quot;discount&quot;:&quot;0&quot;,&quot;ID&quot;:&quot;4&quot;}]</data>
  <column name="img_url" type="String" xid="xid4"></column>
  <column name="info" type="String" xid="xid5"></column>
  <column name="text" type="String" xid="xid6"></column>
  <column name="zhe" type="String" xid="xid7"></column>
  <column name="cost_id" type="String" xid="xid8"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="在线缴费"
          class="x-titlebar top">
          <div class="x-titlebar-left top-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon left-btn" icon="icon-ios7-arrow-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-ios7-arrow-left"/>  
              <span style="font-size:xx-large;"></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title" style="font-weight:normal;font-family:苹方 常规;font-size:0.36rem;">在线缴费</div>  
          <div class="x-titlebar-right reverse "> 
          <span xid="span9" style="margin-right:0.3rem;position:relative;" bind-click="span9Click">
   <img src="$UI/zhixin/img/bellh.png" alt="" xid="image13" style="width:0.4rem;vertical-align:middle;"></img>
   <span xid="span99" class="ts" id="span98" style="display:none;"></span></span></div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1" style="padding-top:10px;background-color:#eee;"><div xid="div1" style="background-color:white;"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="payDta">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" bind-click="li1Click" style="padding-left:0.3rem" class="jiaofei"><div component="$UI/system/components/justep/row/row" class="x-row list-row" xid="row1" style="padding:0;border-bottom:1px solid #eee;" bind-css="{'aheight':val(&quot;info&quot;) !=''}">
   <div class="x-col" xid="col1" style="height:1rem;"><img src="$UI/zhixin/img/bmfwImg/huafei.png" alt="" xid="image1" style="    width: 0.46rem;padding-left:0;margin-top:0.27rem;" bind-attr-src=' val("img_url")' class="pull-left" bind-css="{'imgnotnull':val(&quot;info&quot;) !=''}"></img>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="width:80%;margin:0;padding:0;">
   <div class="x-col" xid="col6" style="margin:0;padding:0;height:0.6rem;padding-top:0.25rem;" bind-css="{'tnull':val(&quot;info&quot;) ==''}"><span xid="span1" bind-text='val("text")' style="font-size:0.3rem;color:#333;margin-left:0.25rem;"></span>
  </div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="width:80%;margin:0;padding:0;" bind-visible="val(&quot;info&quot;) !=''">
   <div class="x-col" xid="col9" style="margin:0;padding:0;height:0.6rem;line-height:0.5rem;"><span xid="span2" style="font-size:0.26rem;color:#999;margin-left:0.25rem;" bind-text='val("info")'><![CDATA[手机缴纳物业费更方便，还享最高9.6折]]></span></div></div></div>
   <div class="x-col x-col-fixed" xid="col3" style="width:auto;line-height:1rem;padding-right:0.3rem;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button2" icon="icon-ios7-arrow-right" style="color:#999;height:1rem;line-height:1rem;" bind-css="{'bnotnull':val(&quot;info&quot;) !=''}">
   <i xid="i1" class="icon-ios7-arrow-right" style="font-size:0.4rem;"></i>
   <span xid="span3"></span></a></div></div>
  </li></ul> </div></div>
  <div xid="div2paycost" style="background-color:rgba(255, 255, 255, 0);position:fixed;bottom:0;display:none;">
   <img alt="" style="width:100%;" bind-click="nativaClickmain" xid="online_pay_icon"></img></div></div>
  </div> 
</div>