<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:285px;left:68px;" onParamsReceive="modelParamsReceive"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="gonggaoData" idColumn="id" onCustomRefresh="gonggaoDataCustomRefresh">
   <column name="id" type="String" xid="xid4"></column>
  <column name="title" type="String" xid="xid5"></column>
  <column name="add_time" type="String" xid="xid6"></column>
  <data xid="default2">[{&quot;id&quot;:&quot;1&quot;,&quot;title&quot;:&quot;关于国庆节中秋节小区安全&quot;,&quot;time&quot;:&quot;2016-9-25&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;title&quot;:&quot;关于小区问题 &quot;,&quot;time&quot;:&quot;2016-9-24&quot;}]</data>
  <column name="desc" type="String" xid="xid7"></column>
  <column name="content" type="String" xid="xid8"></column>
  <column name="up_time" type="String" xid="xid9"></column>
  <column name="yuedu" type="String" xid="xid1"></column>
  <column name="nrxt" type="String" xid="xid2"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar top" xid="titleBar1" title="公告详情">
   <div class="x-titlebar-left top-left" xid="left1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon left-btn" label="button" xid="button1" icon="icon-chevron-left" onClick='{"operation":"window.close"}'>
     <i xid="i1" class="icon-ios7-arrow-left icon-chevron-left"></i>
     <span xid="span1"></span></a> </div> 
   <div class="x-titlebar-title" xid="title1" style="font-weight:normal;font-size:0.36rem;">公告详情</div>
   <div class="x-titlebar-right reverse top-right" xid="right1" style="position:relative;line-height:48px;"></div></div></div><div class="x-panel-content" xid="content1" style="overflow-x: hidden;background-color:#f0f0f0;"><div component="$UI/system/components/justep/list/list" class="x-list" xid="gonggaoList" limit="1" data="gonggaoData" style="background-color:#eeeeee;">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" style="padding:0.4rem 0.3rem;background-color:white;">
<!--   <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel3"> -->
   
<!--    <div class="panel-body" xid="body2" style="padding:0;"><div xid="div1" style="text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-lg btn-only-icon" label="button" xid="button2" icon="linear linear-volumehigh" style="float:left;margin-left:20px;padding:0;color:#989898;" onClick='{"operation":"window.close"}'> -->
<!--    <i xid="i1" class="linear linear-volumehigh"></i> -->
<!--    <span xid="span3"></span></a> -->
<!--   <span xid="span4" style="font-size:18px;"><![CDATA[报名信息]]></span> -->
<!--   </div></div></div> -->
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel4">
   
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label-top x-label100" xid="labelEdit1">
   <label class="x-label" xid="label1" style="font-weight:bold;font-size:0.46rem;" bind-text='val("title")'><![CDATA[这里是公告标题]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output1" style="color:#333333;line-height:0.5rem;"></div><span xid="span5" style="color:#333333;font-size:0.26rem;margin-top:0.2rem;" bind-text='val("add_time")'><![CDATA[2017年3月7日   17:11:14]]></span></div></div><div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel3">
   <div class="panel-body" xid="body1">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="padding:0;margin: 10px 20px;">
     <div class="x-col" xid="col6"></div>
     <div class="x-col x-col-fixed" xid="col4" style="width:auto;">
      <img src="" alt="" xid="image4" bind-attr-src=' val("nrxt")' style="width:100%;"></img></div> 
     <div class="x-col" xid="col5" style="margin-right:30px;"></div></div> </div> </div><div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel5" style="margin:0;margin-top:0.2rem;">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label-top x-label30" xid="labelEdit2">
    <label class="x-label" xid="label2"><![CDATA[]]></label>
    <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output2" bind-ref='ref("content")' style="width:100%;color:#333333;"></div></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="margin-top:0.6rem;">
   <div class="x-col" xid="col1" style="font-size:0.28rem;"><img src="$UI/zhixin/img/shop/eyes.png" alt="" xid="image2" style="width:0.3rem;"></img><span xid="span3" bind-text='val("yuedu")' style="color:#999999;margin-left:0.14rem;vertical-align:middle;"><![CDATA[100次]]></span>
  <img src="$UI/zhixin/img/shop/up.png" alt="" xid="image1" style="width:0.3rem;margin-left:0.24rem;"></img>
  <span xid="span4" style="color:#999999;margin-left:0.14rem;vertical-align:middle;">100次</span></div>
   </div>
  
  </li></ul> </div>
  <h5 xid="h51" style="display:none;padding:0 0.3rem;font-size:0.3rem;line-height:0.8rem;color:#333333;background-color:#f0f0f0;"><![CDATA[最新评论]]></h5>
  <div xid="reviewZone" class="clearfix" style="display:none;background-color:white;padding:0.35rem 0.3rem 0.3rem 0.2rem;margin-bottom:0.66rem;"><div xid="portraitBox" style="height:1rem;width:1rem;overflow:hidden;" class="pull-left"><img src="$UI/zhixin/img/error.png" alt="" xid="image3" style="width:100%;"></img></div>
  <div xid="review" class="pull-right" style="width:5.6rem;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="color:#999999;font-size:0.26rem;padding:0.2rem 0;">
   <div class="x-col x-col-33" xid="col7"><span xid="span6"><![CDATA[158****9090]]></span></div>
   <div class="x-col" xid="col8"><span xid="span7" class="pull-right"><![CDATA[2017-03-08  12:00:09]]></span></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col" xid="col13"><p xid="p1"><![CDATA[此处为评论内容此处为评论内容此处为评论内容此处为评论内容此处为评论内容此处为评论内容]]></p></div></div>
  <div xid="div4" style="color:#999999;font-size:0.28rem;" class="pull-right" dir="ltr"><img src="$UI/zhixin/img/shop/up.png" alt="" xid="image6" style="width:0.3rem;"></img><span xid="span9" style="margin-right:0.32rem;margin-left:0.14rem;vertical-align:middle;"><![CDATA[10]]></span>
  <img src="$UI/zhixin/img/shop/down.png" alt="" xid="image5" style="width:0.3rem;"></img>
  <span xid="span10" style="vertical-align:middle;margin-left:0.14rem;"><![CDATA[13]]></span>
  </div></div></div>
  <div xid="div1" align="left" class="clearfix bottom-fixed" style="display:none;-moz-box-shadow:0 -2px 5px #eeeeee; -webkit-box-shadow:0 -2px 5px #eeeeee; box-shadow:0 -2px 5px #eeeeee;" dir="ltr"><div xid="div2" class="pull-left"><input component="$UI/system/components/justep/input/input" class="form-control" xid="input1" style="border-radius:0.66rem;width:5.94rem;height:0.66rem;padding:0 0.33rem;" placeHolder="请输入评论内容"></input></div>
  <div xid="div3" style="background-color:#7bc83e;width:0.66rem;height:0.66rem;color:white;border-radius:0.33rem;line-height:0.66rem;font-size:0.26rem;text-align:center;" class="pull-right"><span xid="span8"><![CDATA[发送]]></span></div></div></div>
   </div></div>