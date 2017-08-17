<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="msgData" idColumn="address" confirmRefresh="false" onCustomRefresh="msgDataCustomRefresh">
   <column name="address" type="String" xid="xid1"></column>
  <column label="" name="address_id" type="String" xid="xid2"></column>
  <column label="" name="area_id" type="String" xid="xid3"></column>
  <column label="" name="area_info" type="String" xid="xid4"></column>
  <column name="city_id" type="String" xid="xid5"></column>
  <data xid="default1">[{&quot;id&quot;:&quot;1&quot;,&quot;name&quot;:&quot;张三&quot;,&quot;phone&quot;:&quot;13155454681&quot;,&quot;address&quot;:&quot;四川省 成都市 锦江区 置信家园 一栋一单元101号&quot;,&quot;moren&quot;:&quot;1&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;name&quot;:&quot;某某&quot;,&quot;phone&quot;:&quot;18484856211&quot;,&quot;address&quot;:&quot;四川省 成都市 锦江区 置信家园 一栋一单元101号&quot;,&quot;moren&quot;:&quot;0&quot;}]</data>
  <column name="dlyp_id" type="String" xid="xid6"></column>
  <column name="state" type="String" xid="xid7"></column>
  <column name="is_default" type="String" xid="xid8"></column>
  <column name="loupan_id" type="String" xid="xid9"></column>
  <column name="loupan_info" type="String" xid="xid10"></column>
  <column name="member_id" type="String" xid="xid11"></column>
  <column name="mob_phone" type="String" xid="xid12"></column>
  <column name="tel_phone" type="String" xid="xid13"></column>
  <column name="true_name" type="String" xid="xid14"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar top" xid="titleBar1" title="更改收货人">
     <div class="x-titlebar-left top-left" xid="left1">
      <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon left-btn" icon="icon-ios7-arrow-left" onClick="{operation:'window.close'}" xid="backBtn">
       <i class="icon-ios7-arrow-left" xid="i1"></i>
       <span xid="span3"></span></a> </div> 
     <div class="x-titlebar-title" xid="title1" style="font-weight: normal;">更改收货人</div> 
     <div class="x-titlebar-right reverse" xid="right1" style="padding-right:0.3rem;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label right-btn" label="提交" xid="registerBtn" onClick="registerBtnClick">
   <i xid="i8"></i>
   <span xid="span2" style="font-size:0.26rem;"><![CDATA[保存]]></span></a></div></div> </div> 
   <div class="x-panel-content" xid="content1" style="background-color:#eeeeee">
    <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel2" style="border:none;box-shadow:none;background-color:#fff;margin-top:0.2rem;">
     
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="height:1rem;color:#333;font-size:0.3rem;border-bottom:1px solid #eee;">
   <div class="x-col x-col-25" xid="col1" style="padding-left:0.3rem;line-height:0.9rem;"><span xid="span4"><![CDATA[联系人：]]></span>
  </div>
   <div class="x-col" xid="col12" style="margin-left:-0.2rem;"><input component="$UI/system/components/justep/input/input" class="form-control" xid="name" placeHolder="请输入收货人姓名" style="    background-color: #FFF;box-shadow:none;border:none;line-height:1rem;color:#333;font-size:0.3rem;height:0.9rem;" bind-ref='$model.msgData.ref("true_name")'></input></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="height:1rem;color:#333;font-size:0.3rem;">
   <div class="x-col x-col-25" xid="col5" style="padding-left:0.3rem;line-height:1rem;">
    <span xid="span5" style="color:#333;font-size:0.3rem;"><![CDATA[手机号：]]></span></div> 
   <div class="x-col" xid="col4" style="margin-left:-0.2rem;">
    <input component="$UI/system/components/justep/input/input" class="form-control" xid="phone" placeHolder="请输入收货人联系电话" style="    background-color: #FFF;box-shadow:none;border:none;line-height:1rem;height:1rem;color:#333;font-size:0.3rem;" bind-ref='$model.msgData.ref("mob_phone")'></input>
  </div> </div></div> 
    </div> </div></div>