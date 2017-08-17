<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:501px;left:257px;" onParamsReceive="modelParamsReceive" onActive="modelActive" onInactive="modelInactive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="payDta" idColumn="state"><column name="state" type="String" xid="xid1"></column>
  <column name="payment" type="String" xid="xid2"></column>
  <data xid="default1">[{&quot;payment&quot;:&quot;钱包余额&quot;},{&quot;payment&quot;:&quot;天府支付&quot;},{&quot;payment&quot;:&quot;微信支付&quot;},{&quot;payment&quot;:&quot;支付宝支付&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="zfData" idColumn="id" onCustomRefresh="zfDataCustomRefresh" confirmRefresh="false">
   <column name="id" type="String" xid="column1"></column>
  <column label="图片地址" name="image" type="String" xid="column2"></column>
  <column label="方式" name="payment_name" type="String" xid="xid3"></column>
  <column label="说明" name="explain" type="String" xid="xid4"></column>
  <column label="状态" name="state" type="String" xid="xid5"></column>
  <column label="优惠" name="yh" type="String" xid="xid6"></column>
  <data xid="default2">[{&quot;id&quot;:&quot;1&quot;,&quot;url&quot;:&quot;/x5/UI2/v_ce7c5193286b4b719edccd0f0d48ca0fl_zh_CNs_d_m/zhixin/img/bmfwImg/pander.png&quot;,&quot;fs&quot;:&quot;天府支付&quot;,&quot;sm&quot;:&quot;支付方式由天府支付提供，无需开通网银&quot;,&quot;zt&quot;:&quot;&quot;,&quot;yh&quot;:&quot;使用南商行银行卡立减十元&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;url&quot;:&quot;/x5/UI2/v_ce7c5193286b4b719edccd0f0d48ca0fl_zh_CNs_d_m/zhixin/img/bmfwImg/right.png&quot;,&quot;fs&quot;:&quot;微信支付&quot;,&quot;zt&quot;:&quot;&quot;},{&quot;id&quot;:&quot;3&quot;,&quot;url&quot;:&quot;/x5/UI2/v_ce7c5193286b4b719edccd0f0d48ca0fl_zh_CNs_d_m/zhixin/img/bmfwImg/alipay.png&quot;,&quot;fs&quot;:&quot;支付宝支付&quot;,&quot;zt&quot;:&quot;&quot;}]</data>
  <column name="payment_code" type="String" xid="xid7"></column>
  <column name="discount" type="String" xid="xid8"></column>
  <column name="text" type="String" xid="xid9"></column>
  <column name="top_right" type="String" xid="xid10"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="data" idColumn="url" confirmRefresh="false">
   <column name="url" type="String" xid="column3"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="订单支付"
          class="x-titlebar top">
          <div class="x-titlebar-left top-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon left-btn" icon="icon-ios7-arrow-left"
              onClick="backBtnClick" xid="backBtn"> 
              <i class="icon-ios7-arrow-left" style="font-size:0.6rem;"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title" style="font-weight:normal;font-size:0.36rem;">订单支付</div>  
          <div class="x-titlebar-right reverse top-right"> 
          <span xid="span9" bind-click="span9Click" style="position:relative;">
   <img src="$UI/zhixin/img/bellh.png" alt="" xid="image21" style="width:0.4rem;vertical-align:middle;"></img>
   <span xid="span9xiaohondian" class="ts" id="span99" style="display:none;"></span></span></div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1" style="background-color:#eee;"><div xid="div1" style="padding:0.2rem 0.3rem;background-color:#fff;margin-bottom:0.2rem;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col2" style="color:#333;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="line-height:0.5rem;">
   <div class="x-col" xid="col5"><span xid="span1"><![CDATA[订单类型：]]></span><span xid="span2"><![CDATA[商城订单]]></span></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="line-height:0.5rem;">
   <div class="x-col" xid="col8"><span xid="span3"><![CDATA[订单金额：]]></span><span xid="span10" style="font-weight:bold;color:#ff3333;"><![CDATA[￥]]></span><span xid="span4" bind-text="money" style="font-weight:bold;color:#ff3333;"><![CDATA[￥0]]></span>
  </div>
   </div></div>
   <div class="x-col x-col-fixed" xid="col3" style="width:auto;line-height:48px;display:none;" bind-click="col3Click"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button2" icon="icon-ios7-arrow-right" style="line-height:1rem;">
   <i xid="i4" class="icon-ios7-arrow-right" style='font-size:0.4rem;color:#999999;'></i>
   <span xid="span8"></span></a></div></div></div>
  <div xid="OrderPay" style="background-color:#fff;"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="zfData" style="padding-left:0.3rem;">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" bind-click="li1Click" bind-visible=' val("image") !=undefined' class="noborder">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="height:1rem;border-bottom:1px solid #e3e3e3;align-items:center;">
      <div class="x-col x-col-10" xid="col11" style="width:0.9rem;">
       <span component="$UI/system/components/justep/button/radio" class="x-radio" xid="radio2" style="font-size:0.3rem;" bind-value='ref("state")' bind-click="radio2Click" checked="false" name="num"></span></div><div class="x-col x-col-fixed" xid="col12" style="margin-left:0.2rem;width:0.5rem;margin-right:0.3rem;">
       <img src="$UI/zhixin/img/bmfwImg/pander.png" alt="" xid="image3" style="width:0.5rem;" bind-attr-src=' val("image")'></img></div> 
      <div class="x-col" xid="col10" style="position:relative;">
       <h4 xid="h42" style="color:#333333;position:relative;display:inline-block;font-size:0.3rem;" bind-text='val("payment_name")' bind-css='{"shuomingyes":val("explain") =="","shuomingno": val("explain") !=""}'>天府支付</h4>
       <span xid="span6" style="color:#f99d0e;font-size:0.2rem;display:block;" bind-text='val("explain")'>支付服务由天府支付提供，无需开通网银</span>
  <p xid="p1" class="zhekouorder" bind-text='  val("top_right")'><![CDATA[98折]]></p></div> 
       </div> 
  </li> </ul> </div></div>
  </div>
  <div class="x-panel-bottom" xid="bottom1" style="border-top:1px solid #ddd;background-color:#fff;">
   <div class="clearfix" xid="div14" style="line-height:0.98rem;height:0.98rem;">
     
    <div class="pull-right col col-xs-4 tb-settlement" xid="div13" style="background-color:#7bc83e;width:2.34rem;height:0.98rem;">
     <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group" tabbed="true" xid="buttonGroup1" style="font-size:0.36rem;">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-lg btn-only-label " label="立即支付" xid="confirmBtn" style="color:#fff;background-color:#7bc83e;font-size:0.36rem;" onClick="confirmBtnClick">
       <i xid="i2"></i>
       <span xid="span17" style="color:#fff;">立即支付</span></a> </div> </div> <div xid="col7" style="color:#333; line-height:0.98rem;height:0.98rem;" class="pull-right">
     <div xid="div12" style="margin-right:0.14rem;">
      <span xid="span19"><![CDATA[实付金额：]]></span>
      <span xid="span17" style="color:#ff3333;font-size:0.22rem;"><![CDATA[￥]]></span>
      <span xid="span18" id="span18" style="color:#ff3333;font-size:0.4rem;" bind-text="money"><![CDATA[]]></span></div> </div></div> </div></div> 
<iframe frameborder="0" src="" id="iframe1" xid="iframeyh" bind-attr-src='$model.data.val("url")' style="top:0;z-index: 10;display:none;position:absolute;background-color:white;" width="100%" height="100%"></iframe>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="livelineOver" dismissible="false">
   <div class="x-popOver-overlay" xid="div3"></div>
   <div class="x-popOver-content" xid="div5" style="margin-left:-150px;margin-top:-150px;">
    <img src="$UI/zhixin/img/gameover.png" alt="" xid="image5" style="width:300px;"></img>
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="position: absolute;bottom:10px;">
     <div class="x-col" xid="col17">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="确定" xid="button5" style="font-size:16px;color:white;background-color:#7bc93d;margin-left: auto;margin-right: auto;width:50%;border-radius: 8px;    border-color: #57AD14;" onClick="denglu">
       <i xid="i3"></i>
       <span xid="span7">确定</span></a> </div> </div> </div> </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="Overlineerror" dismissible="false">
   <div class="x-popOver-overlay" xid="div6"></div>
   <div class="x-popOver-content" xid="div4" style="margin-left:-150px;margin-top:-150px;">
    <img src="$UI/zhixin/img/error.png" alt="" xid="image1" style="width:300px;"></img>
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="position: absolute;bottom:10px;">
     <div class="x-col" xid="col1">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="确定" xid="button1" style="font-size:16px;color:white;background-color:#7bc93d;margin-left: auto;margin-right: auto;width:50%;border-radius: 8px;    border-color: #57AD14;" onClick="denglu">
       <i xid="i1"></i>
       <span xid="span5">确定</span></a> </div> </div> </div> </div>
  </div>