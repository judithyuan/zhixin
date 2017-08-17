<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:184px;left:125px;" onParamsReceive="modelParamsReceive" onActive="modelActive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="adrData" idColumn="id"><column name="name" type="String" xid="xid1"></column>
  <column name="num" type="String" xid="xid2"></column>
  <column name="addr" type="String" xid="xid3"></column>
  <column name="id" type="String" xid="xid4"></column>
  <column name="address" type="String" xid="xid15"></column>
  <column name="area_info" type="String" xid="xid16"></column>
  <column name="true_name" type="String" xid="xid17"></column>
  <column name="mob_phone" type="String" xid="xid18"></column>
  <data xid="default1">[{}]</data>
  <rule xid="rule1">
   <col name="mob_phone" xid="ruleCol1">
    <defaultValue xid="default2">
     <expr xid="default3"></expr></defaultValue> </col> </rule></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="orderData" onCustomRefresh="orderDataCustomRefresh"></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="storeData" idColumn="store_name"><column name="count_goods" type="String" xid="xid5"></column>
  <column name="store_name" type="String" xid="xid6"></column>
  <column name="store_id" type="String" xid="xid7"></column>
  <column name="freight" type="String" xid="xid8"></column>
  <column name="store_goods_total" type="String" xid="xid33"></column>
  <column name="freight_rule_text" type="String" xid="xid34"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="goodsData" idColumn="cart_id"><column name="cart_id" type="String" xid="xid9"></column>
  <column name="goods_id" type="String" xid="xid10"></column>
  <column name="goods_image_url" type="String" xid="xid11"></column>
  <column name="goods_name" type="String" xid="xid12"></column>
  <column name="store_name" type="String" xid="xid13"></column>
  <column name="goods_price" type="String" xid="xid14"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="chooseAdrData" onCustomRefresh="chooseAdrDataCustomRefresh" idColumn="address_id">
   <column name="address_id" type="String" xid="column4"></column>
   <column name="member_id" type="String" xid="column1"></column>
   <column name="true_name" type="String" xid="column2"></column>
   <column name="area_id" type="String" xid="column3"></column>
   <column name="city_id" type="String" xid="xid19"></column>
   <column name="loupan_id" type="String" xid="xid20"></column>
   <column name="area_info" type="String" xid="xid21"></column>
   <column name="address" type="String" xid="xid22"></column>
   <column name="tel_phone" type="String" xid="xid23"></column>
   <column name="mob_phone" type="String" xid="xid24"></column>
   <column name="is_default" type="String" xid="xid25"></column>
   <column name="dlyp_id" type="String" xid="xid26"></column>
   <column name="state" type="String" xid="xid27"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="yfInformationdata" idColumn="store_id" confirmRefresh="false" confirmDelete="false"><column name="store_id" type="String" xid="xid28"></column>
  <column name="count_goods" type="String" xid="xid29"></column>
  <column name="freight_rule_text" type="String" xid="xid30"></column>
  <column name="store_name" type="String" xid="xid31"></column>
  <column name="freight" type="String" xid="xid32"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="填写订单"
          class="x-titlebar top">
          <div class="x-titlebar-left top-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon left-btn" icon="icon-ios7-arrow-left"
              onClick='{"operation":"window.close"}' xid="backBtnoder"> 
              <i class="icon-ios7-arrow-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title" style="font-family:苹方 常规;font-weight: normal;">填写订单</div>  
          <div class="x-titlebar-right reverse top-right"> 
          <span xid="span7" class="pull-right" style="padding-right:0;">
   <span xid="span6" class="pull-right" style="position: relative;margin-top: 0px;">
    <img src="$UI/zhixin/img/bellh.png" alt="" xid="image7" height="20px" style="width:0.4rem;vertical-align:middle;"></img>
    <span xid="span98" class="ts" id="span98" style="display:none;"></span></span> </span></div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1" style="background-color:#eee;">
  <div component="$UI/system/components/justep/panel/panel" class="panel panel-default x-card" xid="panel11" style="border:none;box-shadow:none;height:1.64rem;background-color:#fff;margin-bottom:0px;padding:0;    position: relative;">
   <ul component="$UI/system/components/justep/list/list" class="x-list x-list-template" xid="list1" data="adrData">
    <li xid="li3" style="position:relative;">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="padding:0;padding-top:0.26rem;line-height:0.3rem;">
      <div class="x-col x-col-fixed" xid="col8" style="padding:0;width:60%;">
       <div component="$UI/system/components/justep/output/output" class="x-output" xid="outputname" style="font-size:0.3rem;float:left;color:#333333;padding:0;margin-left:0.69rem;vertical-align:middle;overflow:hidden;text-overflow: ellipsis;white-space: nowrap;width:100%;" bind-ref='ref("true_name")'></div></div> 
      <div class="x-col" xid="col11" style="padding:0;text-align: right;margin-right: 0.68rem;">
       <span xid="spanphone" style="color:#333;font-size:0.3rem;padding:0;" bind-text='val("mob_phone")'></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7" style="padding:0;margin-top:0.25rem;margin-bottom: 0.46rem;">
      <div class="x-col" xid="col8" style="padding:0;overflow: hidden;height:0.38rem;line-height:0.38rem;">
       <p xid="p9" style="height:0.38rem;line-height:0.38rem;margin:0.04rem 0 0 0.28rem;float:left;color:#999999;">
        <img src="$UI/zhixin/img/shop/dw.png" alt="" xid="image1" style="width:100%;max-width:0.25rem;float:left;max-height:0.35rem;"></img>
        <div component="$UI/system/components/justep/output/output" class="x-output" xid="outputaddr" style="margin:0 0 0 0.15rem;font-size:0.26rem;float:left;color:#999999;padding:0;max-width:80%;color:#999;padding-top:0.04rem;overflow:hidden;text-overflow: ellipsis;white-space: nowrap;width:100%;" bind-text='val("address")'></div></p> </div> 
      </div> 
  <div class="x-col x-col-fixed" xid="col2" style="padding:0;width:2em;position:absolute;top:0.65rem;right:0.3rem;" bind-click="col2Click">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right" label="button" xid="button3" style="padding:0;color:#999;font-size:0.4rem;" icon="icon-ios7-arrow-right">
    <i xid="i5" class="icon-ios7-arrow-right"></i>
    <span xid="span20"></span></a> </div></li> </ul> 
    
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="padding:0;">
    <div class="x-col" xid="col5" style="padding:0;">
     <img src="$UI/zhixin/img/shop/bac.png" alt="" xid="image8" style="max-height: 0.14rem;width:100%;position: absolute;top:1.53rem;"></img></div> </div> 
  <div xid="div9" style="background-color:#f0f0f0;position: absolute;top:1.64rem;"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1addrorder" data="chooseAdrData" style="display:none;">
    <ul class="x-list-template" xid="listTemplateUl1">
     <li xid="li1" style="padding:10px;" bind-click="li1Click">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row11">
       <div class="x-col x-col-fixed" xid="col20" style="width:auto;">
        <span component="$UI/system/components/justep/button/radio" class="x-radio" xid="radio1" name="num" checked="false" bind-value='ref("state")' checkedValue="1"></span></div> 
       <div class="x-col" xid="col17">
        <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="padding:0;">
         <div class="x-col" xid="col6" style="padding:0;">
          <div component="$UI/system/components/justep/output/output" class="x-output" xid="output1" style="font-weight:bold;line-height: 2em;margin:0 0 0 15px;font-size:16px;float:left;color:#333333;padding:0;max-height:2em;" bind-ref='ref("true_name")'></div></div> 
         <div class="x-col" xid="col9" style="padding:0;text-align: right;margin-right: 2em;">
          <span xid="span1" bind-text='val("mob_phone").replace(/^(\d{3})\d{4}(\d{4})$/, "$1****$2")' style="line-height: 2em;"></span></div> </div> 
        <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10" style="padding:0;margin-top: 2px;margin-bottom: 5px;">
         <div class="x-col" xid="col15" style="padding:0;">
          <p xid="p1" style="line-height: 2em;margin:0 0 0 15px;font-size:12px;float:left;color:#999999;">
           <div component="$UI/system/components/justep/output/output" class="x-output" xid="output3" style="line-height: 2em;margin:0 0 0 15px;font-size:14px;float:left;color:#999999;padding:0;max-height:2em;" bind-ref='ref("address")'></div></p> </div> </div> </div> </div> </li> </ul> </div></div></div><div xid="div8" style="background-color:#f0f0f0;height:0.2rem;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div><div component="$UI/system/components/justep/list/list" class="x-list" xid="list2storeData" style="background-color:#fff;" dataItemAlias="storeData" data="storeData">
   <ul class="x-list-template" xid="listTemplateUl2" style="margin-bottom:0px;">
    <li xid="li2"><div xid="div3" class="store" style="line-height:0.3rem;margin-left:0.3rem;"><img src="$UI/zhixin/img/shop/dp.png" alt="" xid="image4" style="height:0.3rem;margin-right:0.1rem;vertical-align:baseline;"></img>
  <span xid="span4" style="font-size: 0.3rem;color:#333;" bind-text='val("store_name")'><![CDATA[company]]></span></div><div xid="div4" style="height:1.56rem;border-bottom:1px solid #eee;margin-left:0.3rem;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col" xid="col10" style="padding:0.28rem 0 0.28rem;width:5rem;">
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list5" style="background-color:#fff;" data="goodsData" filter=' $row.val("store_name") == val("store_name")'>
   <ul class="x-list-template" xid="listTemplateUl5" style="margin-bottom:0px;white-space:nowrap; text-overflow:ellipsis;overflow:auto;">
    <li xid="li5" style="width:1rem;display:inline-block;margin-right:0.14rem;height:1rem;">
     
     <img src="$UI/zhixin/img/error.png" alt="" xid="image5" bind-attr-src=' val("goods_image_url")' style="width:100%;max-width:1rem;"></img></li> </ul> </div></div>
   <div class="x-col x-col-fixed" xid="col12" style="background-color:#eee; margin:0.1rem 0px;width:0.8rem;height:1.36rem;padding-left:0.08rem;"><span xid="span5" style="line-height:1.36rem;font-size:0.28rem;color:#666;" bind-text="val(&quot;count_goods&quot;)+'件'"><![CDATA[count_goods]]></span></div></div></div>
  <div xid="div8yun" style="padding:0;background-color:#fff;padding-top:0.36rem;margin-left:0.3rem;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row12" style="font-size:0.3rem;color:#333;">
    <div class="x-col" xid="col16">
     <span xid="span26">商品金额</span></div> 
    <div class="x-col" xid="col18" style="padding-right:0.3rem;">
     <span xid="span25" class="pull-right" bind-text="'￥'+val(&quot;store_goods_total&quot;)" style="font-weight:bold;">￥0</span></div> </div> 
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="margin-bottom:0.26rem;margin-top:0.1rem;">
    <div class="x-col" xid="col14">
     <span xid="span22" style="font-size:0.3rem;">运费</span></div> 
    <div class="x-col" xid="col13" style="color:#999;padding-right:0.3rem;">
     <span xid="span23" bind-text="'+￥'+val(&quot;freight&quot;)" style="font-size:0.3rem;font-weight:bold;" class="pull-right"><![CDATA[￥00.00]]></span><div component="$UI/system/components/justep/row/row" class="x-row" xid="row13">
    <div class="x-col" xid="col25" bind-click="col25Click">
     <span xid="span21" class="pull-right" style="font-size:0.26rem;"><![CDATA[运费说明]]></span>
  <img src="$UI/zhixin/img/wyfw/wyjg.png" alt="" xid="image3" style="width:0.3rem;vertical-align:baseline;margin-right:0.1rem;" class="pull-right"></img></div> </div></div> </div> 
    </div><div class="panel-heading" xid="div6" style="border-radius:3px;background-color:#fff;display:none;">
   <div class="media-left media-middle" xid="mediaLeft1" style="padding-right:0px;">
    <span class="x-flex text-font" style="width:74px;color:#333;" xid="span24">买家留言：</span></div> 
   <div class="media-body" xid="mediaBody1">
    <textarea component="$UI/system/components/justep/textarea/textarea" class="form-control" xid="123" onChange="inputd2Change" placeHolder="请输入不大于200字留言"></textarea></div> </div>
  <div xid="div21" style="background-color:#f0f0f0;height:0.2rem;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div></li></ul> </div>
  
  <div xid="div17" style="height:1rem;background-color:#fff;padding-left:0.3rem;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row15" style="height:1rem;line-height:1rem;">
    <span xid="span28" style="color:#333;font-size:0.3rem;">买家留言：</span>
    <div class="x-col" xid="col33">
     <textarea component="$UI/system/components/justep/textarea/textarea" name="liuyan" class="form-control" xid="liuyan" onChange="inputd2Change" placeHolder="对本次交易的说明（限120字内）" style="font-size:0.3rem;border:none;box-shadow:none;max-height:0.4rem;margin-top:0.3rem;line-height:0.4rem;"></textarea></div> </div> </div><div xid="div28" style="background-color:#f0f0f0;height:0.2rem;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div><div xid="div3redB" style="background-color:#fff;padding-left:0.3rem;position:relative;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row16" style="height:1rem;align-items:center;">
    <div class="x-col x-col-fixed" xid="col30" style="width:0.9rem;"></div>
    <div class="x-col x-col-fixed" xid="col30" style="margin-left:0.2rem;width:0.5rem;margin-right:0.3rem;">
     <img src="$UI/zhixin/img/wyfw/redBIcon.png" alt="" xid="image11" style="width:0.5rem;"></img></div> 
    <div class="x-col x-col-fixed" xid="col29">
     <h4 xid="h41" style="color:#333333;position:relative;display:inline-block;font-size:0.3rem;">红包抵扣</h4>
     <input component="$UI/system/components/justep/input/input" class="form-control" xid="inputSredMoney" style="width:30%;display:inline-block;margin-left:0.1rem;    box-shadow: none;height:23px;" bind-ref="redBshowS" onBlur="inputSredMoneyBlur" bind-keyup="inputSredMoneyKeyup"></input>
     <span xid="span30" style="color:#666;margin-right:0.3rem;" class="pull-right" bind-text="redBmoneyS"><![CDATA[0.00]]></span>
     <span xid="span43" class="pull-right" style="color:#666;">余额：</span></div> </div> 
   <img src="$UI/zhixin/img/wyfw/choosed.png" alt="" xid="image3choose" style="position:absolute;top:0;left:0;width:0.8rem;height:0.8rem;"></img>
   <span xid="span3choose" style="position:absolute;top:0;left:0;width:0.8rem;height:100%;" bind-click="span3chooseClick"></span></div><div xid="div19" style="background-color:#f0f0f0;height:0.2rem;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div><div xid="div10" style="padding-left:0.3rem;padding-right:0.3rem;border-bottom:1px solid #eee;background-color:#fff;padding-top:0.44rem;padding-bottom:0.44rem;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row8" style="font-size:0.3rem;color:#333;">
   <div class="x-col" xid="col19"><span xid="span11"><![CDATA[商品金额]]></span></div>
   <div class="x-col" xid="col21" style="color:#333;"><span xid="span12" class="pull-right" bind-text="spje" style="font-weight:bold;"><![CDATA[￥0]]></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9" style="margin-top:0.3rem;">
   <div class="x-col" xid="col22">
    <span xid="span14" style="font-size:0.3rem;"><![CDATA[运费]]></span></div> 
   <div class="x-col" xid="col23" style="color:#333;">
    <span xid="span13" class="pull-right" bind-text="yfje" style="font-size:0.3rem;font-weight:bold;color:#ff9900;"><![CDATA[0.00]]></span>
  <span xid="span15" class="pull-right" style="font-size:0.3rem;font-weight:bold;color:#ff9900;"><![CDATA[]]></span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3order" bind-visible="freeOrderdesc!=''" style="display:block;margin-top:0.3rem;">
   <div class="x-col" xid="col4">
    <span xid="span8" style="font-size:0.3rem;color:#333;"><![CDATA[优惠]]></span>
    <span xid="span9" class="pull-right" bind-text="freeOrder" style="color:#ff9900;font-size:0.3rem;font-weight:bold;"><![CDATA[-￥0]]></span>
  </div> </div></div>
  <div xid="div20" style="background-color:#f0f0f0;height:0.2rem;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div>
  </div>
  <div xid="divYfinformation" style="bottom:0;height:100%;width:100%;position:fixed;background-color:rgba(0, 0, 0, 0.18);z-index:20;display:none;">
   <div xid="infomationBox" style="position:absolute;bottom:0px;width:100%;height:60%;background-color:#FFFFFF;">
    <div xid="div23yfTitle" style="color:#333;background-color:#fff;height:48px;"><span xid="span44" style="display:block;font-size:0.36rem;line-height:48px;text-align:center;"><![CDATA[运费说明]]></span></div><div component="$UI/system/components/justep/list/list" class="x-list" xid="list4output2yfinformation" data="yfInformationdata">
     <ul class="x-list-template" xid="listTemplateUl4">
      <li xid="li6" class="x-min-height x-panel-content">
       <div component="$UI/system/components/justep/output/output" class="x-output" xid="output2yfinformation" bind-html=' val("freight_rule_text")' style="margin: 0 0.4rem;"></div></li> </ul> </div> 
    <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="我知道了" xid="button1" style="position:absolute;bottom:0px;background-color:#7bc93d;font-size: 0.36rem;border-radius: 0;border:none;height:0.9rem;" onClick="button1Click">
     <i xid="i1"></i>
     <span xid="span10">我知道了</span></a> 
  </div> </div><div class="x-panel-bottom" xid="bottom1" style="border-top:1px solid #ddd;background-color:#fff;">
   <div class="clearfix" xid="div14">
    <div class="col col-xs-8" xid="col7" style="height:0.98rem;line-height:0.98rem;padding:0;margin:0;text-align:right;padding-right:0.2rem;">
     <div class="text-right" xid="div12">
      <span xid="span19" style="color:#ff3333;font-size:0.3rem;">实际支付:</span>
      <span xid="span17" style="color:#ff3333;    font-size:0.2rem;">￥</span>
      <span xid="span18" id="span18" style="color:#ff3333;font-size:0.4rem;font-weight:6rem;" bind-text="ddje">0</span></div> </div> 
    <div class="col col-xs-4 tb-settlement" xid="div13" style="background-color:#7bc83e;">
     <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup1">
      <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="提交订单" xid="confirmBtn" style="height:0.98rem;line-height:0.98rem;border:none;border-radius: 0;background-color:#7bc83e;font-size:0.36rem;padding:0;box-shadow:none;" onClick="confirmBtnClick">
       <i xid="i2"></i>
       <span xid="span17">提交订单</span></a> </div> </div> </div> </div>
  </div> 
<div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="livelineOver" dismissible="false">
   <div class="x-popOver-overlay" xid="div2"></div>
   <div class="x-popOver-content" xid="div5" style="margin-left:-150px;margin-top:-150px;">
    <img src="$UI/zhixin/img/gameover.png" alt="" xid="image2" style="width:300px;"></img>
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="position: absolute;bottom:10px;">
     <div class="x-col" xid="col1">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="确定" xid="button5" style="font-size:16px;color:white;background-color:#7bc93d;margin-left: auto;margin-right: auto;width:50%;border-radius: 8px;    border-color: #57AD14;" onClick="denglu">
       <i xid="i3"></i>
       <span xid="span2">确定</span></a> </div> </div> </div> </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="ykrzpopOverorder" style="display:none;">
   <div class="x-popOver-overlay" xid="div26" style="background-color:black;"></div>
   <div class="x-popOver-content" xid="div26" style="height:8.6rem;margin-left:-3.2rem;margin-top:-4.3rem;padding-top:0.8rem;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="button2" style="font-size:16px;color:#7bc93d;    position: absolute;right: 0;z-index:20;height:0.5rem;width:0.5rem;top:0;" onClick="button6Clickcancle">
     <i xid="i4"></i>
     <span xid="span33"></span></a> 
    <img src="$UI/zhixin/img/main/x.png" alt="" xid="image27" style="position:absolute;right:0;top:0;height:0.5rem"></img>
    <img src="$UI/zhixin/img/main/rzfw.png" alt="" xid="image28" style="width:6.4rem;"></img>
    <div xid="div11" style="width:6.4rem;height:3rem;padding-top:0.8rem;">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row18">
      <div class="x-col" xid="col27">
       <span xid="span31" style="width:100%;text-align:center;color:#999;font-size:0.28rem;" class="center-block"><![CDATA[请添加收货地址后再购买！]]></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row18" style="margin-top:0.2rem;">
      <div class="x-col" xid="col3">
       <span xid="span16" style="width:100%;text-align:center;color:#999;font-size:0.28rem;" class="center-block"></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row14" style="margin-top:0.2rem;">
      <div class="x-col" xid="col24">
       <span xid="span27" style="width:100%;text-align:center;color:#999;font-size:0.28rem;" class="center-block"></span></div> </div> </div> 
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row20" style="position: absolute;bottom:0.3rem;">
     <div class="x-col" xid="col26" style="position:relative;">
      <img src="$UI/zhixin/img/main/button.png" alt="" xid="image6" style="width:4.6rem;height:1.6rem;margin-left:0.9rem;"></img>
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="添加收货地址" xid="button10" style="font-size:0.3rem;color:#fff;background-color:transparent;margin-left:auto;margin-right:auto;width:4.6rem;position:absolute;top:0;left:0.9rem;height:1rem;top:0.2rem;line-height:1rem;font-weight:bold;" onClick="button7Clicklikerenz">
       <i xid="i4"></i>
       <span xid="span34">添加收货地址</span></a> </div> </div> 
    <div xid="div18" style="height:7.6rem;background-color:#fff;position:absolute;top:1rem;left:0;width:6.4rem;z-index:-1;"></div></div> </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="xzdzpopOver" style="display:none;">
   <div class="x-popOver-overlay" xid="div23zzc" style="background-color:black;" bind-click="div23zzcClick"></div>
   <div class="x-popOver-content" xid="div24" style="background-color:#fff;width:100%;margin-top:-50%;margin-left:-40%;width:80%;border-radius:10px;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row19" style="margin-top:0.3rem;padding-left:0.3rem;font-size:0.3rem;">
   <div class="x-col" xid="col35"><span xid="span32" style="font-weight:bold;"><![CDATA[您的收货地址暂不支持及时达]]></span></div><div class="x-col x-col-fixed" xid="col31" style="width:0.5rem;font-size:0.36rem;padding-right:0.3rem;"><img src="$UI/zhixin/img/shop/close.png" alt="" xid="image9" style="width:0.4rem;height:0.4rem;" class="pull-right" bind-click="image9Click"></img></div></div>
  <div xid="div22" style="height:0.1rem;margin-top:0.2rem;"><img src="$UI/zhixin/img/shop/bac.png" alt="" xid="image10" style="height: 0.1rem;width:100%;"></img></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row21" style="margin-top:0.5rem;font-size:0.3rem;">
   <div class="x-col x-col-fixed" xid="col36" style="width:0.3rem;"></div>
   <div class="x-col" xid="col37"><span component="$UI/system/components/justep/button/radio" class="x-radio" xid="radio2" checked="false" disabled="true"></span>
  <span xid="span35"><![CDATA[及时达商品（不支持）]]></span>
  <div xid="div25" style="margin-left:0.5rem;"><span xid="span36" bind-text="is_nointime_count"><![CDATA[2]]></span>
  <span xid="span37"><![CDATA[件商品]]></span></div></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row22" style="margin-top:0.3rem;">
   <div class="x-col x-col-fixed" xid="col40" style="width:0.3rem;"></div>
   <div class="x-col" xid="col39">
    <span component="$UI/system/components/justep/button/radio" class="x-radio" xid="radio3" bind-click="radio3Click" bind-value="1" style="position:relative;width:0.45rem;height:0.45rem;"><span xid="span29" style="position:absolute;top:0;left:0;z-index:10;display:none;" class="myradio"></span></span>
    <span xid="span39"><![CDATA[其他商品（支持）]]></span>
    <div xid="div27" style="margin-left:0.5rem;">
     <span xid="span38" bind-text="is_intime_count">2</span>
     <span xid="span40">件商品</span></div> 
  </div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row23" style="margin-top:0.3rem;">
   <div class="x-col" xid="col41"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block center-block" label="修改收货地址" xid="button4xg" style="color:#333;border:1px solid #eee;height:1rem;line-height:1rem;" onClick="col2Click">
   <i xid="i6"></i>
   <span xid="span41">修改收货地址</span></a></div>
   <div class="x-col" xid="col43"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block center-block" label="去结算" xid="button6js" style="background-color:#e3e3e3;color:#fff;border:1px solid #eee;height:1rem;line-height:1rem;" onClick="jiesuanClick">
   <i xid="i7"></i>
   <span xid="span42">去结算</span></a></div></div>
  </div></div></div>