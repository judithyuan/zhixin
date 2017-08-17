<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:503px;left:368px;" onParamsReceive="modelParamsReceive" onLoad="modelLoad" onActive="modelActive" onInactive="modelInactive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="sendData" idColumn="payment_id" confirmDelete="false" confirmRefresh="false">
   <column label="id" name="payment_id" type="String" xid="xid7"></column>
   <column label="支付方式" name="payment_name" type="String" xid="xid8"></column>
   <column label="状态" name="state" type="Integer" xid="xid17"></column>
   <column label="支付简写" name="payment_code" type="String" xid="xid15"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="zfData" idColumn="id" onCustomRefresh="zfDataCustomRefresh" confirmDelete="false" confirmRefresh="false"><column name="id" type="String" xid="xid1"></column>
  <column label="图片地址" name="image" type="String" xid="xid2"></column>
  <column label="方式" name="payment_name" type="String" xid="xid3"></column>
  <column label="说明" name="sm" type="String" xid="xid4"></column>
  <column label="状态" name="state" type="String" xid="xid5"></column>
  <column label="优惠" name="yh" type="String" xid="xid6"></column>
  <column name="payment_code" type="String" xid="xid9"></column>
  <column name="describe" type="String" xid="xid10"></column>
  <column name="discount" type="String" xid="xid11"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="data" idColumn="url" confirmRefresh="false" confirmDelete="false">
   <column name="url" type="String" xid="column2"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar top" xid="titleBar1" title="订单支付">
   <div class="x-titlebar-left top-left" xid="left1">
    <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon left-btn" icon="icon-ios7-arrow-left" onClick="tuichu" xid="backBtn">
     <i class="icon-ios7-arrow-left" xid="i1"></i>
     <span xid="span8"></span></a> </div> 
   <div class="x-titlebar-title" style="font-weight:normal;" xid="title1">
    <span id="type" xid="span7"></span>订单支付</div> 
   <div class="x-titlebar-right reverse" xid="right1"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="返回" xid="button2" style="font-size:12px;display:none;">
   <i xid="i3"></i>
   <span xid="span2">返回</span></a></div></div></div>  
    <div id='arrearageContent' class="x-panel-content" xid="content1" style="background-color:#eee;"><div xid="div5" style="padding:0.2rem 0.3rem;background-color:#fff;margin-bottom:0.2rem;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="border:none;">
    <div class="x-col" xid="col2" style="color:#333;">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="line-height:0.5rem;border:none;">
      <div class="x-col" xid="col5">
       <span xid="span12">订单类型：</span>
       <span xid="span6"><![CDATA[活动订单]]></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="line-height:0.5rem;border:none;">
      <div class="x-col" xid="col8">
       <span xid="span9">订单金额：</span>
       <span xid="span10" style="font-weight:bold;color:#ff3333;">￥</span>
       <span xid="span10" style="font-weight:bold;color:#ff3333;" bind-text="money">￥0</span></div> </div> </div> 
    <div class="x-col x-col-fixed" xid="col3" style="width:auto;line-height:48px;display:none;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button5" icon="icon-ios7-arrow-right" style="line-height:1rem;">
      <i xid="i6" class="icon-ios7-arrow-right" style="font-size:0.4rem;color:#999999;"></i>
      <span xid="span11"></span></a> </div> </div> </div><div xid="div1" style="margin-top:0.2rem;background-color:white;"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1activityPay" data="zfData" style="padding-left:0.3rem;">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" bind-click="li1Click" class="noborder"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="height:1rem;border-bottom:1px solid #e3e3e3;align-items:center;">
   <div class="x-col x-col-fixed" xid="col11" style="width:0.9rem;">
    <span component="$UI/system/components/justep/button/radio" class="x-radio" xid="radio2" style="font-size:0.3rem;" bind-value='ref("state")' bind-click="li1Click" checked="false" name="num"></span></div><div class="x-col x-col-fixed" xid="col12" style="margin-left:0.2rem;width:0.5rem;margin-right:0.3rem;">
    <img src="$UI/zhixin/img/bmfwImg/pander.png" alt="" xid="image2" style="width:0.5rem;" bind-attr-src=' val("image")'></img></div> 
   <div class="x-col x-col-fixed" xid="col10">
    <h4 xid="h42" style="color:#333333;position:relative;display:inline-block;font-size:0.3rem;" bind-text='val("payment_name")'>天府支付</h4>
    <span xid="span1" style="color:#f99d0e;font-size:0.26rem;display:block;" bind-text='val("describe")'>支付服务由天府支付提供，无需开通网银</span>
    <span xid="span4" style="color:#f99d0e;font-size:0.2rem;display:none;" bind-text='val("yh")'>使用南商行银行卡立减10元</span></div> 
    </div></li></ul> </div></div>
  <div xid="div2" style="padding-right:10px;padding-left:10px;margin-top:25px;"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="确认支付" xid="button1activityPay" style="margin-top:0.4rem;background-color:#7bc83e;border:none;border-radius:5px;height:0.8rem;" onClick="button1Click">
   <i xid="i2"></i>
   <span xid="span16" style="font-size:0.36rem;"><![CDATA[确认支付]]></span></a></div>
  
  <div xid="div9" style="display:none;margin-bottom:0.2rem;padding:0.2rem;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7">
    <div class="x-col" xid="col9" style="    line-height: 24px;"></div>
    <div class="x-col x-col-fixed" xid="col13" style="width:auto;line-height: 38px;">
     <p xid="p2" style="color: #999;font-size:0.3rem;"><![CDATA[本金融服务由四川天府银行提供]]></p></div> 
    <div class="x-col" xid="col14" style="    line-height: 24px;"></div></div> </div>
  </div>
  
<!--   <a component="$UI/system/components/justep/button/button" id="bacBtnarr" class="btn btn-link btn-only-icon" label="点此返回" xid="button3" style="max-width: 30px;display:none;position:absolute;z-index:12;right:10px;top:50%;" bind-touchstart="button3Touchstart" bind-touchend="button3Touchend" onClick="button2Click"> -->
<!--    <img src="$UI/zhixin/img/backyh.png" alt="" xid="image1"></img><i xid="i4"></i> -->
<!--    <span xid="span3">点此返回</span></a> -->
  </div>
<iframe frameborder="0" src="" id="iframe1" xid="iframeyh" bind-attr-src='$model.data.val("url")' style="top:0;z-index: 10;display:none;position:absolute;background-color:white;" width="100%" height="100%"></iframe></div>