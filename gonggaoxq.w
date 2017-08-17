<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:236px;left:50px;" onParamsReceive="modelParamsReceive"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="1111" idColumn="time"><column name="time" type="String" xid="xid1"></column>
  <column name="content" type="String" xid="xid2"></column>
  <data xid="default1">[{&quot;time&quot;:&quot;2016-9-28&quot;,&quot;content&quot;:&quot;内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容&quot;},{&quot;time&quot;:&quot;2016-9-29&quot;,&quot;content&quot;:&quot;大的撒发生的发生的各地方持续保持想从现在坟头反而该如何变性淀粉直线方程申达股份第三个小城镇叙事风格都是些v才行v富商大贾第三方v才是&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="gonggaoData" idColumn="id" onCustomRefresh="gonggaoDataCustomRefresh">
   <column name="id" type="String" xid="xid4"></column>
  <column name="title" type="String" xid="xid5"></column>
  <column name="add_time" type="String" xid="xid6"></column>
  <data xid="default2">[{&quot;id&quot;:&quot;1&quot;,&quot;title&quot;:&quot;关于国庆节中秋节小区安全&quot;,&quot;time&quot;:&quot;2016-9-25&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;title&quot;:&quot;关于小区问题 &quot;,&quot;time&quot;:&quot;2016-9-24&quot;}]</data>
  <column name="desc" type="String" xid="xid7"></column>
  <column name="content" type="String" xid="xid8"></column>
  <column name="up_time" type="String" xid="xid9"></column>
  <column name="yuedu" type="String" xid="xid3"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" style="color:#333;background-color:#fafafa;" title="小区公告">
   <div class="x-titlebar-left" xid="left1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button1" icon="icon-chevron-left" onClick='{"operation":"window.close"}'>
     <i xid="i1" class="icon-chevron-left"></i>
     <span xid="span1"></span></a> </div> 
   <div class="x-titlebar-title" xid="title1">小区公告</div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div><div class="x-panel-content" xid="content1" style="overflow-x: hidden;background-color:#eeeeee;"><div component="$UI/system/components/justep/list/list" class="x-list" xid="gonggaoList" limit="-1" data="gonggaoData" style="background-color:#eeeeee" bind-click="gonggaoListClick">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" style="padding:0;margin:0 10px;">
<!--   <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel3"> -->
   
<!--    <div class="panel-body" xid="body2" style="padding:0;"><div xid="div1" style="text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-lg btn-only-icon" label="button" xid="button2" icon="linear linear-volumehigh" style="float:left;margin-left:20px;padding:0;color:#989898;" onClick='{"operation":"window.close"}'> -->
<!--    <i xid="i1" class="linear linear-volumehigh"></i> -->
<!--    <span xid="span3"></span></a> -->
<!--   <span xid="span4" style="font-size:18px;"><![CDATA[报名信息]]></span> -->
<!--   </div></div></div> -->
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel2" style="height:10px;background-color:#eeeeee;width:100%;border:none;border-radius: 0;">
   </div><div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel4">
   
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label-top x-label80" xid="labelEdit1" style="margin-left:20px;">
   <label class="x-label" xid="label1" style="font-weight:bold;font-size:16px;" bind-text='val("title")'><![CDATA[这里是公告标题]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output1" bind-ref='ref("add_time")' style="width:100%;"></div></div></div><div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel5" style="margin:0;">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label-top x-label30" xid="labelEdit2" style="margin-left:20px;margin-right:20px;border-bottom:1px solid #eeeeee;">
    <label class="x-label" xid="label2"><![CDATA[]]></label>
    <div component="$UI/system/components/justep/output/output" class="x-output x-edit output2gonggao" xid="output2" bind-ref='ref("content")' style="width:100%;"></div></div> </div><div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel7">
   
   <div class="panel-body" xid="body2"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="padding:0;margin: 10px 20px;">
   <div class="x-col" xid="col1"><span xid="span3" bind-text="'阅读：'+val(&quot;yuedu&quot;)"><![CDATA[阅读：100次]]></span></div>
   <div class="x-col" xid="col2"></div>
   <div class="x-col" xid="col3" style="margin-right:30px;" bind-click="col3Click"><img src="$UI/zhixin/img/main/more.png" alt="" xid="image1" style="height:15px;float:right;margin-left:10px;margin-top: 3px;"></img><span xid="span4" style="float:right;"><![CDATA[阅读全文]]></span>
  </div></div></div>
   </div></li></ul> </div>
  </div>
   </div></div>