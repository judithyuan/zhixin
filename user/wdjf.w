<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:73px;left:120px;height:auto;" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="jfData" onCustomRefresh="jfDataCustomRefresh" idColumn="jiaofei_time"><column name="jiaofei_time" type="String" xid="xid1"></column>
  <column name="jifen" type="String" xid="xid2"></column>
  <column name="money" type="String" xid="xid3"></column>
  <column name="number" type="String" xid="xid4"></column>
  <column name="type" type="String" xid="xid5"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="我的积分"
          class="x-titlebar" style="font-weight: normal;color:#333333;background-color:hsla(0,0%,96%,1);">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">我的积分</div>  
          <div class="x-titlebar-right reverse" bind-click="right1Click"> 
          <span xid="span1" style="    font-size: 14px;"><![CDATA[积分规则]]></span></div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1" style="background-color:#eeeeee;"><div xid="div3" class="clearfix" style="background-color:#7bc93d;color:#fff;line-height:70px;height:120px;">
   
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="padding:0;margin-bottom:15px;margin-top: 15px;">
    <div class="x-col x-col-fixed" xid="col9" style="width:auto;">
     <img src="$UI/zhixin/img/user/jfgz.png" alt="" xid="image1" height="70px" style="width:70px;margin-left:20px;" class="pull-left img-circle"></img></div> 
    <div class="x-col" xid="col10" style="width:auto;">
     
     </div> 
    <div class="x-col" xid="col11">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="padding:0;margin:0;">
   <span xid="span5" style="line-height: 25px;font-size:14px;"><![CDATA[当前积分]]></span></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="padding:0;margin:0;margin-top: 10px;">
   <span xid="span4" style="line-height: 24px;font-size:36px;font-weight:bold;"><![CDATA[0]]></span></div></div> </div> 
   </div>
  
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="jfData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel2" style="border-top: 1px solid #D2D2D2;border-radius: 0;margin-top: 10px;background-color:#fff;">
   
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col1" style="border-bottom: 1px solid #d2d2d2;"><span xid="span2"><![CDATA[赠送积分]]></span></div>
   <div class="x-col" xid="col3" style="border-bottom: 1px solid #d2d2d2;"><span xid="span3" style="color:#7bc93d;float:right;margin-right:" bind-text="'+'+val(&quot;jifen&quot;)"><![CDATA[+200]]></span></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="margin-top:5px;">
   <div class="x-col" xid="col5">
    <span xid="span6" bind-text="val(&quot;type&quot;)+'（元）'"><![CDATA[停车缴费（元）]]></span></div> 
   <div class="x-col" xid="col4">
    <span xid="span7" style="color:;float:right;margin-right:" bind-text='val("money")'><![CDATA[200]]></span></div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
   <div class="x-col" xid="col7">
    <span xid="span8"><![CDATA[缴费时间]]></span></div> 
   <div class="x-col" xid="col6">
    <span xid="span9" style="color:;float:right;margin-right:" bind-text='val("jiaofei_time")'><![CDATA[2016-09-29  18:05:05]]></span></div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row7">
   <div class="x-col" xid="col12">
    <span xid="span10"><![CDATA[订单号]]></span></div> 
   <div class="x-col" xid="col8">
    <span xid="span11" style="color:;float:right;margin-right:" bind-text='val("number")'><![CDATA[1548646415132135185]]></span></div> </div></div></li></ul> </div></div>
  </div> 
</div>