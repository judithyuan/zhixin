<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:361px;left:31px;" onParamsReceive="modelParamsReceive"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="nameData" onCustomRefresh="nameDataCustomRefresh"></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" style="color: #333333;background-color:white;font-size: 18px;" title="帮帮忙">
   <div class="x-titlebar-left" xid="left1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button1" icon="icon-chevron-left" onClick='{"operation":"window.close"}'>
     <i xid="i1" class="icon-chevron-left"></i>
     <span xid="span1"></span></a> </div> 
   <div class="x-titlebar-title" xid="title1">帮帮忙</div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div><div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/list/list" class="x-list" xid="bangmangList" limit="-1">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" style="padding:0;margin:0;">
<!--   <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel3"> -->
   
<!--    <div class="panel-body" xid="body2" style="padding:0;"><div xid="div1" style="text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-lg btn-only-icon" label="button" xid="button2" icon="linear linear-volumehigh" style="float:left;margin-left:20px;padding:0;color:#989898;" onClick='{"operation":"window.close"}'> -->
<!--    <i xid="i1" class="linear linear-volumehigh"></i> -->
<!--    <span xid="span3"></span></a> -->
<!--   <span xid="span4" style="font-size:18px;"><![CDATA[报名信息]]></span> -->
<!--   </div></div></div> -->
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel2" style="box-shadow: 0 1px 2px rgba(255, 255, 255, 0);margin: 0;height:10px;background-color:#eeeeee;width:100%;border:none;border-radius: 0;">
   </div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label25" xid="labelEdit1" style="border-bottom: 1px solid #eeeeee;">
   <label class="x-label" xid="label1" style="margin-left:12px;"><![CDATA[姓名]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input1" style="border:none;font-size:14px;box-shadow: inset 0 1px 1px rgba(255, 102, 102, 0);"></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label25" xid="labelEdit2" style="border-bottom: 1px solid #eeeeee;">
   <label class="x-label" xid="label2" style="margin-left:12px;"><![CDATA[联系电话]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input2" style="font-size:14px;margin-right:20px;border: none;box-shadow: inset 0 1px 1px rgba(255, 102, 102, 0);" readonly="true"></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label25" xid="labelEdit3" style="border-bottom: 0px solid #eeeeee;">
   <label class="x-label" xid="label3" style="margin-left:12px;"><![CDATA[详细地址]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input3" style="font-size:14px;margin-right:0px;border: none;box-shadow: inset 0 1px 1px rgba(255, 102, 102, 0);" readonly="true"></input></div><div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel9" style="padding-bottom: 100%;border-radius: 0;background-color: #f0f0f0;border-color: #FFF;box-shadow: 0 1px 2px rgba(255, 255, 255, 0);">
   <div class="panel-body" xid="body8" style="padding:0;">
    <div xid="div7" style="text-align:center;">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
      <div class="x-col" xid="col17">
       <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label btn-block" label="我要报名" xid="button4" style="margin-top: 10px;background-color:#7bc93d;border:none;border-radius:5px;" onClick="button4Click">
   <i xid="i3"></i>
   <span xid="span15" style="font-size:large">我要报名</span></a></div> </div> </div> </div> </div>
  </li></ul> </div>
  </div>
   </div></div>