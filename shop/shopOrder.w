<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:141px;left:559px;" onActive="modelActive" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="data1" idColumn="id"><column name="id" type="String" xid="xid1"></column>
  <column name="zf" type="String" xid="xid2"></column>
  <column name="wc" type="String" xid="xid3"></column>
  <column name="sc" type="String" xid="xid4"></column>
  <column name="qr" type="String" xid="xid5"></column>
  <data xid="default1">[{&quot;id&quot;:&quot;0&quot;,&quot;zf&quot;:&quot;去支付&quot;,&quot;wc&quot;:&quot;待支付&quot;,&quot;sc&quot;:&quot;1&quot;,&quot;qr&quot;:&quot;1&quot;},{&quot;id&quot;:&quot;1&quot;,&quot;zf&quot;:&quot;再次购买&quot;,&quot;wc&quot;:&quot;已完成&quot;,&quot;sc&quot;:&quot;0&quot;,&quot;qr&quot;:&quot;0&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="orderList" onCustomRefresh="orderListCustomRefresh" idColumn="order_id" confirmDelete="false" confirmRefresh="false"><column name="order_id" type="String" xid="xid9"></column>
  <column label="add_time" name="add_time" type="String" xid="xid10"></column>
  <column name="goods_amount" type="String" xid="xid11"></column>
  <column name="order_sn" type="String" xid="xid12"></column>
  <column name="order_state" type="String" xid="xid13"></column>
  <column name="pay_sn" type="String" xid="xid14"></column>
  <column name="payment_name" type="String" xid="xid15"></column>
  <column name="state_desc" type="String" xid="xid16"></column>
  <column name="store_id" type="String" xid="xid17"></column>
  <column name="order_amount" type="String" xid="xid18"></column>
  <column name="count_goods" type="String" xid="xid19"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="goodsData" idColumn="order_id" confirmDelete="false" confirmRefresh="false"><column name="order_id" type="String" xid="xid6"></column>
  <column name="goods_image_url" type="String" xid="xid7"></column>
  <column name="goods_num" type="String" xid="xid8"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1" style=''> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="商城订单" class="x-titlebar top">
          <div class="x-titlebar-left top-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link left-btn" icon="icon-ios7-arrow-left"
              onClick="backBtnClick" xid="backBtn"> 
              <i class="icon-ios7-arrow-left"/>  
            </a> 
          </div>  
          <div class="x-titlebar-title" style="font-weight: normal;font-size:0.36rem;padding:0;">商城订单</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div xid="content1" style="background-color:#f0f0f0;" class="x-panel-content">
  <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup1" style="height:1rem;background-color:white;padding:0 0.3rem;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link focus-btn active" xid="button3all" icon="linear" style="color:#666;font-size:0.3rem;" label="全部" onClick="allClick">
   <i xid="i9" class="linear"></i>
   <span xid="span12">全部</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="button2" icon="linear" style="color:#666;font-size:0.3rem;" label="已完成" onClick="button2Click">
    <i xid="i8" class="linear"></i>
    <span xid="span10">已完成</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="button8" icon="linear" style="color:#666;font-size:0.3rem;" label="待付款" onClick="button8Click">
    <i xid="i13" class="linear"></i>
    <span xid="span17">待付款</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="button10" icon="linear" style="color:#666;font-size:0.3rem;" label="待发货" onClick="button10Click">
    <i xid="i15" class="linear"></i>
    <span xid="span19">待发货</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="button9" icon="linear" style="color:#666;font-size:0.3rem;" label="待收货" onClick="button9Click">
    <i xid="i14" class="linear"></i>
    <span xid="span18">待收货</span></a> 
    
  <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="已取消" xid="button27" style="color:#666;font-size:0.3rem;" onClick="button27Click">
   <i xid="i32"></i>
   <span xid="span56">已取消</span></a>
  </div><div component="$UI/system/components/justep/list/list" class="x-list" xid="list2orderList" style="margin-top:0.2rem;" dataItemAlias="shopRow" data="orderList" filter=" ">
     <ul class="x-list-template" xid="listTemplateUl2" style="margin-bottom:0px;background-color:#fff;">
      <li xid="li2" style="border-bottom:15px solid #eee;">
       <div xid="div3" class="store" style="height:0.8rem;line-height:0.8rem;padding:0 0.3rem;">
        <span xid="span4" style="font-size: 0.28rem;color:#666;" bind-text='val("add_time")'>2017-02-13 11:59:50</span>
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label pull-right" label="待支付" xid="button1" style="font-size: 0.28rem;padding:0;color:#ff3333;line-height:0.8rem;" bind-css="{'red': val(&quot;order_state&quot;) =='10' || val(&quot;order_state&quot;) =='20','bak': val(&quot;order_state&quot;)=='30','bak': val(&quot;order_state&quot;)=='0','gre': val(&quot;order_state&quot;)=='40'}">
         <i xid="i1"></i>
         <span xid="span1" bind-text='val("state_desc")'>待支付</span></a> </div> 
       <div xid="div1" class="store" style="display:none;padding: 0 15px;margin-top: 2px;margin-bottom: 4px;">
        <span xid="span11" style="font-size: 1.2rem;color:#333;" bind-text="'订单号：'+val(&quot;order_sn&quot;)">订单号：415454545</span></div> 
       <div xid="div4">
        <div component="$UI/system/components/justep/row/row" class="x-row x-nav" xid="row4" style="padding: 0;border-top:1px solid #eeeeee;border-bottom:1px solid #eeeeee;" bind-click="row4Click">
         <div class="x-col" xid="col10">
          <div xid="navMenuTop">
           <div component="$UI/system/components/justep/row/row" class="x-row x-nav" xid="row2">
            <div class="x-col" xid="col15">
             <div class="x-navbox" xid="div2">
              <div component="$UI/system/components/justep/list/list" class="x-list" xid="navList" data="goodsData" dataItemAlias=" " filter="$row.val('order_id')==shopRow.val('order_id')">
               <ul class="x-list-template" xid="listTemplateUl4">
                <li xid="li4" class="btn btn-link" style="padding-left:0.18rem;">
                 <img src="$UI/zhixin/img/error.png" alt="" xid="image1" bind-attr-src=' val("goods_image_url")' style="width:1rem;margin-left:0.12rem;"></img></li> </ul> </div> </div> </div> </div> </div> </div> </div> 
        <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="align-items:center;height:0.8rem;padding:0 0.3rem 0 0;border-bottom: 1px solid #eeeeee;">
         <div class="x-col" xid="col11" style="padding:0">
          <span xid="span2" style="float: right;color:#ff3333;font-weight:bold;" bind-text="'￥'+val(&quot;order_amount&quot;)">￥0</span>
          <span xid="span9" style="float: right;color:#666;" bind-text="'共有'+val(&quot;count_goods&quot;)+'件商品 支付金额'">共有0件商品 支付金额</span></div> </div> 
        <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="padding:0 0.3rem 0 0;align-items:center;">
         <div class="x-col" xid="col14" style="padding:0.1rem 0;text-align:right;">
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label zhifustater" label="去支付" xid="button2ZHif" style="min-width: 1.7rem;border-radius: 0.08rem;font-size: 0.28rem;margin-left: 0.2rem;line-height:0.6rem;padding:0;" bind-visible="val(&quot;order_state&quot;) =='10'" onClick="button2ZHifClick">
           <i xid="i2"></i>
           <span xid="span5">去支付</span></a> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label zhifustater" label="再次购买" xid="button4zaigou" style="min-width: 1.7rem;border-radius: 0.08rem;font-size: 0.28rem;margin-left: 0.2rem;line-height:0.6rem;padding:0;" bind-visible="val(&quot;order_state&quot;) =='80'" onClick="button4zaigouClick">
           <i xid="i4"></i>
           <span xid="span7">再次购买</span></a> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label zhifustater" label="确认收货" xid="button5queren" style="min-width: 1.7rem;border-radius: 0.08rem;font-size: 0.28rem;margin-left: 0.2rem;line-height:0.6rem;padding:0;" bind-visible="val(&quot;order_state&quot;) =='30'" onClick="button5querenClick">
           <i xid="i5"></i>
           <span xid="span8">确认收货</span></a> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label " label="取消" xid="buttonquxiao" style="border-color:#999999;color:#999999;min-width: 1.7rem;border-radius: 0.08rem;font-size: 0.28rem;margin-left: 0.2rem;line-height:0.6rem;padding:0;" bind-visible="val(&quot;order_state&quot;) =='10'" onClick="buttonquxiaoClick">
           <i xid="i7"></i>
           <span xid="span13">取消</span></a> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label " label="删除" xid="button3DElet" style="border-color:#999999;color:#999999;min-width: 1.7rem;border-radius: 0.08rem;font-size: 0.28rem;margin-left: 0.2rem;line-height:0.6rem;padding:0;" bind-visible="val(&quot;order_state&quot;) =='0' || val(&quot;order_state&quot;) =='40' " onClick="button3DEletClick">
           <i xid="i3"></i>
           <span xid="span6">删除</span></a> </div> </div> </div> </li> </ul> </div></div>
  </div> 
<div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="livelineOver" dismissible="false">
   <div class="x-popOver-overlay" xid="div5"></div>
   <div class="x-popOver-content" xid="div5" style="margin-left:-150px;margin-top:-150px;">
    <img src="$UI/zhixin/img/gameover.png" alt="" xid="image5" style="width:300px;"></img>
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="position: absolute;bottom:10px;">
     <div class="x-col" xid="col17">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="确定" xid="button5" style="font-size:16px;color:white;background-color:#7bc93d;margin-left: auto;margin-right: auto;width:50%;border-radius: 8px;    border-color: #57AD14;" onClick="denglu">
       <i xid="i6"></i>
       <span xid="span3">确定</span></a> </div> </div> </div> </div></div>