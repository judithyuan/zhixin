<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:103px;left:124px;" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="carData" idColumn="c_park_cart_num" onCustomRefresh="carDataCustomRefresh"><column label="车牌" name="c_park_cart_num" type="String" xid="xid4"></column>
  <column label="品牌" name="c_cart_brand" type="String" xid="xid5"></column>
  <column label="c_cart_color" name="c_cart_color" type="String" xid="xid6"></column>
  <column label="车位号" name="c_cart_number" type="String" xid="xid7"></column>
  <column label="排量" name="c_cc" type="String" xid="xid8"></column>
  <column label="c_lock_status" name="c_lock_status" type="String" xid="xid9"></column>
  <column name="u_addr" type="String" xid="xid10"></column>
  <column label="u_mobile" name="u_mobile" type="String" xid="xid11"></column>
  <column name="u_name" type="String" xid="xid12"></column>
  <column name="c_cart_id" type="String" xid="xid1"></column>
  <column name="c_end_time_format" type="String" xid="xid2"></column>
  <column name="c_lock_status_text" type="String" xid="xid3"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="stateData"></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="智能锁车" class="x-titlebar top" xid="titleBar1">
   <div class="x-titlebar-left top-left" xid="left1">
    <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon left-btn" icon="icon-ios7-arrow-left" onClick="tuichu" xid="backBtn">
     <i class="icon-ios7-arrow-left" xid="i1"></i>
     <span xid="span1"></span></a> </div> 
   <div class="x-titlebar-title" style="font-weight:normal;" xid="title1">智能锁车</div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>  
    <div class="x-panel-content" xid="content1" style="background-color:#eee;">
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="carData" bind-click="list1Click">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div xid="div1" style="padding-left:0.3rem;background-color:#fff;padding-bottom:0.38rem;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="border-bottom:1px solid #eee;padding-right:0.3rem;">
   <div class="x-col" xid="col1" style="height:1rem;line-height:1rem;"><span xid="span2" style="color:#333;font-size:0.3rem;"><![CDATA[车牌号码]]></span></div>
   <div class="x-col" xid="col2"></div>
   <div class="x-col x-col-fixed" xid="col3" style="width:auto;line-height:1rem;"><span xid="span3" style="color:#999;font-size:0.26rem;" bind-text='val("c_park_cart_num")'><![CDATA[川A B88795]]></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="border-bottom:1px solid #eee;padding-right:0.3rem;display:none;">
   <div class="x-col" xid="col6" style="height:1rem;line-height:1rem;">
    <span xid="span4" style="color:#333;font-size:0.3rem;"><![CDATA[车辆信息]]></span></div> 
   <div class="x-col" xid="col4"></div>
   <div class="x-col x-col-fixed" xid="col5" style="width:auto;line-height:1rem;">
    <span xid="span5" style="color:#999;font-size:0.26rem;" bind-text='val("c_cart_brand")+" "+val("c_cart_color")'><![CDATA[白色 标志408]]>
  </span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="border-bottom:1px solid #eee;padding-right:0.3rem;">
   <div class="x-col" xid="col9" style="height:1rem;line-height:1rem;">
    <span xid="span6" style="color:#333;font-size:0.3rem;"><![CDATA[房屋信息]]></span></div> 
   <div class="x-col x-col-fixed" xid="col8" style="width:auto;line-height:1rem;">
    <span xid="span7" style="color:#999;font-size:0.26rem;" bind-text='val("u_addr")'><![CDATA[置信嘉园 3栋一单元401]]></span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="border-bottom:1px solid #eee;padding-right:0.3rem;">
   <div class="x-col" xid="col13" style="height:1rem;line-height:1rem;">
    <span xid="span10" style="color:#333;font-size:0.3rem;"><![CDATA[有效期至]]></span></div> 
   <div class="x-col" xid="col14"></div>
   <div class="x-col x-col-fixed" xid="col11" style="width:auto;line-height:1rem;">
    <span xid="span12" style="color:#999;font-size:0.26rem;" bind-text='val("c_end_time_format")'><![CDATA[2088-10-10]]></span></div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="margin-top:0.38rem;">
   <div class="x-col" xid="col10" style="text-align:center;height:0.8rem;"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block center-block" label="缴纳停车费" xid="button1" style="background-color:#7bc83e;font-size:0.32rem" onClick="button1Click">
   <i xid="i2"></i>
   <span xid="span8">缴纳停车费</span></a>
  </div>
   <div class="x-col x-col-fixed" xid="col15" style="width:0.2rem;"></div><div class="x-col" xid="col12" style="text-align:center;height:0.8rem;" bind-click="col12Click"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block center-block" xid="button2" bind-css='{"sc":val("c_lock_status") =="0","dsc":val("c_lock_status") =="1"}' onClick="button2Click" style="font-size:0.32rem;">
   <i xid="i3"></i>
   <span id='span9' xid="span9" bind-text='val("c_lock_status_text")'><![CDATA[锁车]]></span></a></div>
  
  <div class="x-col x-col-fixed" xid="col7" style="width:0.3rem;"></div></div>
  </div>
  </li></ul> </div>
  <div xid="div6carf" style="margin-top:0.4rem;display:none;"><span xid="span13" style="color:#7bc83e;font-size:0.26rem;padding-right:0.3rem;" class="pull-right"><![CDATA[我已阅读并同意该收费项目订单协议]]></span><img src="$UI/zhixin/img/user/right.png" alt="" xid="image1" style="width:0.4rem;" class="pull-right"></img></div><div xid="div4carf" style="text-align: center;"><span xid="yesspan" style="margin-top: 20px;text-align: center;display:none;">停车缴费功能仅限于购买了车位的用户使用。</span><div xid="div5"><img src="$UI/zhixin/img/none.png" alt="" xid="noneimg" style="margin-top:30%;width:30%;display:none;" height=""></img></div><span xid="nonespan" style="margin-top: 20px;text-align: center;display:none;">暂时未找到您的车辆信息，请前往物业中心缴费或咨询。</span>
  </div>
  
  </div>
  </div> 
<div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="loadpopOver">
   <div class="x-popOver-overlay" xid="div2" style="background-color:black;"></div>
   <div class="x-popOver-content" xid="div3" style="margin-left:-30px;background-color:rgba(255, 255, 255, 0);width:100%;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button5" icon="icon-loading-b" style="font-size:48px;color:#7bc93d;">
   <i xid="i5" class="icon-loading-b"></i>
   <span xid="span11"></span></a></div></div>
  </div>