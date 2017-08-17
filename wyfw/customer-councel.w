<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:578px;left:13px;" onParamsReceive="modelParamsReceive" onLoad="modelLoad" onActive="modelActive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="picsData" idColumn="id">
   <column name="id" type="Integer" xid="xid5"></column>
   <data xid="default1">[{&quot;id&quot;:0}]</data>
   <column name="url" type="String" xid="xid6"></column></div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar top" xid="titleBar2" title="业主投诉">
   <div class="x-titlebar-left top-left" xid="left2">
    <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon left-btn" icon="icon-chevron-left" onClick="{operation:'window.close'}" xid="button4">
     <i class="icon-ios7-arrow-left icon-chevron-left" xid="i6"></i>
     <span xid="span9"></span></a> </div> 
   <div class="x-titlebar-title" xid="title2" style="font-weight:normal;font-size:0.36rem;">
    <span id="type" xid="span6"></span>业主投诉</div> 
   <div class="x-titlebar-right reverse top-right" xid="right2">
    
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="我的投诉" xid="toCompalint" style="font-size:0.26rem;color:#999999;text-align:bottom;height:auto;" onClick="toCompalintClick">
   <span xid="span30" style="vertical-align:bottom;">我的投诉</span><i xid="i4"></i>
   </a></div> </div></div>  
    <div class="x-panel-content" xid="content1" style="background-color:#eee;"><div xid="div2" style="background-color:white;height:3.5rem;border-bottom:1px solid #eee"><textarea component="$UI/system/components/justep/textarea/textarea" class="form-control" xid="textarea1wybx" placeHolder="请填写您投诉的内容" style="border:none;font-size:0.3rem;padding-left:0;height:3rem;color:#333;padding:0.3rem;" onChange="miaoshu" bind-keyup="miaoshu" maxlength="500"></textarea><span xid="span1" style="color:#999;font-size:0.24rem;float:right;margin-right:0.3rem"><![CDATA[500字以内]]></span>
  
  </div>
  <div component="$UI/system/components/justep/attachment/attachmentSimple" xid="attatchpic" bind-ref="picsData.ref('url')" style="padding:0.15rem 0.3rem;background-color:#fff;">
   <div class="x-attachment" xid="div14" style="padding:0">
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
       </div> </div> 
     <div class="x-attachment-cell" xid="div20" style="display:none;padding-left:0;">
      <div class="x-attachment-item x-item-upload" xid="div21"></div></div> 
     <div style="clear:both;padding-left:0;" xid="div22"></div></div> </div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="display:none;">
   <div class="x-col x-col-25" xid="col12"></div>
   <div class="x-col x-col-75" xid="col11">
    <a xid="a1" class="file">上传图片、照相
     <input type="file" accept="image/*" name="attachment" id="attachment" xid="file1"></input></a> 
    <input type="text" name="trueattachment" id="trueattachment" style="display:none;" xid="input4"></input></div> </div><div xid="div5" style="padding:0 0.3rem;width:100%;margin-top:0.4rem;">
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