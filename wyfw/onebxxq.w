<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:578px;left:13px;" onParamsReceive="modelParamsReceive" onLoad="modelLoad" onActive="modelActive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="picsData" idColumn="id">
   <column name="id" type="Integer" xid="xid5"></column>
   <data xid="default1">[{&quot;id&quot;:0}]</data>
   <column name="url" type="String" xid="xid6"></column></div>
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
  <column name="state" type="String" xid="xid27"></column>
  <column name="loupan_info" type="String" xid="xid1"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar top" xid="titleBar2" title="物业报修">
   <div class="x-titlebar-left top-left" xid="left2">
    <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon left-btn" icon="icon-chevron-left" onClick="{operation:'window.close'}" xid="button4">
     <i class="icon-ios7-arrow-left icon-chevron-left" xid="i6"></i>
     <span xid="span9"></span></a> </div> 
   <div class="x-titlebar-title" xid="title2" style="font-weight:normal;font-size:0.36rem;">物业报修
    <span id="type" xid="span6"></span></div> 
   <div class="x-titlebar-right reverse top-right" xid="right2">
    
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="报修记录" xid="button3baoxiujilu" style="font-size:0.26rem;color:#999999;text-align:bottom;height:auto;" onClick="button3baoxiujilu">
   <span xid="span30" style="vertical-align:bottom;">报修记录</span><i xid="i4"></i>
   </a></div> </div></div>  
    <div class="x-panel-content" xid="content1" style="background-color:#eee;"><div xid="userInfo" style="background-color:white;padding:0 0.3rem;display:flex;font-size:0.3rem;" align="left" dir="ltr">
   
  <div xid="div1" style="width:95%;padding:0.16rem 0;"><div xid="div9" style="display:flex;">
  
  
  </div>
  
  
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="height:0.6rem;align-items:center;">
   <div class="x-col" xid="col2"><span xid="span1"><![CDATA[报修人：]]></span><span xid="span2name" bind-text=' $model.chooseAdrData.val("true_name")'></span></div>
   <div class="x-col" xid="col3"><input component="$UI/system/components/justep/input/input" xid="mobile" bind-ref="imgbxnumber" readonly="true" style="font-size:0.3rem;background-color:white;text-align:right;" class="form-control pull-right"></input></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="align-items:center;height:0.6rem;">
   <div class="x-col" xid="col7"><div component="$UI/system/components/justep/output/output" class="x-output clearfix" bind-ref='$model.adrbaoxiu()' style="width:100%;color:#999999;" xid="addr"></div></div></div></div>
  <div xid="div4" style="font-size:large;width:10%;position:absolute;right:0;top:0.5rem;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="button6" icon="icon-ios7-arrow-right" style="color:#999999;position:absolute;right:0.3rem;">
   <i xid="i9" class="icon-ios7-arrow-right" style="font-size:0.4rem;"></i>
   <span xid="span12"></span></a></div></div><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1addrorder" data="chooseAdrData" style="display:none;background-color:#f9f9f9;">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" style="padding:0px 10px;border-bottom:1px solid #eee;" bind-click="li1Click">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row11">
      <div class="x-col x-col-fixed" xid="col20" style="width:auto;">
       <span component="$UI/system/components/justep/button/radio" class="x-radio" xid="radio1" name="num" checked="false" bind-value='ref("state")' checkedValue="1"></span></div> 
      <div class="x-col" xid="col17">
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="padding:0;">
        <div class="x-col" xid="col6" style="padding:0;">
         <div component="$UI/system/components/justep/output/output" class="x-output" xid="output1" style="font-weight:bold;line-height: 2em;margin:0 0 0 15px;font-size:16px;float:left;color:#333333;padding:0;max-height:2em;" bind-ref='ref("true_name")'></div></div> 
        <div class="x-col" xid="col9" style="padding:0;text-align: right;margin-right: 0.2em;">
         <span xid="span4" bind-text='val("mob_phone")' style="line-height: 2em;"></span></div> </div> 
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10" style="padding:0;margin-top: 2px;margin-bottom: 5px;">
        <div class="x-col" xid="col15" style="padding:0;">
         <p xid="p1" style="line-height: 2em;margin:0 0 0 15px;font-size:12px;float:left;color:#999999;">
          <div component="$UI/system/components/justep/output/output" class="x-output" xid="output3" style="line-height: 2em;margin:0 0 0 15px;font-size:14px;float:left;color:#999999;padding:0;max-height:2em;" bind-ref='ref("loupan_info")'></div></p> </div> </div> </div> </div> </li> </ul> </div><div xid="div2" style="margin-top:0.1rem;background-color:white;padding-top:0.05rem;padding-left:0.3rem;"><h4 xid="h41" style="font-size:0.3rem;color:#333333;"><![CDATA[问题描述]]></h4>
  <textarea component="$UI/system/components/justep/textarea/textarea" class="form-control" xid="textarea1wybx" placeHolder="请描述一下报修的具体地点、损坏原因、损坏程度等，以便工作人员为您提供更好的服务。" style="border:none;border-top:1px solid #fff;border-bottom:1px solid #eee;font-size:0.3rem;padding-left:0;height:2rem;color:#333" onChange="miaoshu" bind-keyup="miaoshu"></textarea><div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="padding-left:0;">
   <div class="x-col x-col-fixed" xid="col10" style="padding-left:0;width:auto;">
    <div component="$UI/system/components/justep/attachment/attachmentSimple" xid="attatchpic" bind-ref="picsData.ref('url')" style="padding:0.15rem 0;">
   <div class="x-attachment" xid="div14" style="padding-left:0;">
    <div class="x-attachment-content" xid="div15" style="border:none;padding-left:0;">
     <div class="x-doc-process  " xid="div16" style="padding-left:0;">
      <div class="progress-bar x-doc-process-bar" role="progressbar" style="width:0%;" xid="progressBar2"></div></div> 
     <div data-bind="foreach:$attachmentItems" xid="div17" class="clearfix " bind-visible="$attachmentItems.get().length&gt;0" style="padding-left:0;">
      <div class="x-attachment-cell" xid="div18">
       <div class="x-attachment-item x-item-other" data-bind="style:{backgroundImage:($model.previewPicture.bind($model,$object))()}" xid="divimage" bind-click="divimageClick">
        <a class="x-remove-barget" xid="a2" dir="rtl" style="visibility:hidden;"></a></div> </div> </div> 
     <div xid="div3" class="x-attachment-cell" bind-visible="$attachmentItems.get().length&lt;5" style="padding-left:0;">
      <div xid="div13" class="x-attachment-item" style="margin-left:0;padding-left:0;" bind-click="div5Click">
       <img src="$UI/zhixin/img/wyfw/phone.png" alt="" xid="phone" height="48px"></img></div> </div> 
     <div xid="div14" class="x-attachment-cell" bind-visible="$attachmentItems.get().length&lt;3" style="padding-left:0;">
      <div xid="div15" class="x-attachment-item" style="margin-left:0;" bind-click="div1Click">
       <img alt="" xid="picture" height="48px"></img></div> </div> 
     <div class="x-attachment-cell" xid="div20" style="display:none;padding-left:0;">
      <div class="x-attachment-item x-item-upload" xid="div21"></div></div> 
     <div style="clear:both;padding-left:0;" xid="div22"></div></div> </div> </div></div> 
  </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="display:none;">
   <div class="x-col x-col-25" xid="col12"></div>
   <div class="x-col x-col-75" xid="col11">
    <a xid="a1" class="file">上传图片、照相
     <input type="file" accept="image/*" name="attachment" id="attachment" xid="file1"></input></a> 
    <input type="text" name="trueattachment" id="trueattachment" style="display:none;" xid="input4"></input></div> </div></div>
  <div xid="div10" style="margin-top:0.4rem;"><p xid="p2" style="color:#999999;text-align:center;"><![CDATA[9:00-17:00为及时处理时间，其余时间段次日处理]]></p></div><div xid="div5" style="padding:0 0.3rem;width:100%;margin-top:0.4rem;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="提交物业" xid="button1" style="background-color:#e3e3e3;border:none;font-weight:bold;" onClick="button1Click">
    <i xid="i2"></i>
    <span xid="span16" style="font-size:0.36rem;"><![CDATA[提交物业]]></span></a> </div>
  </div>
  </div> 
<div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="popOver1onebx">
   <div class="x-popOver-overlay" xid="div6"></div>
   <div class="x-popOver-content" xid="div7">
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="picsData">
   <ul class="x-list-template" xid="listTemplateUl2">
    <li xid="li2" bind-click="li2Click"><img src="" alt="" xid="image1" bind-attr-src='val("url")'></img></li></ul> </div></div></div></div>