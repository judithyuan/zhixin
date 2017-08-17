<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:211px;left:154px;" onParamsReceive="modelParamsReceive"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="bangmangData" onCustomRefresh="bangmangDataCustomRefresh" idColumn="id">
   <column name="id" type="String" xid="xid1"></column>
  <column label="地址" name="address" type="String" xid="xid2"></column>
  <column label="内容" name="content" type="String" xid="xid3"></column>
  <column label="创建时间" name="create_time" type="String" xid="xid4"></column>
  <column label="结束时间" name="end_time" type="String" xid="xid5"></column>
  <column label="image" name="image" type="String" xid="xid6"></column>
  <column label="标题" name="title" type="String" xid="xid7"></column>
  <column label="start_time" name="start_time" type="String" xid="xid8"></column>
  <column name="people" type="String" xid="xid10"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="data" idColumn="id" onCustomRefresh="dataCustomRefresh"><column name="id" type="String" xid="xid9"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-content" xid="content1" style="overflow-x: hidden;background-color: #F0F0F0;"><div component="$UI/system/components/justep/list/list" class="x-list" xid="bangmangList" data="bangmangData" limit="-1">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" style="background-color: white;">
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel3" style="margin-bottom:0;padding-top:10px;border: none;">
   
   <div class="panel-body" xid="body2" style="padding:0;"><div xid="div1" style="text-align:center;line-height: 44px;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-lg btn-only-icon" label="button" xid="button2" icon="icon-chevron-left" style="margin-left: 15px;float:left;padding:0;color:#333333;line-height: 44px;" onClick='{"operation":"window.close"}'>
   <i xid="i1" class="icon-chevron-left"></i>
   <span xid="span3"></span></a>
  <span xid="span4" style="font-size:18px;margin-left: -20px;color: #333333;" bind-text='val("title")'><![CDATA[1]]></span>
  </div></div></div><div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel4" style="margin-bottom: 5px;">
   <div class="panel-body" xid="body3" style="padding:0;">
    <div xid="div2" style="text-align:center;">
     
     <img alt="" xid="image3" style="float:center;margin-right:20px;width:100%;" height="auto" bind-attr-src=' val("image")' src="$UI/zhixin/img/main/background.png"></img></div> </div> </div>
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel5" style="border: none;margin-bottom: 1px;">
   <div class="panel-body" xid="body4" style="padding:0;">
    <div xid="div3" style="text-align:center;">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col x-col-10" xid="col1"><img src="$UI/zhixin/img/main/iconfont-rili(1)@2x.png" alt="" xid="image5" style="width:20px;height:20px;"></img></div>
   <div class="x-col x-col-25" xid="col2"><span xid="span7" style="float:left;font-size:14px;font-weight:bold;"><![CDATA[活动时间]]></span></div>
   <div class="x-col" xid="col3"><span xid="span8" style="float:right;    margin-top: 2px;" bind-text='val("start_time")+"-"+val("end_time")'></span></div>
  </div></div> </div> </div>
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel6" style="border: none;margin-bottom: 1px;">
   <div class="panel-body" xid="body5" style="padding:0;">
    <div xid="div4" style="text-align:center;">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
      <div class="x-col x-col-10" xid="col8">
       <img src="$UI/zhixin/img/main/iconfont-dingwei@2x (2).png" alt="" xid="image7" style="width:15px;height:20px;"></img></div> 
      <div class="x-col x-col-25" xid="col6">
       <span xid="span9" style="float:left;font-size:14px;font-weight:bold;"><![CDATA[活动地址]]></span></div> 
      <div class="x-col" xid="col7">
       <span xid="span10" style="float:right;    margin-top: 2px;" bind-text='val("address")'></span></div> 
      </div> </div> </div> </div>
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel7" style="border: none;margin-bottom: 1px;">
   <div class="panel-body" xid="body6" style="padding:0;">
    <div xid="div5" style="text-align:center;">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
      <div class="x-col x-col-10" xid="col9">
       <img src="$UI/zhixin/img/main/ren.png" alt="" xid="image9" style="width:20px;height:20px;"></img></div> 
      <div class="x-col x-col-25" xid="col10">
       <span xid="span11" style="float:left;font-size:14px;font-weight:bold;"><![CDATA[已报人数]]></span></div> 
      <div class="x-col" xid="col11">
       <span xid="span12" style="float:right;    margin-top: 2px;" bind-text='val("people")'></span></div> 
      </div> </div> </div> </div>
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel8" style="margin-top: 20px;border:none;box-shadow: 0 1px 2px rgba(255, 255, 255, 0);">
   <div class="panel-body" xid="body7" style="padding:0;">
    <div xid="div6" style="text-align:center;">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
      <div class="x-col" xid="col15" style="text-align: left;">
       <span id="span1" xid="span1" style="text-align: left;"></span></div> 
      
      
      </div> </div> </div> </div>
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel9" style=";border-radius: 0;background-color: #f0f0f0;border: none;box-shadow: 0 1px 2px rgba(255, 255, 255, 0);">
   <div class="panel-body" xid="body8" style="padding:0;">
    <div xid="div7" style="text-align:center;">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
      <div class="x-col" xid="col17">
       <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label btn-block" label="我要报名" xid="button4" style="margin-top: 10px;background-color:#7bc93d;border:none;border-radius:5px;" onClick="button4Click">
   <i xid="i3"></i>
   <span xid="span15" style="font-size:large">我要报名</span></a></div> </div> </div> </div> </div></li></ul> </div>
  </div>
   </div></div>