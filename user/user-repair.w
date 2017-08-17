<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:17px;left:175px;" onActive="modelActive"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="allData" onCustomRefresh="allDataCustomRefresh" idColumn="bx_sts"><column label="报修状态" name="bx_sts" type="String" xid="xid4"></column>
  <column label="报修地址" name="bxdz" type="String" xid="xid6"></column>
  <column label="报修类型" name="state" type="String" xid="xid7"></column>
  <column label="订单号" name="number" type="String" xid="xid8"></column>
  <column label="完成时间" name="finish_time" type="String" xid="xid9"></column>
  <column label="报修内容" name="bxnr" type="String" xid="xid10"></column>
  <column label="报修时间" name="bx_time" type="String" xid="xid11"></column>
  <column label="照片" name="pics" type="String" xid="xid12"></column>
  <column label="报修项目" name="items" type="String" xid="xid13"></column>
  <column label="评论" name="pinglun" type="String" xid="xid18"></column>
  <column label="物业回复" name="jujue_message" type="String" xid="xid19"></column>
  <column name="id" type="String" xid="xid1"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" idColumn="bx_sts" xid="applyData" confirmDelete="true" confirmRefresh="true" onCustomRefresh="applyDataCustomRefresh">
   <column label="报修状态" name="bx_sts" type="String" xid="column2"></column>
   <column label="报修地址" name="bxdz" type="String" xid="column4"></column>
   <column label="报修类型" name="state" type="String" xid="column5"></column>
   <column label="订单号" name="number" type="String" xid="column6"></column>
   <column label="完成时间" name="finish_time" type="String" xid="column7"></column>
   <column label="报修内容" name="bxnr" type="String" xid="column8"></column>
   <column label="报修时间" name="bx_time" type="String" xid="column9"></column>
   <column label="照片" name="pics" type="String" xid="column1"></column>
   <column label="报修项目" name="items" type="String" xid="column3"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" idColumn="bx_sts" xid="cancelData" confirmDelete="true" confirmRefresh="true" onCustomRefresh="cancelDataCustomRefresh">
   <column label="报修状态" name="bx_sts" type="String" xid="column14"></column>
  <column label="报修地址" name="bxdz" type="String" xid="column12"></column>
  <column label="报修类型" name="state" type="String" xid="column11"></column>
  <column label="订单号" name="number" type="String" xid="column18"></column>
  <column label="完成时间" name="finish_time" type="String" xid="column17"></column>
  <column label="报修内容" name="bxnr" type="String" xid="column16"></column>
  <column label="报修时间" name="bx_time" type="String" xid="column15"></column>
  <column label="照片" name="pics" type="String" xid="column10"></column>
  <column label="报修项目" name="items" type="String" xid="column13"></column>
  <column label="物业人员回复" name="jujue_message" type="String" xid="xid14"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" idColumn="bx_sts" xid="dealData" confirmDelete="true" confirmRefresh="false" onCustomRefresh="dealDataCustomRefresh">
   <column label="报修状态" name="bx_sts" type="String" xid="column23"></column>
  <column label="报修地址" name="bxdz" type="String" xid="column21"></column>
  <column label="报修类型" name="state" type="String" xid="column20"></column>
  <column label="订单号" name="number" type="String" xid="column27"></column>
  <column label="完成时间" name="finish_time" type="String" xid="column26"></column>
  <column label="报修内容" name="bxnr" type="String" xid="column25"></column>
  <column label="报修时间" name="bx_time" type="String" xid="column24"></column>
  <column label="照片" name="pics" type="String" xid="column19"></column>
  <column label="报修项目" name="items" type="String" xid="column22"></column>
  <column name="id" type="String" xid="xid15"></column>
  <column isCalculate="false" label="评论" name="pinglun" type="String" xid="xid17"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar top" title="物业报修" xid="titleBar1">
     <div class="x-titlebar-left top-left" xid="left1">
      <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon left-btn" icon="icon-ios7-arrow-left" onClick="backBtnClick" xid="backBtn">
       <i class="icon-ios7-arrow-left" xid="i5"></i>
       <span xid="span57"></span></a> </div> 
     <div class="x-titlebar-title" style="font-weight:normal;" xid="title1">物业报修</div>
     <div class="x-titlebar-right reverse" xid="right1"></div></div> </div> 
   <div class="x-panel-content" xid="content1" style="background-color:#fff;">
    <div component="$UI/system/components/bootstrap/tabs/tabs" xid="tabs1">
     <ul class="nav nav-tabs" xid="ul4" style="background-color:white;color:#333;font-size:0.3rem;">
      <li class="active" xid="li8" style="width:25%;text-align:center;">
       <a content="qbContent" xid="tabItem7">全部</a></li> 
      <li role="presentation" xid="li9" style="width:25%;text-align:center;">
       <a content="sqContent" xid="tabItem8">已申请</a></li> 
      <li role="presentation" xid="li10" style="width:25%;text-align:center;">
       <a content="smContent" xid="tabItem8"><![CDATA[已处理]]></a></li> 
      <li role="presentation" xid="li11" style="width:25%;text-align:center;">
       <a content="qxContent" xid="tabItem8">已取消</a></li> </ul> 
     <div class="tab-content" xid="div8">
      <div class="tab-pane active" xid="qbContent">
       <div xid="div6" style="height:0.2rem;background-color:#f0f0f0;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div><div xid="div5" style="display:none;text-align: center;width: 100%;">
   <img src="$UI/zhixin/img/none.png" alt="" xid="image1" style="width: 30%;margin-top: 30%;" height="100%"></img></div><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="allData">
        <ul class="x-list-template" xid="listTemplateUl1">
         <li xid="li1" style="background-color:white;">
          <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="color:#333;font-size:0.3rem;">
           <div class="x-col" xid="col1" style="margin-left:0.3rem;height:0.8rem;line-height:0.8rem;border-bottom:1px solid #eee;">
            <span xid="span2" style="color:#333333;">订单号</span></div> 
           <div class="x-col" xid="col4" style="border-bottom:1px solid #eee;"></div>
           <div class="x-col x-col-fixed" xid="col7" style="width:auto;margin-right:0.3rem;height:0.8rem;line-height:0.8rem;border-bottom:1px solid #eee;">
            <span xid="span3" style="color:#333;" bind-text='val("number")'>101111000101</span></div> </div> 
          <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row2" style="margin-top:0.3rem;color:#666;font-size:0.26rem;">
           <div class="x-col" xid="col8">
            <span xid="span5" style="color:#666666;"><![CDATA[报修类型]]></span></div> 
           <div class="x-col" xid="col9"></div>
           <div class="x-col x-col-fixed" xid="col10" style="width:auto;">
            <span xid="span6" style="color:#666;" bind-text='val("state")'><![CDATA[]]></span></div> </div> 
          <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row3" style="margin-top:0.2rem;color:#666;font-size:0.26rem;" bind-visible='val("items")!=null'>
           <div class="x-col" xid="col12">
            <span xid="span8" style="color:#666666;"><![CDATA[报修事项]]></span></div> 
           <div class="x-col" xid="col33"></div>
           <div class="x-col x-col-fixed" xid="col11" style="width:auto;">
            <span xid="span9" style="color:#666;" bind-text='val("items")'><![CDATA[]]></span></div> </div> 
          <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row4" style="margin-top:0.2rem;color:#666;font-size:0.26rem;">
           <div class="x-col" xid="col35">
            <span xid="span10" style="color:#666666;"><![CDATA[维修地点]]></span></div> 
           <div class="x-col" xid="col36"></div>
           <div class="x-col x-col-fixed" xid="col34" style="width:auto;">
            <span xid="span11" style="color:#666;" bind-text='val("bxdz")'><![CDATA[]]></span></div> </div> 
          <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row5" bind-visible=' val("finish_time") !=""' style="margin-top:0.2rem;color:#666;font-size:0.26rem;">
           <div class="x-col" xid="col38">
            <span xid="span12" style="color:#666666;"><![CDATA[维修结束]]></span></div> 
           <div class="x-col" xid="col39"></div>
           <div class="x-col x-col-fixed" xid="col37" style="width:auto;">
            <span xid="span13" style="color:#666;" bind-text='val("finish_time")'><![CDATA[]]></span></div> </div> 
          
          <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row24" bind-visible=' val("jujue_message") !=null' style="margin-top:0.2rem;color:#666;font-size:0.26rem;">
   <div class="x-col" xid="col71">
    <span xid="span64" style="color:#666666;">物业回复</span></div> 
   <div class="x-col" xid="col69"></div>
   <div class="x-col x-col-fixed" xid="col70" style="width:auto;">
    <span xid="span65" style="color:#666;" bind-text='val("jujue_message")'></span></div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row23" bind-visible=' val("pinglun") !=null' style="margin-top:0.2rem;color:#666;font-size:0.26rem;">
   <div class="x-col" xid="col68" style="padding-bottom:0.3rem;margin-left:0.3rem;border-bottom:1px solid #eee;">
    <span xid="span62" style="color:#666666;">业主评论</span></div> 
   <div class="x-col x-col-fixed" xid="col67" style="padding-bottom:0.3rem;width:auto;border-bottom:1px solid #eee;margin-right:0.3rem;">
    <span xid="span63" style="color:#666;" bind-text='val("pinglun")'></span></div> </div><div xid="div7" style="display:none;padding:0.3rem 0.3rem 0;">
   <textarea component="$UI/system/components/justep/textarea/textarea" class="form-control" xid="textarea1" style="height:1.8rem;background-color:#f2f2f2;border-radius:0.1rem;padding:0.2rem;font-size:0.26rem;" placeHolder="请输入您的评论"></textarea></div><div xid="div1" style="padding:0.3rem 0.3rem 0;margin-bottom:0.3rem;" class="clearfix">
           <span xid="span22" style="color:#7bc83e;margin-top:0.15rem;font-size:0.3rem;" class="pull-left" bind-visible="val(&quot;bx_sts&quot;) == '已申请'"><![CDATA[已申请]]></span>
           <span xid="span1" style="color:#7bc83e;margin-top:0.15rem;font-size:0.3rem;" class="pull-left" bind-visible="val(&quot;bx_sts&quot;) == '已处理'"><![CDATA[已处理]]></span><span xid="span4" style="color:#7bc83e;margin-top:0.15rem;font-size:0.3rem;" class="pull-left" bind-visible="val(&quot;bx_sts&quot;) == '已取消'"><![CDATA[已取消]]></span><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label pull-right" label="发表评论" xid="button1" style="display:none;border-color:#7bc83e;padding:0;color:#fff;border-radius:0.1rem;background-color:#7bc83e;width:1.8rem;height:0.6rem;line-height:0.6rem;display:block;font-size:0.26rem;" bind-visible='val("pinglun") ==null  &amp;&amp;  val("bx_sts") =="已处理"' onClick="button1Click">
            <i xid="i1"></i>
            <span xid="span23">发表评论</span></a> 
  
  </div> 
  <div xid="div10" style="height:0.2rem;background-color:#f0f0f0;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div></li> </ul> </div> 
  </div> 
      <div class="tab-pane" xid="sqContent">
       <div xid="div11" style="height:0.2rem;background-color:#f0f0f0;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div><div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="applyData">
   <ul class="x-list-template" xid="listTemplateUl2">
    <li xid="li2" style="background-color:white;" dir="ltr">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="color:#333;font-size:0.3rem;">
      <div class="x-col" xid="col23" style="margin-left:0.3rem;height:0.8rem;line-height:0.8rem;border-bottom:1px solid #eee;">
       <span xid="span19" style="color:#333333;">订单号</span></div> 
      <div class="x-col" xid="col22" style="height:0.8rem;border-bottom:1px solid #eee;"></div>
      <div class="x-col x-col-fixed" xid="col21" style="width:auto;margin-right:0.3rem;height:0.8rem;line-height:0.8rem;border-bottom:1px solid #eee;">
       <span xid="span20" style="color:#333333;" bind-text='val("number")'>101111000101</span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row8" style="margin-top:0.3rem;color:#666;font-size:0.26rem;">
      <div class="x-col" xid="col19">
       <span xid="span24" style="color:#666666;"><![CDATA[报修类型]]></span></div> 
      <div class="x-col" xid="col20"></div>
      <div class="x-col x-col-fixed" xid="col5" style="width:auto;">
       <span xid="span25" style="color:#666;" bind-text='val("state")'></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row7" style="margin-top:0.2rem;color:#666;font-size:0.26rem;">
      <div class="x-col" xid="col2">
       <span xid="span26" style="color:#666666;">报修事项</span></div> 
      <div class="x-col" xid="col18"></div>
      <div class="x-col x-col-fixed" xid="col3" style="width:auto;">
       <span xid="span27" style="color:#666;" bind-text='val("items")'></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row10" style="margin-top:0.2rem;color:#666;font-size:0.26rem;">
      <div class="x-col" xid="col16">
       <span xid="span14" style="color:#666666;">维修地点</span></div> 
      <div class="x-col" xid="col15"></div>
      <div class="x-col x-col-fixed" xid="col17" style="width:auto;">
       <span xid="span16" style="color:#666;" bind-text='val("bxdz")'></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9" bind-visible=' val("finish_time") !=""' style="margin-top:0.2rem;color:#666;font-size:0.26rem;">
      <div class="x-col" xid="col13" style="padding-bottom:0.3rem;margin-left:0.3rem;border-bottom:1px solid #eee;">
       <span xid="span15" style="color:#666666;">维修结束</span></div> 
      <div class="x-col" xid="col6" style="padding-bottom:0.3rem;border-bottom:1px solid #eee;"></div>
      <div class="x-col x-col-fixed" xid="col14" style="padding-bottom:0.3rem;width:auto;border-bottom:1px solid #eee;margin-right:0.3rem;">
       <span xid="span7" style="color:#666;" bind-text='val("finish_time")'></span></div> </div> 
     <div xid="div2" style="padding:0.3rem 0.3rem 0;margin-bottom:0.3rem;" class="clearfix">
      <span xid="span18" style="color:#7bc83e;margin-top:0.15rem;font-size:0.3rem;" class="pull-left" bind-visible="val(&quot;bx_sts&quot;) == '已申请'">已申请</span>
      <span xid="span28" style="color:#7bc83e;margin-top:0.15rem;font-size:0.3rem;" class="pull-left" bind-visible="val(&quot;bx_sts&quot;) == '已处理'">已处理</span>
      <span xid="span21" style="color:#7bc83e;margin-top:0.15rem;font-size:0.3rem;" class="pull-left" bind-visible="val(&quot;bx_sts&quot;) == '已取消'">已取消</span>
      <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label pull-right" label="发表评论" xid="button2" style="border-color:#7bc83e;padding:0;color:#fff;border-radius:0.1rem;background-color:#7bc83e;width:1.8rem;height:0.6rem;line-height:0.6rem;display:block;font-size:0.26rem;" bind-visible="val(&quot;bx_sts&quot;) == '已处理'" onClick="button2Click">
       <i xid="i2"></i>
       <span xid="span17">发表评论</span></a> </div> 
  <div xid="div13" style="height:0.2rem;background-color:#f0f0f0;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div></li> </ul> </div>
  </div> 
      <div class="tab-pane" xid="smContent">
       <div xid="div14" style="height:0.2rem;background-color:#f0f0f0;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div><div component="$UI/system/components/justep/list/list" class="x-list" xid="list3" data="dealData">
   <ul class="x-list-template" xid="listTemplateUl3">
    <li xid="li3" style="background-color:white;">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row13" style="color:#333;font-size:0.3rem;">
      <div class="x-col" xid="col44" style="margin-left:0.3rem;height:0.8rem;line-height:0.8rem;border-bottom:1px solid #eee;">
       <span xid="span53" style="color:#333333;">订单号</span></div> 
      <div class="x-col" xid="col45" style="height:0.8rem;border-bottom:1px solid #eee;"></div>
      <div class="x-col x-col-fixed" xid="col31" style="width:auto;margin-right:0.3rem;height:0.8rem;line-height:0.8rem;border-bottom:1px solid #eee;">
       <span xid="span49" style="color:#333333;" bind-text='val("number")'>101111000101</span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row15" style="margin-top:0.3rem;color:#666;font-size:0.26rem;">
      <div class="x-col" xid="col30">
       <span xid="span45" style="color:#666666;"><![CDATA[报修类型]]></span></div> 
      <div class="x-col" xid="col40"></div>
      <div class="x-col x-col-fixed" xid="col41" style="width:auto;">
       <span xid="span44" style="color:#666;" bind-text='val("state")'></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row12" style="margin-top:0.2rem;color:#666;font-size:0.26rem;">
      <div class="x-col" xid="col42">
       <span xid="span47" style="color:#666666;">报修事项</span></div> 
      <div class="x-col" xid="col24"></div>
      <div class="x-col x-col-fixed" xid="col43" style="width:auto;">
       <span xid="span46" style="color:#666;" bind-text='val("items")'></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row11" style="margin-top:0.2rem;color:#666;font-size:0.26rem;">
      <div class="x-col" xid="col26">
       <span xid="span54" style="color:#666666;">维修地点</span></div> 
      <div class="x-col" xid="col27"></div>
      <div class="x-col x-col-fixed" xid="col25" style="width:auto;">
       <span xid="span55" style="color:#666;" bind-text='val("bxdz")'></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row14" bind-visible=' val("finish_time") !=""' style="margin-top:0.2rem;color:#666;font-size:0.26rem;">
      <div class="x-col" xid="col29">
       <span xid="span56" style="color:#666666;">维修结束</span></div> 
      <div class="x-col" xid="col32"></div>
      <div class="x-col x-col-fixed" xid="col28" style="width:auto;">
       <span xid="span51" style="color:#666;" bind-text='val("finish_time")'></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row22" bind-visible=' val("pinglun") !=null' style="margin-top:0.2rem;color:#666;font-size:0.26rem;">
   <div class="x-col" xid="col64" style="padding-bottom:0.3rem;margin-left:0.3rem;border-bottom:1px solid #eee;">
    <span xid="span61" style="color:#666666;"><![CDATA[业主评论]]></span></div> 
   <div class="x-col x-col-fixed" xid="col65" style="padding-bottom:0.3rem;width:auto;border-bottom:1px solid #eee;margin-right:0.3rem;">
    <span xid="span60" style="color:#666;" bind-text='val("pinglun")'></span></div> </div><div xid="div3" style="padding:0.3rem 0.3rem 0;margin-bottom:0.3rem;" class="clearfix">
      <span xid="span50" style="color:#7bc83e;margin-top:0.15rem;font-size:0.3rem;" class="pull-left" bind-visible="val(&quot;bx_sts&quot;) == '已申请'">已申请</span>
      <span xid="span43" style="color:#7bc83e;margin-top:0.15rem;font-size:0.3rem;" class="pull-left" bind-visible="val(&quot;bx_sts&quot;) == '已处理'">已处理</span>
      <span xid="span48" style="color:#7bc83e;margin-top:0.15rem;font-size:0.3rem;" class="pull-left" bind-visible="val(&quot;bx_sts&quot;) == '已取消'">已取消</span>
      <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label pull-right" label="发表评论" xid="button3" style="border-color:#7bc83e;padding:0;color:#fff;border-radius:0.1rem;background-color:#7bc83e;width:1.8rem;height:0.6rem;line-height:0.6rem;display:block;font-size:0.26rem;" onClick="button3Click" bind-visible=' val("pinglun") ==null'>
       <i xid="i4"></i>
       <span xid="span52">发表评论</span></a> </div> 
  <div xid="div15" style="height:0.2rem;background-color:#f0f0f0;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div>
  </li> </ul> </div>
  </div> 
      <div class="tab-pane" xid="qxContent">
       <div xid="div17" style="height:0.2rem;background-color:#f0f0f0;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div><div component="$UI/system/components/justep/list/list" class="x-list" xid="list4" data="cancelData">
   <ul class="x-list-template" xid="listTemplateUl4">
    <li xid="li4" style="background-color:white;">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row18" style="color:#333;font-size:0.3rem;">
      <div class="x-col" xid="col55" style="margin-left:0.3rem;height:0.8rem;line-height:0.8rem;border-bottom:1px solid #eee;">
       <span xid="span31" style="color:#333333;">订单号</span></div> 
      <div class="x-col" xid="col56" style="height:0.8rem;border-bottom:1px solid #eee;"></div>
      <div class="x-col x-col-fixed" xid="col53" style="width:auto;margin-right:0.3rem;height:0.8rem;line-height:0.8rem;border-bottom:1px solid #eee;">
       <span xid="span41" style="color:#333333;" bind-text='val("number")'>101111000101</span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row20" style="margin-top:0.3rem;color:#666;font-size:0.26rem;">
      <div class="x-col" xid="col52">
       <span xid="span37" style="color:#666666;"><![CDATA[报修类型]]></span></div> 
      <div class="x-col" xid="col54"></div>
      <div class="x-col x-col-fixed" xid="col58" style="width:auto;">
       <span xid="span36" style="color:#666;" bind-text='val("state")'></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row17" style="margin-top:0.2rem;color:#666;font-size:0.26rem;">
      <div class="x-col" xid="col59">
       <span xid="span39" style="color:#666666;">报修事项</span></div> 
      <div class="x-col" xid="col46"></div>
      <div class="x-col x-col-fixed" xid="col60" style="width:auto;">
       <span xid="span38" style="color:#666;" bind-text='val("items")'></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row16" style="margin-top:0.2rem;color:#666;font-size:0.26rem;">
      <div class="x-col" xid="col48">
       <span xid="span32" style="color:#666666;">维修地点</span></div> 
      <div class="x-col" xid="col49"></div>
      <div class="x-col x-col-fixed" xid="col47" style="width:auto;">
       <span xid="span33" style="color:#666;" bind-text='val("bxdz")'></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row19" bind-visible=' val("finish_time") !=""' style="margin-top:0.2rem;color:#666;font-size:0.26rem;">
      <div class="x-col" xid="col51">
       <span xid="span34" style="color:#666666;">维修结束</span></div> 
      <div class="x-col" xid="col57"></div>
      <div class="x-col x-col-fixed" xid="col50" style="width:auto;">
       <span xid="span42" style="color:#666;" bind-text='val("finish_time")'></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row21" bind-visible=' val("jujue_message") !=null' style="margin-top:0.2rem;color:#666;font-size:0.26rem;">
   <div class="x-col" xid="col61" style="padding-bottom:0.3rem;margin-left:0.3rem;border-bottom:1px solid #eee;">
    <span xid="span58" style="color:#666666;"><![CDATA[物业回复]]></span></div> 
   <div class="x-col" xid="col63" style="padding-bottom:0.3rem;border-bottom:1px solid #eee;"></div>
   <div class="x-col x-col-fixed" xid="col62" style="padding-bottom:0.3rem;width:auto;border-bottom:1px solid #eee;margin-right:0.3rem;">
    <span xid="span59" style="color:#666;" bind-text='val("jujue_message")'></span></div> </div><div xid="div4" style="padding:0.3rem 0.3rem 0;margin-bottom:0.3rem;" class="clearfix">
      <span xid="span29" style="color:#7bc83e;margin-top:0.15rem;font-size:0.3rem;" class="pull-left" bind-visible="val(&quot;bx_sts&quot;) == '已申请'">已申请</span>
      <span xid="span35" style="color:#7bc83e;margin-top:0.15rem;font-size:0.3rem;" class="pull-left" bind-visible="val(&quot;bx_sts&quot;) == '已处理'">已处理</span>
      <span xid="span40" style="color:#7bc83e;margin-top:0.15rem;font-size:0.3rem;" class="pull-left" bind-visible="val(&quot;bx_sts&quot;) == '已取消'">已取消</span>
      </div> 
  </li> </ul> </div>
  </div> </div> </div> </div> </div></div>