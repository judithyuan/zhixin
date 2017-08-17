<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:346px;left:85px;" onModelConstruct="modelModelConstruct" onActive="modelActive" onInactive="modelInactive"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="wyjflistData" onCustomRefresh="wyjflistDataCustomRefresh" idColumn="accountName"><column label="高层物业公共服务费" name="accountName" type="String" xid="xid1"></column>
  <column label="2014/1/1 0:00:00" name="beginDate" type="String" xid="xid2"></column>
  <column label="endDate" name="endDate" type="String" xid="xid3"></column>
  <column label="288.00" name="fee" type="String" xid="xid4"></column>
  <column label="4" name="num" type="String" xid="xid5"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="mingxiData" idColumn="accountName"><column label="物业公共服务费" name="accountName" type="String" xid="xid7"></column>
  <column name="beginDate" type="String" xid="xid8"></column>
  <column name="endDate" type="String" xid="xid9"></column>
  <column name="fee" type="String" xid="xid10"></column>
  <column name="accountName" type="String" xid="xid6"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="datatimeData" idColumn="time" onCustomRefresh="datatimeDataCustomRefresh">
   <column name="time" type="String" xid="column1"></column>
   <data xid="default2">[{&quot;time&quot;:&quot;1&quot;},{&quot;time&quot;:&quot;2&quot;},{&quot;time&quot;:&quot;3&quot;}]</data>
   <column label="月份" name="val" type="String" xid="column2"></column>
   <column name="id" type="String" xid="column3"></column>
   <column name="key" type="String" xid="column4"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1" style="background-color:#eee;"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar top"
        xid="titleBar1"> 
        <div class="x-titlebar-left top-left" xid="left1"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-only-icon left-btn" icon="icon-ios7-arrow-left" onClick="tuichu"
            xid="backBtn"> 
            <i class="icon-ios7-arrow-left" xid="i2"/>  
            <span xid="span1"/>
          </a> 
        </div>  
        <div class="x-titlebar-title" style="font-weight:normal;" xid="title1"> 
          <span id="typealljiaofei" xid="span7titlte" bind-text="typename"><![CDATA[]]></span>
        </div>  
        <div class="x-titlebar-right reverse top-right" xid="right1" style="vertical-align:middle;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="缴费记录" xid="button3jiaofeijilu" onClick="button3jiaofeijiluClick" style="padding:0;font-size:0.26rem;color:#999;text-indent:1px;line-height:48px;height:48px;">
   <i xid="i1"></i>
   <span xid="span30">缴费记录</span></a></div>
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1" style="overflow-x: hidden;"> 
      <div component="$UI/system/components/justep/panel/panel" class="panel panel-default x-card" xid="panel9" style="display:none;margin: 0;border-top: 1px solid #e6e6e6;border-bottom: 1px solid #e6e6e6;padding-bottom:6px;background-color:#f0f0f0;"></div><div xid="div1selectyujiao" style="display:block;padding-right:15px;padding-left:15px;margin-bottom:0px;background-color:white;line-height:32px;" class="selectyujiao">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="padding:0;margin:0;">
    <div class="x-col" xid="col13" style="padding:0;margin:0;">
     <select component="$UI/system/components/justep/select/select" class="form-control" xid="select2" style="float:right;border-color:white;text-align:right;" bind-options="datatimeData" bind-optionsValue="key" bind-optionsLabel="val" onChange="select2Change" bind-optionsCaption="选择缴费时长"></select></div> 
    </div> </div><div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panelyezhu" style="box-shadow:none;margin-bottom:0;background-color:#fff;border-radius:0;margin-bottom:0;padding-left:0.3rem;padding-right:0;height:1.5rem;position:relative;padding-bottom:0.34rem;padding-top:0.34rem;border-bottom:none;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10" style="padding:0;">
    <div class="x-col" xid="col21" style="padding:0;">
     <p xid="p4" style="font-size:0.3rem;float:left;color:#333;"><![CDATA[业主：]]></p>
     <div component="$UI/system/components/justep/output/output" class="x-output" xid="output3" style="font-size:0.3rem;float:left;color:#333;padding:0;" bind-ref='$model.name()'></div></div> </div> 
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row12" style="padding:0;margin-top:0.1rem;">
    <div class="x-col" xid="col18" style="padding:0;min-width:30em;display:block;">
     <p xid="p5tingchejiaofeicp" style="margin:0;font-size:0.26rem;float:left;color:#999;padding:0;"><![CDATA[]]></p><div component="$UI/system/components/justep/output/output" class="x-output" xid="output4addr" style="margin:0;font-size:0.26rem;float:left;color:#999;padding:0;" bind-ref="$model.addr()"></div>
  <p xid="p3chepaihaoxomnxi" style="margin:0;font-size:0.26rem;float:left;color:#999;padding:0;"><![CDATA[]]></p>
  </div> </div> 
   
   </div>
  <div xid="div6" style="height:0.2rem;background-color:#f0f0f0;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div><div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panelxufei" style="box-shadow:none;background-color:#fff;border-radius:0;margin-bottom:0;padding-left:0.3rem;border-bottom:none;border-top:none;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row15" style="padding:0;border-bottom: 1px solid #eeeeee;height:1rem;">
    <div class="x-col" xid="col23" style="padding:0;">
     <p xid="p1" style="line-height: 1rem;margin:0;font-size:0.3rem;float:left;color:#333;"><![CDATA[续费期间：]]></p>
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button4shijian" style="font-size:0.4rem;color:#999999;padding-top:0;padding-bottom:0;padding-right:0.3rem;height:1rem;line-height:1rem;float:right;" icon="icon-ios7-arrow-right">
   <i xid="i4" class="icon-ios7-arrow-right"></i>
   <span xid="span32"></span></a><span xid="spanTime" style="line-height: 1rem;font-size:0.26rem;float:right;color:#999;padding:0;margin-right:0.3rem;" bind-text="jiaoyuefen"><![CDATA[201702-02——201703-03]]></span></div> 
  </div> 
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row14qianfeijiaofei" style="padding:0;height:1rem;">
    <div class="x-col" xid="col22" style="padding:0;padding-right:0.3rem;">
     <p xid="p2" style="line-height:1rem;margin:0;font-size:0.3rem;float:left;color:#333;"><![CDATA[费用总额：]]></p>
     <span xid="span35" id="span18" style="line-height: 1rem;margin:0;font-size:0.32rem;float:right;color:#333;padding:0;" bind-text="yfk"><![CDATA[0.00]]></span><span xid="span33" style="line-height:1rem;margin:0;font-size:0.32rem;float:right;color:#333;padding:0;"><![CDATA[￥]]></span>
  </div> 
  </div> </div>
  <div xid="div7" style="height:0.2rem;background-color:#f0f0f0;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div><div xid="div5alljiaofei" style="display:none;background-color:white;padding-left:0.3rem;"> 
        <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="border-bottom:1px solid #eee;padding:0;height:1rem;line-height:1rem;"> 
          <div class="x-col" xid="col2"> 
            <span xid="span2" style="color:#676767;">欠费明细</span>
          </div>  
          <div class="x-col" xid="col8" />  
          <div class="x-col" xid="col9" />
        </div>  
        <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="mingxiData" style="padding:0;">
   <ul class="x-list-template" xid="listTemplateUl1" style="padding:0;">
    <li xid="li1" style="padding:0;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="height:0.8rem;border-bottom:1px solid #eee;margin-top:0px;padding-left:0;"> 
          <div class="x-col x-col-fixed" xid="col10" style="min-width: 11em;width:auto;"> 
            <span xid="span4" style="font-size: 0.26rem;display:inline-block;height:0.8rem;line-height:0.8rem;color:#999;" bind-text="val(&quot;beginDate&quot;)+'至'+val(&quot;endDate&quot;)">2016-07-01至2016-08-01</span>
          </div>  
          <div class="x-col" xid="col12" style="text-align:right;"> 
            <span xid="span3" style="font-size: 0.26rem;color:#999;height:0.8rem;line-height:0.8rem;" bind-text="val(&quot;accountName&quot;)+'（元）：'" bind-visible=" val(&quot;accountName&quot;) =='滞纳金'"><![CDATA[滞纳金]]></span><span xid="span5" style="font-size: 0.26rem;color:#999;height:0.8rem;line-height:0.8rem;" bind-visible="val(&quot;accountName&quot;) !='滞纳金'"><![CDATA[欠费]]></span>  
            
          </div> 
        <div class="x-col" xid="col1" style="text-align:right;"><span xid="span6" style="height:0.8rem;line-height:0.8rem;margin-right:0.3rem;font-size:0.3rem;color:#333;" bind-text='val("fee")'>100.00</span></div></div></li></ul> </div>  
        </div>
  </div> 
  <div class="x-panel-bottom" xid="bottom1" style="border-top:1px solid #ddd;background-color:#fff;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row7" style="padding:0;margin:0;height:100%;">
   <div class="x-col" xid="col3" style="padding:0;margin:0;color:#ff3333;position:relative;">
   <div id='div8shijijiaofei' xid="div8shijijiaofei" class="pull-right" style="margin-right:0.2rem;">
    <span xid="span10" style="font-size:0.3rem;">实际缴费：</span>
    <span xid="span7" style="font-size:0.22rem;">￥</span>
    <span xid="span27" style="color:#ff3333;font-size:0.4rem;font-weight:bold;" bind-text="sfk"><![CDATA[00.00]]></span></div> 
   <div id='div10youhuijiaofei' xid="div10youhuijiaofei" class="pull-right" style="position:absolute;bottom:0.1rem;right:0.2rem;">
    <span xid="span50" style="font-size:0.24rem;">已优惠：</span>
    <span xid="span29" style="font-size:0.24rem;" bind-text="yfksfk">00.00</span></div> 
  <div id="div5" xid="div5div10youhuijiaofei" class="pull-right" style="display:none;position:absolute;bottom:0.1rem;right:0.2rem;">
   <span xid="span9jkirencxzjs" style="font-size:0.24rem;color:#999999;"><![CDATA[]]></span>
   </div></div><div class="x-col x-col-33" xid="col16pay" style="height:0.98rem;line-height:0.98rem;border:none;border-radius: 0;background-color:#7bc83e;font-size:0.32rem;padding:0;"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="立即支付" xid="button2pay" style="height:0.98rem;line-height:0.98rem;border:none;border-radius: 0;background-color:#7bc83e;font-size:0.32rem;padding:0;" onClick="button1Click">
   <i xid="i3"></i>
   <span xid="span8">立即支付</span></a></div>
  </div></div></div>
<div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="livelineOver" dismissible="false">
   <div class="x-popOver-overlay" xid="div4"></div>
   <div class="x-popOver-content" xid="div1" style="margin-left:-150px;margin-top:-150px;">
    <img src="$UI/zhixin/img/gameover.png" alt="" xid="image8" style="width:300px;"></img>
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="position: absolute;bottom:10px;">
     <div class="x-col" xid="col17">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="确定" xid="button5" style="font-size:16px;color:white;background-color:#7bc93d;margin-left: auto;margin-right: auto;width:50%;border-radius: 8px;    border-color: #57AD14;" onClick="denglu">
       <i xid="i5"></i>
       <span xid="span16">确定</span></a> </div> </div> </div> </div></div>
