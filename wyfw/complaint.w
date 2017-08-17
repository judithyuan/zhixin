<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:244px;left:732px;" onActive="modelActive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="complaintData" idColumn="user_id" confirmDelete="false" onBeforeRefresh="complaintDataBeforeRefresh"><column label="上传时间" name="add_time" type="String" xid="xid1"></column>
  <column name="pics" type="String" xid="xid2"></column>
  <column name="desc" type="String" xid="xid3"></column>
  <column name="user_id" type="String" xid="xid4"></column>
  <column name="handle_state" type="String" xid="xid5"></column>
  <column name="reply" type="String" xid="xid6"></column>
  <column name="id" type="String" xid="xid9"></column>
  <column isCalculate="true" name="pic_1" type="String" xid="xid10"></column>
  <column name="pic_2" type="String" xid="xid11"></column>
  <column name="pic_3" type="String" xid="xid12"></column>
  <column name="pic_4" type="String" xid="xid13"></column>
  <column name="pic_5" type="String" xid="xid14"></column>
  <column name="reply_time" type="String" xid="xid15"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="imgData" idColumn="id"><column name="pics" type="String" xid="xid7"></column>
  <column name="id" type="String" xid="xid8"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1">
   <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar top" xid="titleBar2" title="我的投诉">
    <div class="x-titlebar-left top-left" xid="left2">
     <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon left-btn" icon="icon-chevron-left" onClick="{operation:'window.close'}" xid="button4">
      <i class="icon-ios7-arrow-left icon-chevron-left" xid="i6"></i>
      <span xid="span9"></span></a> </div> 
    <div class="x-titlebar-title" xid="title2" style="font-weight:normal;font-size:0.36rem;">
     <span id="type" xid="span6"></span>我的投诉</div> 
    <div class="x-titlebar-right reverse top-right" xid="right2">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="投诉" xid="toComplain" style="font-size:0.26rem;color:#999999;text-align:bottom;height:auto;" onClick="toComplainClick">
      <span xid="span30" style="vertical-align:bottom;">投诉</span>
      <i xid="i4"></i></a> </div> </div> </div><div class="x-panel-content" xid="content1" style="background-color:#f0f0f0;"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="complaintData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" style="margin-top:0.2rem;background-color:#fff;"><div xid="div2" style="height:1rem;line-height:1rem;padding:0 0.3rem;font-size:0.3rem;border-bottom:1px solid #e3e3e3"><span xid="span1" class="pull-left" bind-text='val("add_time") ' style="color:#999"><![CDATA[]]></span>
  <span class="pull-right" bind-visible=" val(&quot;reply&quot;) == ''" style="display:none"><![CDATA[处理中]]></span>
  <span xid="alreadyReply" class="pull-right" style="color:#7bc83e;display:none" bind-visible=" val(&quot;reply&quot;)!=''"><![CDATA[已回复]]></span></div>
  <div xid="div1" style="padding:0.3rem" bind-click="div1Click"><p xid="p2" style="max-height:1.2rem;line-height:0.6rem;overflow:hidden;text-overflow: ellipsis;" bind-text=' val("desc")'><![CDATA[]]></p>
  <img src="" alt="" xid="image2" style="width:1rem;margin-right:0.2rem;" bind-attr-src=' val("pic_1")' bind-visible=' val("pic_1")'></img><img src="" alt="" xid="image4" style="width:1rem;margin-right:0.2rem;" bind-attr-src=' val("pic_2")' bind-visible=' val("pic_2")'></img><img src="" alt="" xid="image5" style="width:1rem;margin-right:0.2rem;" bind-attr-src=' val("pic_3")' bind-visible=' val("pic_3")'></img><img src="" alt="" xid="image6" style="width:1rem;margin-right:0.2rem;" bind-attr-src=' val("pic_4")' bind-visible=' val("pic_4")'></img><img src="" alt="" xid="image7" style="width:1rem;margin-right:0.2rem;" bind-attr-src=' val("pic_5")' bind-visible=' val("pic_5")'></img><div xid="div3" style="margin-top:0.34rem" bind-visible=" val(&quot;reply&quot;) !=''"><p xid="p3"><![CDATA[回复：]]></p>
  <p xid="p4" style="padding-left:0.9rem;overflow: hidden;white-space: nowrap;text-overflow: ellipsis;height:0.5rem;line-height:0.5rem" bind-text=' val("reply")'><![CDATA[回复内容]]></p></div>
  
  
  
  </div>
  </li></ul> </div>
  <div xid="div4"></div>
  <div xid="complainNullData" style="display:none;text-align: center;width: 100%;">
   <img src="$UI/zhixin/img/none.png" alt="" xid="image1" style="width: 30%;margin-top: 30%;" height="100%"></img></div></div>
  </div> 
</div>