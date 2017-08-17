<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:399px;left:274px;" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="roomData" onCustomRefresh="roomDataCustomRefresh" idColumn="id"><column name="id" type="String" xid="xid1"></column>
  <column name="dizhi" type="String" xid="xid2"></column>
  <column name="name" type="String" xid="xid3"></column>
  <column name="telphone" type="String" xid="xid4"></column>
  <column name="state" type="String" xid="xid5"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="roomnewData" onCustomRefresh="roomnewDataCustomRefresh" idColumn="id"><column label="id" name="id" type="String" xid="xid6"></column>
  <column label="地址" name="dizhi" type="String" xid="xid7"></column>
  <column label="姓名" name="name" type="String" xid="xid8"></column>
  <column label="身份" name="shenfen" type="String" xid="xid9"></column>
  <column label="电话" name="telphone" type="String" xid="xid10"></column>
  <column label="code" name="code" type="String" xid="xid11"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="switchDta" idColumn="addr" confirmRefresh="false" autoNew="true" onCustomRefresh="switchDtaCustomRefresh">
   <column name="addr" type="String" xid="column1"></column>
  <column name="avatar" type="String" xid="column2"></column>
  <data xid="default1">[{&quot;addr&quot;:&quot;鲜花大院 一栋一单元&quot;,&quot;id&quot;:&quot;1&quot;},{&quot;addr&quot;:&quot;丽都花园内侧 一栋二单元&quot;,&quot;id&quot;:&quot;2&quot;},{&quot;addr&quot;:&quot;天府世家 二栋一单元&quot;,&quot;id&quot;:&quot;3&quot;}]</data>
  <column name="state" type="String" xid="column3"></column>
  <column name="district_id" type="String" xid="xid12"></column>
  <column label="租户" name="identity" type="String" xid="xid13"></column>
  <column name="name" type="String" xid="xid14"></column>
  <column name="password" type="String" xid="xid15"></column>
  <column name="room_id" type="String" xid="xid16"></column>
  <column name="state" type="String" xid="xid17"></column>
  <column name="telphone" type="String" xid="xid18"></column>
  <column name="user_id" type="String" xid="xid19"></column>
  <column label="1（当前户）" name="default" type="String" xid="xid20"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1" style="background-color:#eee;"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="我的房屋" class="x-titlebar top" xid="titleBar1">
   <div class="x-titlebar-left top-left" xid="left1">
    <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon left-btn" icon="icon-ios7-arrow-left" onClick="{operation:'window.close'}" xid="backBtn">
     <i class="icon-ios7-arrow-left" xid="i1"></i>
     <span xid="span1"></span></a> </div> 
   <div class="x-titlebar-title" style="font-weight: normal;font-size:0.36rem;" xid="title1">我的房屋</div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>  
    <div class="x-panel-content" xid="content1" style="background-color:#eee;">
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel2" style="margin-bottom:0px;height:10px;background-color:#eeeeee;;border-radius:0;"></div><div component="$UI/system/components/justep/list/list" class="x-list" xid="list4" data="switchDta">
   <ul class="x-list-template" xid="listTemplateUl4">
    <li xid="li4" style="background-color:white;padding-left:0.3rem;padding-top:0.2rem;margin-bottom:0.2rem;" bind-click="li1Click">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="height:0.56rem;color:#333;font-weight:nomal;line-height:0.56rem;">
   <div class="x-col x-col-50" xid="col22">
    <span xid="span2"><![CDATA[业主：]]></span><span xid="span17" bind-text='val("name")'><![CDATA[姓名]]></span>
  </div> 
   <div class="x-col" xid="col2" style="text-align:right;padding-right:0.3rem;">
    <span xid="span18" bind-text='val("telphone").replace(/^(\d{3})\d{4}(\d{4})$/, "$1****$2")'><![CDATA[Tel]]></span></div> 
   </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row12" style="height:0.56rem;line-height:0.56rem;margin-bottom:0.2rem;">
   <div class="x-col" xid="col12">
    <span xid="span23" style="color: #909090;" bind-text='val("addr")'></span></div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row11" style="height:0.8rem;align-items:center;border-top:1px solid #eee;">
      <div class="x-col x-col-50" xid="col11" bind-click="col7Click">
       <span xid="span19" class="nochoose" bind-visible=' val("default")==0' style="vertical-align:middle;"></span>
       
       <img src="$UI/zhixin/img/user/right.png" alt="" xid="image4" style="width:0.4rem;vertical-align:middle;" bind-visible=' val("default") ==1'></img><span xid="span20" style="margin-left:0.14rem;vertical-align:middle;"><![CDATA[默认房屋]]></span></div> 
      
      <div class="x-col" xid="col1" style="display:none;"><span xid="span3" class="pull-right" style="margin-right:0.3rem;"><![CDATA[删除]]></span></div></div> 
     </li> </ul> </div><div xid="div3" style="padding-top:30px;padding-bottom:30px;">
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9">
   <div class="x-col x-col-10" xid="col25"></div>
   <div class="x-col x-col-80" xid="col26" style="text-align:center;" bind-click="col26Click"><img src="$UI/zhixin/img/bmfwImg/rz.png" alt="" xid="image5" style="width:100%;"></img>
  </div>
   <div class="x-col x-col-10" xid="col27"></div></div></div>
  </div>
  </div> 
</div>