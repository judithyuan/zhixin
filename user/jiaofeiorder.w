<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:317px;left:337px;" onParamsReceive="modelParamsReceive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="allData" idColumn="id" onCustomRefresh="allDataCustomRefresh">
   <column name="id" type="String" xid="xid1"></column>
  <column label="金额" name="money" type="String" xid="xid2"></column>
  <column label="缴费月份" name="jiaofei" type="String" xid="xid3"></column>
  <column label="交易时间" name="add_time" type="String" xid="xid4"></column>
  <column label="订单号" name="pay_sn" type="String" xid="xid5"></column>
  <data xid="default1">[{&quot;id&quot;:&quot;1&quot;,&quot;money&quot;:&quot;200&quot;,&quot;time&quot;:&quot;2016/06/05-2016/09&quot;,&quot;jiaoyitime&quot;:&quot;2016-10-01&quot;,&quot;number&quot;:&quot;10121212151&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;money&quot;:&quot;300&quot;,&quot;time&quot;:&quot;2016/06/05-2016/09&quot;,&quot;jiaoyitime&quot;:&quot;2016-10-02&quot;,&quot;number&quot;:&quot;1032551512112&quot;}]</data>
  <column label="实际支付金额" name="shijian_money" type="String" xid="xid10"></column>
  <column label="pay_sts" name="pay_sts" type="String" xid="xid11"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="tcfData" idColumn="id" onCustomRefresh="tcfDataCustomRefresh">
   <column name="id" type="String" xid="default12"></column>
  <column name="money" type="String" xid="default13"></column>
  <column label="支付时间" name="add_time" type="String" xid="default8"></column>
  <column label="金额" name="amount" type="String" xid="default9"></column>
  <column name="pay_sn" type="String" xid="default10"></column>
  <data xid="default11">[{&quot;id&quot;:&quot;1&quot;,&quot;money&quot;:&quot;323&quot;,&quot;time&quot;:&quot;2016/06/05-2016/09&quot;,&quot;jiaoyitime&quot;:&quot;2016-10-01&quot;,&quot;number&quot;:&quot;6565464563&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;money&quot;:&quot;300&quot;,&quot;time&quot;:&quot;2016/06/05-2016/09&quot;,&quot;jiaoyitime&quot;:&quot;2016-10-02&quot;,&quot;number&quot;:&quot;1032551512112&quot;}]</data>
  <column label="开始时间" name="starttimeFormat" type="String" xid="xid6"></column>
  <column label="结束时间" name="endtimeFormat" type="String" xid="xid7"></column>
  <column label="交易时间" name="paytimeFormat" type="String" xid="xid8"></column>
  <column name="shijian_money" type="String" xid="xid12"></column>
  <column name="pay_sts" type="String" xid="xid13"></column>
  <column label="shuifei" name="shuifei" type="String" xid="xid18"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="sfData" idColumn="id" onCustomRefresh="sfDataCustomRefresh">
   <column name="id" type="String" xid="column1"></column>
  <column label="金额" name="money" type="String" xid="column2"></column>
  <column label="缴费月份" name="jiaofei" type="String" xid="column3"></column>
  <column label="交易时间" name="add_time" type="String" xid="column4"></column>
  <column label="订单号" name="pay_sn" type="String" xid="column5"></column>
  <data xid="default2">[{&quot;id&quot;:&quot;1&quot;,&quot;money&quot;:&quot;200&quot;,&quot;jiaofei&quot;:&quot;2016-10-2016-12&quot;,&quot;add_time&quot;:&quot;3：00&quot;,&quot;pay_sn&quot;:&quot;123456&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;money&quot;:&quot;300&quot;,&quot;jiaofei&quot;:&quot;2016-08-2016-11&quot;,&quot;add_time&quot;:&quot;5：00&quot;,&quot;pay_sn&quot;:&quot;456123&quot;}]</data>
  <column name="shuifei" type="String" xid="xid9"></column>
  <column name="shijian_money" type="String" xid="xid14"></column>
  <column name="pay_sts" type="String" xid="xid15"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="lajiData" idColumn="id" onCustomRefresh="lajiDataCustomRefresh">
   <column name="id" type="String" xid="column6"></column>
  <column label="金额" name="money" type="String" xid="column10"></column>
  <column label="缴费月份" name="jiaofei" type="String" xid="column9"></column>
  <column label="交易时间" name="add_time" type="String" xid="column8"></column>
  <column label="订单号" name="pay_sn" type="String" xid="column7"></column>
  <data xid="default3">[{&quot;id&quot;:&quot;1&quot;,&quot;money&quot;:&quot;200&quot;,&quot;jiaofei&quot;:&quot;2016-10-2016-12&quot;,&quot;add_time&quot;:&quot;3：00&quot;,&quot;pay_sn&quot;:&quot;123456&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;money&quot;:&quot;300&quot;,&quot;jiaofei&quot;:&quot;2016-08-2016-11&quot;,&quot;add_time&quot;:&quot;5：00&quot;,&quot;pay_sn&quot;:&quot;456123&quot;}]</data>
  <column name="shuifei" type="String" xid="column11"></column>
  <column name="shijian_money" type="String" xid="xid16"></column>
  <column name="pay_sts" type="String" xid="xid17"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="dianfeiData" idColumn="id" onCustomRefresh="dianfeiDataCustomRefresh">
   <column name="id" type="String" xid="column19"></column>
   <column label="金额" name="money" type="String" xid="column13"></column>
   <column label="缴费月份" name="jiaofei" type="String" xid="column16"></column>
   <column label="交易时间" name="add_time" type="String" xid="column17"></column>
   <column label="订单号" name="pay_sn" type="String" xid="column18"></column>
   <data xid="default4">[{&quot;id&quot;:&quot;1&quot;,&quot;money&quot;:&quot;200&quot;,&quot;jiaofei&quot;:&quot;2016-10-2016-12&quot;,&quot;add_time&quot;:&quot;3：00&quot;,&quot;pay_sn&quot;:&quot;123456&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;money&quot;:&quot;300&quot;,&quot;jiaofei&quot;:&quot;2016-08-2016-11&quot;,&quot;add_time&quot;:&quot;5：00&quot;,&quot;pay_sn&quot;:&quot;456123&quot;}]</data>
   <column name="shuifei" type="String" xid="column12"></column>
   <column name="shijian_money" type="String" xid="column14"></column>
   <column name="pay_sts" type="String" xid="column15"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="qifeiData" idColumn="id" onCustomRefresh="qifeiDataCustomRefresh">
   <column name="id" type="String" xid="column21"></column>
   <column label="金额" name="money" type="String" xid="column27"></column>
   <column label="缴费月份" name="jiaofei" type="String" xid="column24"></column>
   <column label="交易时间" name="add_time" type="String" xid="column23"></column>
   <column label="订单号" name="pay_sn" type="String" xid="column22"></column>
   <data xid="default5">[{&quot;id&quot;:&quot;1&quot;,&quot;money&quot;:&quot;200&quot;,&quot;jiaofei&quot;:&quot;2016-10-2016-12&quot;,&quot;add_time&quot;:&quot;3：00&quot;,&quot;pay_sn&quot;:&quot;123456&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;money&quot;:&quot;300&quot;,&quot;jiaofei&quot;:&quot;2016-08-2016-11&quot;,&quot;add_time&quot;:&quot;5：00&quot;,&quot;pay_sn&quot;:&quot;456123&quot;}]</data>
   <column name="shuifei" type="String" xid="column20"></column>
   <column name="shijian_money" type="String" xid="column26"></column>
   <column name="pay_sts" type="String" xid="column25"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="物业缴费"
          class="x-titlebar top">
          <div class="x-titlebar-left top-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon left-btn" icon="icon-ios7-arrow-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-ios7-arrow-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">物业缴费</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div component="$UI/system/components/bootstrap/tabs/tabs" xid="tabs1">
   <ul class="nav nav-tabs" xid="ul4" style="color:#999;font-size:0.3rem;">
    <li class="active" xid="li8" style="text-align:center;width:16.6%;">
     <a content="qbContent" xid="tabItem7"><![CDATA[物业费]]></a></li> 
    <li role="presentation" xid="li9" style="width:16.6%;text-align:center;">
     <a content="sfContent" xid="tabItem8water"><![CDATA[水费]]></a></li> 
    <li role="presentation" xid="li10" style="width:16.6%;text-align:center;">
     <a content="ljfContent" xid="tabItem1ljfnew"><![CDATA[垃圾费]]></a></li> 
     <li role="presentation" xid="li11" style="width:16.6%;text-align:center;">
   <a content="tcfContent" xid="tabItem8tcjf"><![CDATA[停车费]]></a></li>
  <li role="presentation" xid="li4" style="width:16.6%;text-align:center;">
   <a content="dfContent" xid="tabItem2dianfei"><![CDATA[电费]]></a></li>
  <li role="presentation" xid="li7" style="width:16.6%;text-align:center;">
   <a content="qfContent" xid="tabItem3qifei"><![CDATA[气费]]></a></li></ul> 
   <div class="tab-content" xid="div8">
    <div class="tab-pane active" xid="qbContent">
     <div xid="div7" style="height:0.2rem;background-color:#f0f0f0;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div><div xid="div3" style="display:none;text-align:center;width:100%;">
   <img src="$UI/zhixin/img/none.png" alt="" xid="image1" style="width: 30%;margin-top: 30%;" height="100%"></img></div><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="allData">
      <ul class="x-list-template" xid="listTemplateUl1">
       <li xid="li1" style="background-color:white;padding:0;">
        <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
         <div class="x-col orderNum" xid="col1" style="height:0.8rem;color:#333;font-size:0.3rem;">
          <span xid="span2" style="line-height:0.8rem;">订单号</span>
          <span xid="span3" class="pull-right" bind-text='val("pay_sn")' style="line-height:0.8rem;font-size:0.26rem;"><![CDATA[]]></span></div> </div> 
        <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="margin-top:0.32rem;">
         <div class="x-col col-content" xid="col4" style="color:#333;font-size:0.26rem;">
          <span xid="span4"><![CDATA[缴费金额]]></span>
          <span xid="span5" class="pull-right" bind-text='val("money")+"元"' style="color:#7bc83e;"><![CDATA[]]></span></div> </div> 
        <div component="$UI/system/components/justep/row/row" class="x-row" xid="row17" style="margin-top:0.2rem;">
   <div class="x-col col-content" xid="col19" style="color:#333;font-size:0.26rem;">
    <span xid="span33"><![CDATA[优惠金额]]></span>
    <span xid="span34" class="pull-right" bind-text='val("shijian_money")+"元"' style="color:#999;"></span></div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row18" style="margin-top:0.2rem;">
   <div class="x-col col-content" xid="col20" style="color:#333;font-size:0.26rem;">
    <span xid="span36"><![CDATA[支付方式]]></span>
    <span xid="span35" class="pull-right" bind-text='val("pay_sts")' style="color:#999;"></span></div> </div>
<!--     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="padding:0 10px 0 10px;margin-top:10px;padding-left:20px;padding-right:20px;"> -->
<!--          <div class="x-col" xid="col7" style="padding:0;"> -->
<!--           <span xid="span6"><![CDATA[有效日期]]></span> -->
<!--           <span xid="span7" class="pull-right" bind-text='val("jiaofei")'><![CDATA[]]></span></div> </div>  -->
        <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row4" style="margin-top:0.2rem;margin-bottom:0.32rem;">
         <div class="x-col" xid="col8" style="padding:0;color:#333;font-size:0.26rem;">
          <span xid="span8"><![CDATA[交易时间]]></span>
          <span xid="span9" class="pull-right" bind-text='val("add_time")' style="color:#999;"><![CDATA[]]></span></div> </div> 
        
        
        
        <div xid="div9" style="height:0.2rem;background-color:#f0f0f0;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div></li> </ul> 
  </div> 
  </div> 
    <div class="tab-pane" xid="sfContent">
     <div xid="div10" style="height:0.2rem;background-color:#f0f0f0;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div><div xid="div1" style="display:none;text-align: center;width: 100%;">
   <img src="$UI/zhixin/img/none.png" alt="" xid="image2" style="width: 30%;margin-top: 30%;" height="100%"></img></div><div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="sfData">
      <ul class="x-list-template" xid="listTemplateUl2">
       <li xid="li2" style="background-color:white;">
        
        
        
        
        
        
        
        <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   <div class="x-col orderNum" xid="col6" style="height:0.8rem;color:#333;font-size:0.3rem;">
    <span xid="span1" style="line-height:0.8rem;">订单号</span>
    <span xid="span10" class="pull-right" bind-text='val("pay_sn")' style="line-height:0.8rem;font-size:0.26rem;"><![CDATA[]]></span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row7" style="margin-top:0.32rem;">
   <div class="x-col" xid="col5" style="padding:0;color:#333;font-size:0.26rem;">
    <span xid="span11">缴费金额</span>
    <span xid="span12" class="pull-right" bind-text='val("money")+"元"' style="color:#7bc83e;">200</span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row19" style="margin-top:0.2rem;">
   <div class="x-col" xid="col22" style="padding:0;color:#333;font-size:0.26rem;">
    <span xid="span40">优惠金额</span>
    <span xid="span39" class="pull-right" bind-text='val("shijian_money")+"元"' style="color:#999;"></span></div> </div><div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row20" style="margin-top:0.2rem;">
   <div class="x-col" xid="col21" style="padding:0;color:#333;font-size:0.26rem;">
    <span xid="span37">支付方式</span>
    <span xid="span38" class="pull-right" bind-text='val("pay_sts")' style="color:#999;"></span></div> </div><div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row6" style="margin-top:0.2rem;">
   <div class="x-col" xid="col3" style="padding:0;color:#333;font-size:0.26rem;">
    <span xid="span13"><![CDATA[有效日期]]></span>
    <span xid="span14" class="pull-right" bind-text='val("shuifei")' style="color:#999;">2016/06/06-2016/09</span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row8" style="margin-top:0.2rem;margin-bottom:0.32rem;">
   <div class="x-col" xid="col2" style="padding:0;color:#333;font-size:0.26rem;">
    <span xid="span15">交易时间</span>
    <span xid="span16" class="pull-right" bind-text='val("add_time")' style="color:#999;">2016-09-09</span></div> </div>
  <div xid="div11" style="height:0.2rem;background-color:#f0f0f0;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div></li> </ul> </div> 
  </div> 
    <div class="tab-pane" xid="tcfContent">
     <div xid="div12" style="height:0.2rem;background-color:#f0f0f0;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div><div xid="div2" style="display:none;text-align: center;width: 100%;">
   <img src="$UI/zhixin/img/none.png" alt="" xid="image3" style="width: 30%;margin-top: 30%;" height="100%"></img></div><div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="tcfData">
      <ul class="x-list-template" xid="listTemplateUl2">
       <li xid="li2" style="background-color:white;">
        
        
        
        
        
        
        
        <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9">
   <div class="x-col orderNum" xid="col12" style="height:0.8rem;color:#333;font-size:0.3rem;">
    <span xid="span17" style="line-height:0.8rem;">订单号</span>
    <span xid="span18" class="pull-right" bind-text='val("pay_sn")' style="line-height:0.8rem;font-size:0.26rem;"><![CDATA[]]></span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row11" style="margin-top:0.32rem;">
   <div class="x-col" xid="col11" style="padding:0;color:#333;font-size:0.26rem;">
    <span xid="span19">缴费金额</span>
    <span xid="span20" class="pull-right" bind-text='val("money")+"元"' style="color:#7bc83e;"><![CDATA[]]></span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row22" style="margin-top:0.2rem;">
   <div class="x-col" xid="col23" style="padding:0;color:#333;font-size:0.26rem;">
    <span xid="span41">优惠金额</span>
    <span xid="span42" class="pull-right" bind-text='val("shijian_money")+"元"' style="color:#999;"></span></div> </div><div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row21" style="margin-top:0.2rem;">
   <div class="x-col" xid="col24" style="padding:0;color:#333;font-size:0.26rem;">
    <span xid="span44">支付方式</span>
    <span xid="span43" class="pull-right" bind-text='val("pay_sts")' style="color:#999;"></span></div> </div>
<!--     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10" style="padding:0 10px 0 10px;margin-top:10px;padding-left:20px;padding-right:20px;"> -->
<!--    <div class="x-col" xid="col10" style="padding:0;"> -->
<!--     <span xid="span21"><![CDATA[有效日期]]></span> -->
<!--     </div>  -->
<!--   <div class="x-col x-col-fixed" xid="col13" style="width:auto;padding:0;"><span xid="span22" class="pull-right" bind-text='val("shuifei")'><![CDATA[]]></span></div></div> -->
  <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row12" style="margin-top:0.2rem;margin-bottom:0.32rem;">
   <div class="x-col" xid="col9" style="padding:0;color:#333;font-size:0.26rem;">
    <span xid="span23">交易时间</span>
    <span xid="span24" class="pull-right " bind-text='val("add_time")' style="color:#999;"><![CDATA[]]></span></div> </div>
  <div xid="div13" style="height:0.2rem;background-color:#f0f0f0;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div></li> </ul> </div> 
  </div> 
    <div class="tab-pane" xid="ljfContent">
   <div xid="div14" style="height:0.2rem;background-color:#f0f0f0;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div><div xid="div5" style="display:none;text-align: center;width: 100%;">
    <img src="$UI/zhixin/img/none.png" alt="" xid="image4" style="width: 30%;margin-top: 30%;" height="100%"></img></div> 
   <div component="$UI/system/components/justep/list/list" class="x-list" xid="list3" data="lajiData">
    <ul class="x-list-template" xid="listTemplateUl3">
     <li xid="li3" style="background-color:white;">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row16">
       <div class="x-col orderNum" xid="col15" style="height:0.8rem;color:#333;font-size:0.3rem;">
        <span xid="span31" style="line-height:0.8rem;">订单号</span>
        <span xid="span30" class="pull-right" bind-text='val("pay_sn")' style="line-height:0.8rem;font-size:0.26rem;"></span></div> </div> 
      <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row13" style="margin-top:0.32rem;">
       <div class="x-col" xid="col16" style="padding:0;color:#333;font-size:0.26rem;">
        <span xid="span32">缴费金额</span>
        <span xid="span27" class="pull-right" bind-text='val("money")+"元"' style="color:#7bc83e;"></span></div> </div> 
      <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row24" style="margin-top:0.2rem;">
   <div class="x-col" xid="col25" style="padding:0;color:#333;font-size:0.26rem;">
    <span xid="span45">优惠金额</span>
    <span xid="span46" class="pull-right" bind-text='val("shijian_money")+"元"' style="color:#999;"></span></div> </div><div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row23" style="margin-top:0.2rem;">
   <div class="x-col" xid="col26" style="padding:0;color:#333;font-size:0.26rem;">
    <span xid="span48">支付方式</span>
    <span xid="span47" class="pull-right" bind-text='val("pay_sts")' style="color:#999;"></span></div> </div>
<!--     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row15" style="padding:0 10px 0 10px;margin-top:10px;padding-left:20px;padding-right:20px;"> -->
<!--        <div class="x-col" xid="col18" style="padding:0;"> -->
<!--         <span xid="span26">有效日期</span></div>  -->
<!--        <div class="x-col x-col-fixed" xid="col14" style="width:auto;padding:0;"> -->
<!--         <span xid="span29" class="pull-right" bind-text='val("jiaofei")'></span></div> </div>  -->
      <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row14" style="margin-top:0.2rem;margin-bottom:0.32rem;">
       <div class="x-col" xid="col17" style="padding:0;color:#333;font-size:0.26rem;">
        <span xid="span28">交易时间</span>
        <span xid="span25" class="pull-right" bind-text='val("add_time")' style="color:#999;"></span></div> </div> 
      <div xid="div15" style="height:0.2rem;background-color:#f0f0f0;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div></li> </ul> </div> 
  </div>
  <div class="tab-pane" xid="dfContent">
   <div xid="div16" style="height:0.2rem;background-color:#f0f0f0;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div><div xid="div6" style="display:none;text-align: center;width: 100%;">
    <img src="$UI/zhixin/img/none.png" alt="" xid="image5" style="width: 30%;margin-top: 30%;" height="100%"></img></div> 
   <div component="$UI/system/components/justep/list/list" class="x-list" xid="list4" data="dianfeiData">
    <ul class="x-list-template" xid="listTemplateUl4">
     <li xid="li5" style="background-color:white;">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
       <div class="x-col orderNum" xid="col13" style="height:0.8rem;color:#333;font-size:0.3rem;">
        <span xid="span52" style="line-height:0.8rem;">订单号</span>
        <span xid="span50" class="pull-right" bind-text='val("pay_sn")' style="line-height:0.8rem;font-size:0.26rem;"></span></div> </div> 
      <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row10" style="margin-top:0.32rem;">
       <div class="x-col" xid="col10" style="padding:0;color:#333;font-size:0.26rem;">
        <span xid="span51">缴费金额</span>
        <span xid="span26" class="pull-right" bind-text='val("money")+"元"' style="color:#7bc83e;"></span></div> </div> 
      <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row26" style="margin-top:0.2rem;">
       <div class="x-col" xid="col18" style="padding:0;color:#333;font-size:0.26rem;">
        <span xid="span49">优惠金额</span>
        <span xid="span22" class="pull-right" bind-text='val("shijian_money")+"元"' style="color:#999;"></span></div> </div> 
      <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row25" style="margin-top:0.2rem;">
       <div class="x-col" xid="col14" style="padding:0;color:#333;font-size:0.26rem;">
        <span xid="span29">支付方式</span>
        <span xid="span7" class="pull-right" bind-text='val("pay_sts")' style="color:#999;"></span></div> </div> 
      <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row15" style="margin-top:0.2rem;margin-bottom:0.32rem;">
       <div class="x-col" xid="col7" style="padding:0;color:#333;font-size:0.26rem;">
        <span xid="span6">交易时间</span>
        <span xid="span21" class="pull-right" bind-text='val("add_time")' style="color:#999;"></span></div> </div> 
      <div xid="div17" style="height:0.2rem;background-color:#f0f0f0;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div></li> </ul> </div> 
  </div>
  <div class="tab-pane" xid="qfContent">
   <div xid="div18" style="height:0.2rem;background-color:#f0f0f0;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div><div xid="div4" style="display:none;text-align: center;width: 100%;">
    <img src="$UI/zhixin/img/none.png" alt="" xid="image6" style="width: 30%;margin-top: 30%;" height="100%"></img></div> 
   <div component="$UI/system/components/justep/list/list" class="x-list" xid="list5" data="qifeiData">
    <ul class="x-list-template" xid="listTemplateUl5">
     <li xid="li6" style="background-color:white;">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row31">
       <div class="x-col orderNum" xid="col29" style="height:0.8rem;color:#333;font-size:0.3rem;">
        <span xid="span61" style="line-height:0.8rem;">订单号</span>
        <span xid="span60" class="pull-right" bind-text='val("pay_sn")' style="line-height:0.8rem;font-size:0.26rem;"></span></div> </div> 
      <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row27" style="margin-top:0.32rem;">
       <div class="x-col" xid="col31" style="padding:0;color:#333;font-size:0.26rem;">
        <span xid="span62">缴费金额</span>
        <span xid="span55" class="pull-right" bind-text='val("money")+"元"' style="color:#7bc83e;"></span></div> </div> 
      <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row29" style="margin-top:0.2rem;">
       <div class="x-col" xid="col27" style="padding:0;color:#333;font-size:0.26rem;">
        <span xid="span54">优惠金额</span>
        <span xid="span57" class="pull-right" bind-text='val("shijian_money")+"元"' style="color:#999;"></span></div> </div> 
      <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row30" style="margin-top:0.2rem;">
       <div class="x-col" xid="col28" style="padding:0;color:#333;font-size:0.26rem;">
        <span xid="span53">支付方式</span>
        <span xid="span59" class="pull-right" bind-text='val("pay_sts")' style="color:#999;"></span></div> </div> 
      <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row28" style="margin-top:0.2rem;margin-bottom:0.32rem;">
       <div class="x-col" xid="col30" style="padding:0;color:#333;font-size:0.26rem;">
        <span xid="span58">交易时间</span>
        <span xid="span56" class="pull-right" bind-text='val("add_time")' style="color:#999;"></span></div> </div> 
      <div xid="div19" style="height:0.2rem;background-color:#f0f0f0;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div></li> </ul> </div> 
  </div></div> </div></div>
  </div> 
</div>