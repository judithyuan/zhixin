<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:463px;left:406px;" onModelConstructDone="modelModelConstructDone" onLoad="modelLoad" onActive="modelActive"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="kdData" onCustomRefresh="kdDataCustomRefresh" idColumn="ecid"><column name="ecid" type="String" xid="xid2"></column>
  <column name="cname" type="String" xid="xid3"></column>
  <column name="contact" type="String" xid="xid4"></column>
  <column name="createuid" type="String" xid="xid5"></column>
  <column name="ctime" type="String" xid="xid6"></column>
  <column name="firstchar" type="String" xid="xid7"></column>
  <column name="logo" type="String" xid="xid8"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="countData" idColumn="count" onCustomRefresh="countDataCustomRefresh"><column name="count" type="String" xid="xid1"></column>
  <data xid="default1">[{&quot;count&quot;:&quot;1&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="timeData" idColumn="id" onCustomRefresh="timeDataCustomRefresh"><column name="id" type="String" xid="xid10"></column>
  <column name="key" type="String" xid="xid11"></column>
  <column name="val" type="String" xid="xid12"></column>
  <data xid="default2">[{&quot;id&quot;:&quot;1&quot;,&quot;key&quot;:&quot;1&quot;,&quot;val&quot;:&quot;12321&quot;}]</data>
  <column name="zt" type="String" xid="xid13"></column>
  <column name="state" type="String" xid="xid17"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="boxData" idColumn="id" onCustomRefresh="boxDataCustomRefresh"><column name="id" type="String" xid="xid14"></column>
  <column name="key" type="String" xid="xid15"></column>
  <column name="val" type="String" xid="xid16"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="placetypeOptions" idColumn="id" onCustomRefresh="boxDataCustomRefresh">
   <column name="id" type="String" xid="default4"></column>
  <column name="key" type="String" xid="default5"></column>
  <column name="val" type="String" xid="default3"></column>
  <column name="state" type="String" xid="xid9"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel3" style="background-color:#eeeeee;">
   <div class="x-panel-top" xid="top2"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar top" xid="titleBar1" title="快递上门">
   <div class="x-titlebar-left top-left" xid="left1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon left-btn" label="button" xid="button1" icon="icon-ios7-arrow-left" onClick="qaz">
   <i xid="i1" class="icon-ios7-arrow-left"></i>
   <span xid="span1"></span></a></div>
   <div class="x-titlebar-title" xid="title1" style="font-weight:normal;">快递上门</div>
   <div class="x-titlebar-right reverse" xid="right1" style="padding-right:0;"><span xid="span4" style="font-size:0.26rem;padding-right:0.3rem;color:#999;" bind-click="span1Click"><![CDATA[快递记录]]></span></div></div></div>
   <div class="x-panel-content" xid="content4" style="overflow-x: hidden;"><div component="$UI/system/components/bootstrap/tabs/tabs" xid="tabs1" style="width:100%;">
   <ul class="nav nav-tabs" xid="ul4">
    <li class="active" xid="li8" style="font-weight:normal;width:50%;text-align:center;font-size:0.3rem;">
     <a content="shouContent8" xid="tabItem7"><![CDATA[收快递]]></a>
  </li> 
    <li role="presentation" xid="li9" style="font-weight:normal;width:50%;text-align:center;font-size:0.3rem;">
     <a content="jiContent" xid="tabItem8"><![CDATA[寄快递]]></a></li> </ul> 
   <div class="tab-content" xid="div8">
    <div class="tab-pane active" xid="shouContent8">
     <div xid="div1" style="padding:0px;background-color:white;position:relative;padding-top:0.34rem;padding-bottom:0.34rem;"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label25" xid="labelEdit1" style="margin: 0 0.3rem;width:100%;padding-bottom:0;">
   <label class="x-label" xid="label1" style="font-size:0.3rem;width:20%;padding-bottom:0;"><![CDATA[收件人：]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input1" placeHolder="请输入收件人名字" style="border:none;font-size:0.3rem;margin-left:-3%;" bind-ref="kuaidiname"></input><input component="$UI/system/components/justep/input/input" class="form-control pull-right x-edit" xid="input2" placeHolder="请输入收件人的电话" style="border:none;font-size:0.3rem;margin-right:1rem;text-align:right;" bind-ref='kuaidinumber' onChange="input2Change"></input></div>
  <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input3" placeHolder="四川省-成都市-高新区雄飞·新园紫郡1栋1单元1503" style="border:none;font-size:0.26rem;padding-top:0;padding-left:0.3rem;margin-top:0.2rem;width:100%;overflow: hidden;white-space: nowrap;text-overflow: ellipsis;" bind-ref="kuaidiaddr"></input>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button8" style="position:absolute;top:0.56rem;right:0.3rem;color:#ccc;padding-right:0;padding-left:0;height:100%;font-size:0.4rem;" icon="icon-ios7-arrow-right">
   <i xid="i6" class="icon-ios7-arrow-right" style="0.4rem;"></i>
   <span xid="span8"></span></a></div><div xid="div7" style="background-color:#f0f0f0;height:0.2rem;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div><div xid="div2" style="background-color:white"><h4 xid="h41" style="height:1rem;font-size: 0.32rem;margin-top:0;padding-bottom:10px;border-bottom: 1px solid #eeeeee;line-height:1rem;margin-left:0.3rem;color:#333;"><![CDATA[包裹存放地]]></h4><div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="padding-left:0;padding-right:0;">
   <div class="x-col x-col-100" xid="col10" style="text-align:center;padding-left:0;padding-right:0;padding:0.2rem 0;"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list7" data="placetypeOptions" bind-click="list7Click" style="padding-left:0;padding-right:0;">
   <ul class="x-list-template" xid="listTemplateUl7" style="margin-top: -20px;">
    <li xid="li7" style="padding-left:0.2rem;">
  <a component="$UI/system/components/justep/button/button" class="btn btn-default pull-left" label="物业中心" xid="button10" style="position: relative;margin: 0.1rem 0.1rem;border-radius:5px;color:#333;font-size:0.3rem;width:46%;" onClick="button10Click" bind-css=' {"abc":val("state") ==1}'>
   <img src="$UI/zhixin/img/bmfwImg/backbtn.png" alt="" xid="image2" style="position: absolute;right:0;top:0;width:25px;" bind-visible=' val("state") ==1'></img>
   <i xid="i13"></i>
   <span xid="span27" bind-text='val("val")'></span></a>
  </li></ul> </div></div>
   </div>
  <div xid="div5"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row7" style="padding-left:0;padding-right:0;height:1rem;">
   <div class="x-col x-col-100" xid="col12" style="text-align:center;padding-left:0.3rem;padding-right:0;height:1rem;">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8" style="border-top: 1px solid #eeeeee;border-bottom: 1px solid #eeeeee;padding-left:0;padding-right:0;height:1rem;">
   <div class="x-col x-col-25" xid="col13" style="padding:0;padding-left:0;line-height:1rem;"><span xid="span15" style="float:left;font-size:0.3rem;"><![CDATA[快递箱]]></span></div>
   <div class="x-col" xid="col14" style="padding:0;padding-right:0.3rem;"><select component="$UI/system/components/justep/select/select" bind-optionsCaption="查看所有快递箱" class="form-control" xid="select1" bind-options="boxData" style="border:0;font-size:0.26rem;line-height:0.9rem;padding-left:0;text-align:right;color:#999;" bind-optionsLabel="val" bind-optionsValue="id"></select></div>
   <div class="x-col x-col-fixed" xid="col15" style="width:auto;padding:0"></div></div></div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row10" style="padding-left:0;padding-right:0;height:1rem;">
   <div class="x-col x-col-100" xid="col20" style="text-align:center;padding-top: 0;padding-left:0;padding-right:0;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label25" xid="labelEdit4" style="margin-left:0.3rem;padding: 0;border-bottom: 1px solid #eeeeee;padding-left:0;padding-right:0;height:1rem;">
   <label class="pull-left x-label" xid="label4" style="font-size:0.3rem;text-align: left;padding-left:0rem;"><![CDATA[取件码]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input4" placeHolder="请输入您包裹的取件码" style="border:none;font-size:0.3rem;"></input></div></div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row12" style="height:1rem;padding-bottom: 0;padding-left:0;padding-right:0;">
   <div class="x-col x-col-100" xid="col21" style="margin-left:0.3rem;text-align:center;padding-top: 0;padding-left:0;padding-right:0;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label25" xid="labelEdit5" style="padding: 0;padding-left:0;padding-right:0;height:1rem;">
     <label class="pull-left x-label" xid="label5" style="font-size:0.3rem;text-align: left;padding-left:0;"><![CDATA[电话号码]]></label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input5" placeHolder="请输入您取包裹的电话号码" style="border:none;font-size:0.3rem;"></input></div> </div> </div></div>
  </div>
  <div xid="div6" style="background-color:#f0f0f0;height:0.2rem;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div><div xid="div3" style="background-color:white;">
   <h4 xid="h42" style="height:1rem;font-size: 0.32rem;margin-top:0;padding-bottom:10px;border-bottom: 1px solid #eeeeee;line-height:1rem;margin-left:0.3rem;color:#333;"><![CDATA[上门时间]]></h4>
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9" style="padding-left:0;padding-right:0;">
    <div class="x-col x-col-100" xid="col18" style="text-align:center;padding-left:0;padding-right:0;padding:0.2rem 0;">
     <div component="$UI/system/components/justep/list/list" class="x-list" xid="list3" data="timeData" bind-click="list3Click" style="padding-left:0;padding-right:0;">
   <ul class="x-list-template" xid="listTemplateUl3" style="margin-top: -20px;">
    <li xid="li3" style="padding-left:0.2rem;"><a component="$UI/system/components/justep/button/button" class="btn btn-default pull-left center-block" label="12:00~14:00" xid="button5" style="position: relative;margin: 0.1rem 0.1rem;border-radius:5px;color:#333;font-size:0.3rem;width:30%;" onClick="button5Click" bind-css='{"abc": val("state") ==1}'>
       <img src="$UI/zhixin/img/bmfwImg/backbtn.png" alt="" xid="image3" style="position: absolute;right:0;top:0;width:25px;" bind-visible=' val("state") ==1'></img><i xid="i9"></i>
       <span xid="span14" bind-text='val("val")' class="center-block">12:00~14:00</span></a>
  </li></ul> </div></div> </div> 
   </div><div xid="div4" style="margin-top: 10px;background-color:white;">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label-top x-label25" xid="labelEdit6" style="padding-top:0;min-height:2rem;padding-bottom:0;">
   
   <textarea component="$UI/system/components/justep/textarea/textarea" class="form-control x-edit" xid="bxnr" style="min-height:2rem;font-size:0.3rem;padding-left:0.3rem;padding-right:0.3rem;padding-top:0.3rem;" bind-blur="bxnrBlur" placeHolder="添加备注"></textarea></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   <div class="x-col" xid="col5"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs " xid="button2" style="color:#7bc83e;margin-left:0.3rem;margin-top:0.1rem;" onClick="button1Click" icon="img:$UI/zhixin/img/qren.png|">
     <i xid="i2"></i>
     <img src="$UI/zhixin/img/qren.png" xid="image4" style="height:15px;width:15px;margin-right:5px;"></img>
     <span xid="span2" style="color:#d2d2d2;"><![CDATA[我已经认真阅读并同意]]></span>
     <span xid="span2"><![CDATA[快递服务协议]]></span></a></div>
   <div class="x-col  x-col-fixed" xid="col2" style="width:auto;">
     </div> </div><a component="$UI/system/components/justep/button/button" class="btn btn-default center-block" label="提交" xid="registerBtn" style="margin: 0.4rem;color:white;border:none;border-radius:5px;height:0.8rem;background-color:#e3e3e3;" onClick="registerBtnClick">
   <i xid="i8"></i>
   <span xid="span24" style="font-size:0.36rem;">提交</span></a>
  </div><div class="tab-pane" xid="jiContent">
     <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="kdData" style="padding-left:0.1rem;padding-right:0.1rem;">
   <ul class="x-list-template" xid="listTemplateUl1" style="margin:10px 10px 10px 10px;">
    <li xid="li1" style="background-color:white;border-radius:6px;margin-top:10px;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="padding-left:0;padding-right:0;align-items:center;height:1.8rem;">
   <div class="x-col center-block" xid="col1" style="width:100%;padding-left:0.3rem;"><img src="$UI/zhixin/img/main/btnkaimen.png" alt="" xid="image1" bind-attr-src=' val("logo")' style="width:1.62rem;height:0.48rem;"></img></div>
   <div class="x-col x-col-fixed" xid="col3" style="width:auto;padding-right:0.3rem;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="padding-right:0;">
   <div class="x-col" xid="col4" style="padding-right:0;"><span xid="span3" style="font-size: 0.36rem;color:#333;" bind-text='val("cname")' class="pull-right"><![CDATA[某某快递公司]]></span></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="padding-right:0;margin-top:0.1rem;">
   <div class="x-col" xid="col7" style="text-align: center;padding-right:0;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-label pull-right center-block" label="一键呼叫" xid="button4" style="border: 1px solid #7bc83e;border-radius: 50px;background-color:#7bc83e;color:#fff;width:1.5rem;height:0.42rem;line-height:0.42rem;" onClick="button4Click">
   <i xid="i3"></i>
   <span xid="span7" style="font-size:0.26rem;position:relative;">一键呼叫</span></a></div>
   </div></div></div></li></ul> </div></div> 
     </div> </div>
  </div>
   </div></div>