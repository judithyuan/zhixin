<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:356px;left:132px;height:auto;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="msgData" idColumn="title" onCustomRefresh="msgDataCustomRefresh"><column name="title" type="String" xid="xid1"></column>
  <column name="content" type="String" xid="xid2"></column>
  <column name="time" type="String" xid="xid3"></column>
  <data xid="default1">[{&quot;content&quot;:&quot;&quot;,&quot;time&quot;:&quot;&quot;},{&quot;content&quot;:&quot;&quot;,&quot;time&quot;:&quot;&quot;},{&quot;content&quot;:&quot;&quot;,&quot;time&quot;:&quot;&quot;},{&quot;content&quot;:&quot;&quot;,&quot;time&quot;:&quot;&quot;}]</data>
  <column name="add_time" type="String" xid="xid4"></column>
  <column name="desc" type="String" xid="xid5"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="msgDatas" idColumn="title">
   <column name="title" type="String" xid="column1"></column>
   <column name="content" type="String" xid="column2"></column>
   <column name="time" type="String" xid="column3"></column>
   <data xid="default2">[{&quot;content&quot;:&quot;&quot;,&quot;time&quot;:&quot;&quot;},{&quot;content&quot;:&quot;&quot;,&quot;time&quot;:&quot;&quot;},{&quot;content&quot;:&quot;&quot;,&quot;time&quot;:&quot;&quot;},{&quot;content&quot;:&quot;&quot;,&quot;time&quot;:&quot;&quot;}]</data></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1" style="background-color:#f0f0f0;"> 
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
    <div class="x-panel-content" xid="content1"><div xid="div1" style="height:0.2rem;background-color:#f0f0f0;border-bottom:1px solid #eee;"></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row12" style="background-color:white;padding-left:0.3rem;" bind-click="row12Click">
   <div class="x-col" xid="col35" style="padding-top:0.21rem;padding-bottom:0.21rem;border-bottom:1px solid #eee;">
    <img src="$UI/zhixin/img/user/xitong.png" alt="" style="width:0.58rem;height:0.58rem;" xid="image6"></img><span xid="span20" style="color:#333;margin-left:0.3rem;font-size:0.3rem;"><![CDATA[系统消息]]></span></div> 
   <div class="x-col clearfix" xid="col36" style="border-bottom:1px solid #eee;">
    
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right" label="button" xid="button3" icon="icon-ios7-arrow-right" style="color:#999;height:1rem;line-height:1rem;margin-right:0.3rem;">
   <i xid="i2" class="icon-ios7-arrow-right" style="font-size:0.4rem;"></i>
   <span xid="span3"></span></a></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="background-color:white;padding-left:0.3rem;" bind-click="row1Click">
   <div class="x-col" xid="col2" style="padding-top:0.21rem;padding-bottom:0.21rem;border-bottom:1px solid #eee;">
    <img src="$UI/zhixin/img/user/geren.png" alt="" style="width:0.58rem;height:0.58rem;" xid="image1"></img><span xid="span1" style="color:#333;margin-left:0.3rem;font-size:0.3rem;"><![CDATA[个人消息]]></span></div> 
   <div class="x-col clearfix" xid="col1" style="border-bottom:1px solid #eee;">
    
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right" label="button" xid="button2" icon="icon-ios7-arrow-right" style="color:#999;height:1rem;line-height:1rem;margin-right:0.3rem;">
   <i xid="i1" class="icon-ios7-arrow-right" style="font-size:0.4rem;"></i>
   <span xid="span4"></span></a></div> </div>
  </div>
  </div> 
</div>