<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="redRecordList" idColumn="user_id"><column name="user_id" type="String" xid="xid6"></column>
  <column name="mobile" type="String" xid="xid7"></column>
  <column name="lg_type" type="String" xid="xid8"></column>
  <column name="lg_av_amount" type="String" xid="xid9"></column>
  <column name="lg_add_time" type="String" xid="xid10"></column>
  <column name="lg_desc" type="String" xid="xid11"></column></div></div> 
<div xid="div1top" class="grad"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="红包奖金" style="height:48px;line-height:48px;color:#fff;font-size:0.36rem;background-color:transparent;">
   <div class="x-titlebar-left top-left" xid="left1" style="font-weight:normal;"><a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon left-btn" icon="icon-ios7-arrow-left" onClick="{operation:'window.close'}" xid="backBtn">
   <i class="icon-ios7-arrow-left" xid="i1"></i>
   <span xid="span1"></span></a></div>
   <div class="x-titlebar-title" xid="title1">红包奖金</div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="margin-top:0.3rem;">
   <div class="x-col " xid="col5" style="text-align:center;color:#fff;"><span xid="span2" style="font-size:0.36rem;"><![CDATA[￥]]></span>
  <span xid="span3" bind-text='wallet' style="font-size:1rem;"><![CDATA[0.00]]></span></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col7"></div>
   <div class="x-col" xid="col8" style="text-align:center;color:#f0f0f0;"><span xid="span4" style="font-size:0.28rem;"><![CDATA[红包余额]]></span></div>
   <div class="x-col" xid="col9"></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="margin-top:0.2rem;">
   <div class="x-col " xid="col12" style="text-align:center;color:#fff;">
    <span xid="span5" style="font-size:0.3rem;"><![CDATA[累计金额￥]]></span>
    <span xid="span6" bind-text='summation' style="font-size:0.3rem;"><![CDATA[0.00]]></span></div> 
   </div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="height:1rem;background-color:#f0f0f0;text-align:center;">
   <div class="x-col" xid="col13" style="text-align:center;line-height:1rem;"><span xid="span8" style="display:inline-block;background-color:red;border:3px solid red;border-radius:50%;height:0;width:0rem;margin-right:0.1rem;position:relative;top:-0.05rem;"></span><span xid="span7" style="font-size:0.3rem;"><![CDATA[红包记录]]></span>
  </div>
   </div>
  
  
  <div xid="div22" style="position:relative;height:7.1rem;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row6redContent" style="height:1.5rem;border-bottom:1px solid #eee;position:relative;">
   <div class="x-col" xid="col16" style="text-align:center;"><div xid="div3allRed" style="width:30%;margin:0 auto;height:1.5rem;padding-top:0.3rem;" class="click-style" bind-click="div3allRedClick"><div xid="div4"><span xid="span9" style="font-size:0.28rem;"><![CDATA[全部]]></span></div>
  <div xid="div5">
   <span xid="span10" style="color:red;font-size:0.3rem;" bind-text="allCount"><![CDATA[5]]></span></div></div></div>
   <div class="x-col" xid="col17" style="text-align:center;"><div xid="div6add" style="width:30%;margin:0 auto;height:1.5rem;padding-top:0.3rem;" bind-click="div6addClick">
   <div xid="div8">
    <span xid="span11" style="font-size:0.28rem;"><![CDATA[增加]]></span></div> 
   <div xid="div7">
    <span xid="span12" style="color:red;font-size:0.3rem;" bind-text="addCount"><![CDATA[3]]></span></div> </div></div>
   <div class="x-col" xid="col18" style="text-align:center;"><div xid="div9reduce" style="width:30%;margin:0 auto;height:1.5rem;padding-top:0.3rem;" bind-click="div9reduceClick">
   <div xid="div11">
    <span xid="span13" style="font-size:0.28rem;"><![CDATA[减少]]></span></div> 
   <div xid="div10">
    <span xid="span14" style="color:red;font-size:0.3rem;" bind-text="reduceCount"><![CDATA[2]]></span></div> </div></div></div><div xid="div12mainContent" style="position: absolute; left: 0px; width: 100%;top:1.5rem;height:5.6rem;" class="clearfix x-scroll-view">
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollRecord" style="height:8rem;" onPullUp="scrollRecordPullUp" onPullDown="scrollRecordPullDown" autoPullUp="false" autoAppend="false">
   <div class="x-content-center x-pull-down container" xid="div16">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i2"></i>
    <span class="x-pull-down-label" xid="span20">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div17"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1redList" data="redRecordList" style="display:block;" disablePullToRefresh="true">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" style="border-bottom:1px solid #eee;">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="padding:0 0.2rem;height:1rem;align-items:center;">
      <div class="x-col" xid="col14">
       <div xid="div13">
        <span xid="span18" bind-text="val(&quot;lg_av_amount&quot;)&gt;=0?'增加':'减少'" style="font-size:0.28rem;color:#626262;">增加</span></div> 
       <div xid="div15">
        <span xid="span19" bind-text='val("lg_add_time")' style="font-size:0.26rem;color:#9e9e9e;">2017-06-09</span></div> </div> 
      <div class="x-col" xid="col3">
       <div xid="div14" class="pull-right" style="font-size:0.3rem;color:#494949;">
        <span xid="span16" bind-text="val(&quot;lg_av_amount&quot;)&gt;=0?'+':'-'">-</span>
        <span xid="span17">￥</span>
        <span xid="span15" bind-text='parseFloat(Math.abs(val("lg_av_amount"))).toFixed(2)'>5.00</span></div> </div> </div> </li> </ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div18">
    <span class="x-pull-up-label" xid="span21">加载更多...</span></div> </div></div>
  </div></div>