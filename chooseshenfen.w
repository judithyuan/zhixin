<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:113px;left:45px;height:auto;" onActive="modelActive"/> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar text-orange" xid="titleBar" style="background-color:white;" title="添加房屋信息">
   <div class="x-titlebar-left" xid="left1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-icon-left btn-only-icon text-orange" xid="button1" icon="icon-chevron-left" onClick="{operation:'window.close'}">
     <i xid="i7" class="icon-chevron-left"></i>
     <span xid="span3"></span></a> </div> 
   <div class="x-titlebar-title" xid="title1">添加房屋信息</div>
   <div class="x-titlebar-right reverse" xid="right1"></div>
  </div></div>
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label65" xid="labelEdit1" style="background-color:white;margin:10px 0 0 0;" bind-click="yzhuBtn">
   <label class="x-label" xid="label1" style="font-size:18px;text-align:right;"><![CDATA[我是业主]]></label>
   <div class="x-edit" xid="div1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right" label="button" xid="button2" icon="icon-chevron-right" style="margin-right:15px;">
   <i xid="i1" class="icon-chevron-right"></i>
   <span xid="span2"></span></a></div></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label65" xid="labelEdit2" style="background-color:white;margin:1px 0 0 0;" bind-click="jiashuBtn">
   <label class="x-label" xid="label2" style="font-size:18px;text-align:right;"><![CDATA[我是家属]]></label>
   <div class="x-edit" xid="div2">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right" label="button" xid="button3" icon="icon-chevron-right" style="margin-right:15px;">
     <i xid="i2" class="icon-chevron-right"></i>
     <span xid="span4"></span></a> </div> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label65" xid="labelEdit3" style="background-color:white;margin:1px 0 0 0;" bind-click="zuhuBtn">
   <label class="x-label" xid="label3" style="font-size:18px;text-align:right;"><![CDATA[我是租户]]></label>
   <div class="x-edit" xid="div3">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right" label="button" xid="button4" icon="icon-chevron-right" style="margin-right:15px;">
     <i xid="i3" class="icon-chevron-right"></i>
     <span xid="span5"></span></a> </div> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label65" xid="labelEdit8" style="display:none;position:relative;background-color:white;margin:1px 0 0 0;">
   <label class="x-label" xid="label8" style="font-size:18px;text-align:right;"><![CDATA[当前身份]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input2" readonly="true" style="background-color:white;"></input></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label65" xid="labelEdit6" style="display:none;position:relative;background-color:white;margin:1px 0 0 0;">
   <label class="x-label" xid="label6" style="font-size:18px;text-align:right;"><![CDATA[当前城市]]></label>
   <input type="hidden" xid="cid" bind-value="$model.getdist('cid')"></input>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="ctxt" readonly="true" bind-value="$model.getdist('ctxt')" style="background-color:white;"></input>
   </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label65" xid="labelEdit7" style="display:none;position:relative;background-color:white;margin:1px 0 0 0;">
   <label class="x-label" xid="label6" style="font-size:18px;text-align:right;"><![CDATA[当前楼盘]]></label>
   <input type="hidden" xid="lid" bind-value="$model.getdist('lid')"></input>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="ltxt" readonly="true" bind-value="$model.getdist('ltxt')" style="background-color:white;"></input>
   </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label65" xid="labelEdit9" style="display:none;position:relative;background-color:white;margin:1px 0 0 0;">
   <label class="x-label" xid="label9" style="font-size:18px;text-align:right;"><![CDATA[当前房间]]></label>
   <input type="hidden" xid="bid" bind-value="$model.getdist('bid')"></input>
   <input type="hidden" xid="rid" bind-value="$model.getdist('rid')"></input>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="brtxt" readonly="true" bind-value="$model.getdist('brtxt')" style="background-color:white;"></input>
   </div>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default center-block" label="下一步" xid="registerBtn" style="margin: 10px;background-color:#cccccc;color:white;border:none;" onClick="registerBtnClick">
   <i xid="i8"></i>
   <span xid="span1" style="font-size:large">下一步</span></a>
  </div>
   <div class="x-panel-bottom" xid="bottom1"></div></div></div>