<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:386px;left:192px;" onParamsReceive="modelParamsReceive" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="picsData" idColumn="id">
   <column name="id" type="Integer" xid="xid5"></column>
   <data xid="default1">[{&quot;id&quot;:0}]</data>
   <column name="url" type="String" xid="xid6"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" style="color:#303030;background-color:#F9F9F9;" xid="titleBar1">
   <div class="x-titlebar-left" xid="left1">
    <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}" xid="backBtn">
     <i class="icon-chevron-left" xid="i1"></i>
     <span xid="span1"></span></a> </div> 
   <div class="x-titlebar-title" xid="title1" style="font-weight:normal;">物业报修
  <span id="type" xid="span7"></span></div>
   <div class="x-titlebar-right reverse" xid="right1"></div>
  </div></div>  
    <div class="x-panel-content" xid="content1" style="background-color:#eee;"><div xid="div1" style="background-color:white;margin-top:10px;padding:0px 5px 0px 5px;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="padding:0px;border-bottom:1px solid #eee;line-height:38px;">
   <div class="x-col x-col-25" xid="col1"><span xid="span2"><![CDATA[联系人]]></span></div>
   <div class="x-col" xid="col2"><input component="$UI/system/components/justep/input/input" class="form-control" xid="name" placeHolder="请输入您的姓名"></input></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="padding:0px;border-bottom:1px solid #eee;line-height:38px;">
   <div class="x-col x-col-25" xid="col5">
    <span xid="span3"><![CDATA[联系电话]]></span></div> 
   <div class="x-col" xid="col4"><input component="$UI/system/components/justep/input/input" class="form-control" xid="mobile" placeHolder="请输入您的手机号"></input></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="padding:0px;border-bottom:1px solid #eee;line-height:38px;">
   <div class="x-col x-col-25" xid="col7">
    <span xid="span4"><![CDATA[维修地址]]></span></div> 
   <div class="x-col" xid="col6"><input component="$UI/system/components/justep/input/input" class="form-control" xid="addr" placeHolder="请输入具体的维修地址信息"></input></div></div></div>
  <div xid="div2" style="margin-top:10px;background-color:white;padding:5px 0px 20px 10px;"><h4 xid="h41" style="font-size:15px;color:#414141;margin-left:10px;"><![CDATA[描述]]></h4>
  <textarea component="$UI/system/components/justep/textarea/textarea" class="form-control" xid="textarea1" placeHolder="请输入描述信息" style="border:none;border-top:1px solid #eee;border-bottom:1px solid #eee;height:100px;"></textarea><div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="border-bottom:1px solid #eee;">
   <div class="x-col x-col-75" xid="col10">
    <div component="$UI/system/components/justep/attachment/attachmentSimple" xid="attatchpic" bind-ref="picsData.ref('url')">
   <div class="x-attachment" xid="div14">
    <div class="x-attachment-content" xid="div15" style="border:none">
     <div class="x-doc-process  " xid="div16">
      <div class="progress-bar x-doc-process-bar" role="progressbar" style="width:0%;" xid="progressBar2"></div></div> 
     <div data-bind="foreach:$attachmentItems" xid="div17" class="clearfix " bind-visible="$attachmentItems.get().length&gt;0">
      <div class="x-attachment-cell" xid="div18">
       <div class="x-attachment-item x-item-other" data-bind="style:{backgroundImage:($model.previewPicture.bind($model,$object))()}" xid="divimage" bind-click="divimageClick">
        <a class="x-remove-barget" xid="a2" dir="rtl" style="visibility:hidden;"></a></div> </div> </div> 
     <div xid="div3" class="x-attachment-cell" bind-visible="$attachmentItems.get().length&lt;3">
      <div xid="div13" class="x-attachment-item" style="margin-left:0;" bind-click="div5Click">
       <img src="$UI/zhixin/img/wyfw/phone.png" alt="" xid="phone" height="48px"></img></div> </div> 
     <div xid="div14" class="x-attachment-cell" bind-visible="$attachmentItems.get().length&lt;3">
      <div xid="div15" class="x-attachment-item" style="margin-left:0;" bind-click="div1Click">
       <img src="$UI/zhixin/img/wyfw/picture.png" alt="" xid="picture" height="48px"></img></div> </div> 
     <div class="x-attachment-cell" xid="div20" style="display:none;">
      <div class="x-attachment-item x-item-upload" xid="div21"></div></div> 
     <div style="clear:both;" xid="div22"></div></div> </div> </div></div> 
  </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="display:none;">
   <div class="x-col x-col-25" xid="col12"></div>
   <div class="x-col x-col-75" xid="col11">
    <a xid="a1" class="file">上传图片、照相
     <input type="file" accept="image/*" name="attachment" id="attachment" xid="file1"></input></a> 
    <input type="text" name="trueattachment" id="trueattachment" style="display:none;" xid="input4"></input></div> </div></div>
  <h5 xid="h51" style="text-align:right;margin-top:10px;color:#9C9C9C;margin-right:10px;"><![CDATA[9:00-17:00为及时处理时间，其余时间为次日处理]]></h5>
  <div xid="div5" style="padding-right:10px;padding-left:10px;margin-top:25px;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="提交" xid="button1" style="background-color:#7bc93d;border:none;" onClick="button1Click">
    <i xid="i2"></i>
    <span xid="span16" style="font-size:large;">提交</span></a> </div>
  </div>
  </div> 
</div>