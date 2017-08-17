<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:414px;left:515px;" onActive="modelActive" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="allData" onCustomRefresh="allDataCustomRefresh" idColumn="eaid"><column label="订单编号" name="serial_number" type="String" xid="xid9"></column>
  <column label="地址" name="address" type="String" xid="xid10"></column>
  <column label="电话" name="contact" type="String" xid="xid11"></column>
  <column label="ID" name="eaid" type="String" xid="xid12"></column>
  <column label="上门时间" name="period" type="String" xid="xid13"></column>
  <column label="数量" name="quantity" type="String" xid="xid14"></column>
  <column label="姓名" name="xname" type="String" xid="xid15"></column>
  <column label="订单状态" name="dispatch_status_key" type="String" xid="xid16"></column>
  <column label="评论" name="pinglun" type="String" xid="xid1"></column>
  <column name="pinglun_allow" type="String" xid="xid5"></column></div><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="applyData" onCustomRefresh="applyDataCustomRefresh" idColumn="eaid">
   <column label="订单编号" name="serial_number" type="String" xid="column6"></column>
  <column label="地址" name="address" type="String" xid="column7"></column>
  <column label="电话" name="contact" type="String" xid="column8"></column>
  <column label="ID" name="eaid" type="String" xid="column2"></column>
  <column label="上门时间" name="period" type="String" xid="column3"></column>
  <column label="数量" name="quantity" type="String" xid="column4"></column>
  <column label="姓名" name="xname" type="String" xid="column5"></column>
  <column label="订单状态" name="dispatch_status_key" type="String" xid="column1"></column>
  <column name="pinglun" type="String" xid="xid2"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="doorData" onCustomRefresh="doorDataCustomRefresh" idColumn="eaid">
   <column label="订单编号" name="serial_number" type="String" xid="column14"></column>
  <column label="地址" name="address" type="String" xid="column15"></column>
  <column label="电话" name="contact" type="String" xid="column16"></column>
  <column label="ID" name="eaid" type="String" xid="column10"></column>
  <column label="上门时间" name="period" type="String" xid="column11"></column>
  <column label="数量" name="quantity" type="String" xid="column12"></column>
  <column label="姓名" name="xname" type="String" xid="column13"></column>
  <column label="订单状态" name="dispatch_status_key" type="String" xid="column9"></column>
  <column name="pinglun" type="String" xid="xid3"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="cancelDta" onCustomRefresh="cancelDtaCustomRefresh" idColumn="eaid">
   <column label="订单编号" name="serial_number" type="String" xid="column22"></column>
  <column label="地址" name="address" type="String" xid="column23"></column>
  <column label="电话" name="contact" type="String" xid="column24"></column>
  <column label="ID" name="eaid" type="String" xid="column18"></column>
  <column label="上门时间" name="period" type="String" xid="column19"></column>
  <column label="数量" name="quantity" type="String" xid="column20"></column>
  <column label="姓名" name="xname" type="String" xid="column21"></column>
  <column label="订单状态" name="dispatch_status_key" type="String" xid="column17"></column>
  <column name="pinglun" type="String" xid="xid4"></column>
  <column label="cancel_note" name="cancel_note" type="String" xid="xid6"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar top" title="快递上门">
          <div class="x-titlebar-left top-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon left-btn" icon="icon-chevron-left"
              onClick="backBtnClick" xid="backBtn"> 
              <i class="icon-ios7-arrow-left icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title" style="font-weight:normal;">快递上门</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1" style="background-color:#f0f0f0;"><div component="$UI/system/components/bootstrap/tabs/tabs" xid="tabs1" style="overflow-x: hidden;">
   <ul class="nav nav-tabs" xid="ul4" style="background-color:white;color:#333;font-size:0.3rem;">
    <li class="active" xid="li8" style="width:25%;text-align:center;">
     <a content="qbContent" xid="tabItem7">全部</a></li> 
    <li role="presentation" xid="li9" style="width:25%;text-align:center;">
     <a content="sqContent" xid="tabItem8"><![CDATA[已申请]]></a></li> 
    <li role="presentation" xid="li10" style="width:25%;text-align:center;">
     <a content="smContent" xid="tabItem8"><![CDATA[已上门]]></a></li> 
    <li role="presentation" xid="li11" style="width:25%;text-align:center;">
     <a content="qxContent" xid="tabItem8"><![CDATA[已取消]]></a></li> </ul><div class="tab-content" xid="div8">
    <div class="tab-pane active" xid="qbContent">
     <div xid="div4" style="height:0.2rem;background-color:#f0f0f0;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div><div xid="div3" style="display:none;text-align: center;width: 100%;"><img src="$UI/zhixin/img/none.png" alt="" xid="image1" style="width: 30%;margin-top: 30%;" height="100%"></img></div><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="allData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" style="background-color:white;">
  
  
  
  
  
  
  <div component="$UI/system/components/justep/row/row" class="x-row " xid="row1" style="color:#333;font-size:0.3rem;">
   <div class="x-col" xid="col1" style="margin-left:0.3rem;height:0.8rem;line-height:0.8rem;border-bottom:1px solid #eee;"><span xid="span2" style="color:#333333;"><![CDATA[订单号]]></span></div>
   <div class="x-col" xid="col4" style="height:0.8rem;border-bottom:1px solid #eee;"></div>
   <div class="x-col x-col-fixed" xid="col7" style="width:auto;margin-right:0.3rem;height:0.8rem;line-height:0.8rem;border-bottom:1px solid #eee;"><span xid="span3" style="color:#333333;" bind-text='val("serial_number")'><![CDATA[]]></span></div></div><div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row2" style="margin-top:0.3rem;color:#666;font-size:0.26rem;">
   <div class="x-col" xid="col8"><span xid="span5" style="color:#666666;"><![CDATA[收件人姓名]]></span></div>
   <div class="x-col x-col-fixed" xid="col10" style="width:auto;"><span xid="span6" style="color:#666;" bind-text='val("xname")'><![CDATA[]]></span>
  </div></div><div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row3" style="margin-top:0.2rem;color:#666;font-size:0.26rem;">
   <div class="x-col" xid="col12">
    <span xid="span8" style="color:#666666;"><![CDATA[联系电话]]></span></div> 
   <div class="x-col" xid="col33"></div>
   <div class="x-col x-col-fixed" xid="col11" style="width:auto;">
    <span xid="span9" style="color:#666;" bind-text='val("contact")'><![CDATA[]]></span></div> </div><div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row4" style="margin-top:0.2rem;color:#666;font-size:0.26rem;">
   <div class="x-col" xid="col35">
    <span xid="span10" style="color:#666666;"><![CDATA[收件地址]]></span></div> 
   <div class="x-col x-col-fixed" xid="col34" style="width:auto;">
    <span xid="span11" style="color:#666;" bind-text='val("address")'><![CDATA[]]></span></div> </div><div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row5" style="margin-top:0.2rem;color:#666;font-size:0.26rem;">
   <div class="x-col" xid="col38">
    <span xid="span12" style="color:#666666;"><![CDATA[包裹数量]]></span></div> 
   <div class="x-col" xid="col39"></div>
   <div class="x-col x-col-fixed" xid="col37" style="width:auto;">
    <span xid="span13" style="color:#666;" bind-text='val("quantity")'><![CDATA[]]></span></div> </div><div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row7" bind-visible=' val("pinglun") !=null' style="margin-top:0.2rem;color:#666;font-size:0.26rem;">
   <div class="x-col" xid="col3">
    <span xid="span19" style="color:#666666;"><![CDATA[业主评论]]></span></div> 
   <div class="x-col x-col-fixed" xid="col5" style="width:auto;">
    <span xid="span17" style="color:#666;" bind-text='val("pinglun")'></span></div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="margin-top:0.2rem;color:#666;font-size:0.26rem;">
   <div class="x-col" xid="col41" style="padding-bottom:0.3rem;margin-left:0.3rem;border-bottom:1px solid #eee;">
    <span xid="span16" style="color:#666666;"><![CDATA[上门时间]]></span></div> 
   <div class="x-col" xid="col42" style="padding-bottom:0.3rem;border-bottom:1px solid #eee;"></div>
   <div class="x-col x-col-fixed" xid="col40" style="padding-bottom:0.3rem;width:auto;border-bottom:1px solid #eee;margin-right:0.3rem;">
    <span xid="span18" style="color:#666;" bind-text='val("period")'><![CDATA[]]></span></div> </div><div xid="div5" style="display:none;padding:0.3rem 0.3rem 0;"><textarea component="$UI/system/components/justep/textarea/textarea" class="form-control" xid="textarea1" style="height:1.8rem;background-color:#f2f2f2;border-radius:0.1rem;padding:0.2rem;font-size:0.26rem;box-shadow:none;" placeHolder="请输入您的评论"></textarea></div><div xid="div1" dir="ltr" class="clearfix" style="padding:0.3rem 0.3rem 0;margin-bottom:0.3rem;">
   <span xid="span22" style="color:#7bc83e;margin-top:0.15rem;font-size:0.3rem;" class="pull-left" bind-visible=' val("dispatch_status_key") =="1"'>已申请</span>
   <span xid="span87" style="color:#7bc83e;margin-top:0.15rem;font-size:0.3rem;" class="pull-left" bind-visible=' val("dispatch_status_key")== "2"'>已上门</span>
   <span xid="span89" style="color:#7bc83e;margin-top:0.15rem;font-size:0.3rem;" class="pull-left" bind-visible=' val("dispatch_status_key")=="3"'>已取消</span>
   <span xid="span91" style="color:#7bc83e;margin-top:0.15rem;font-size:0.3rem;" class="pull-left" bind-visible=' val("dispatch_status_key") =="4"'>已完成</span>
   <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label pull-right" label="发表评论" xid="button1" style="border-color:#7bc83e;padding:0;color:#fff;border-radius:0.1rem;background-color:#7bc83e;width:1.8rem;height:0.6rem;line-height:0.6rem;display:block;font-size:0.26rem;" bind-visible='val("pinglun_allow")  =="-1"' onClick="button2Click">
    <i xid="i1"></i>
    <span xid="span23">发表评论</span></a> </div>
  <div xid="div6" style="height:0.2rem;background-color:#f0f0f0;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div></li></ul> </div>
  </div> 
    <div class="tab-pane" xid="sqContent">
     <div xid="div10" style="height:0.2rem;background-color:#f0f0f0;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div><div component="$UI/system/components/justep/list/list" class="x-list" xid="list5" data="applyData">
   <ul class="x-list-template" xid="listTemplateUl5">
    <li xid="li5" style="background-color:white;">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row25" style="color:#333;font-size:0.3rem;">
      <div class="x-col" xid="col89" style="margin-left:0.3rem;height:0.8rem;line-height:0.8rem;border-bottom:1px solid #eee;">
       <span xid="span59" style="color:#333333;">订单号</span></div> 
      <div class="x-col" xid="col86" style="height:0.8rem;border-bottom:1px solid #eee;"></div>
      <div class="x-col x-col-fixed" xid="col84" style="width:auto;margin-right:0.3rem;height:0.8rem;line-height:0.8rem;border-bottom:1px solid #eee;">
       <span xid="span60" style="color:#333333;" bind-text='val("serial_number")'></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row28" style="margin-top:0.3rem;color:#666;font-size:0.26rem;">
      <div class="x-col" xid="col82">
       <span xid="span61" style="color:#666666;">收件人姓名</span></div> 
      <div class="x-col x-col-fixed" xid="col90" style="width:auto;">
       <span xid="span62" style="color:#666;" bind-text='val("xname")'></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row27" style="margin-top:0.2rem;color:#666;font-size:0.26rem;">
      <div class="x-col" xid="col78">
       <span xid="span64" style="color:#666666;">联系电话</span></div> 
      <div class="x-col" xid="col80"></div>
      <div class="x-col x-col-fixed" xid="col81" style="width:auto;">
       <span xid="span65" style="color:#666;" bind-text='val("contact")'></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row30" style="margin-top:0.2rem;color:#666;font-size:0.26rem;">
      <div class="x-col" xid="col77">
       <span xid="span68" style="color:#666666;">收件地址</span></div> 
      <div class="x-col x-col-fixed" xid="col79" style="width:auto;">
       <span xid="span70" style="color:#666;" bind-text='val("address")'></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row29" style="margin-top:0.2rem;color:#666;font-size:0.26rem;">
      <div class="x-col" xid="col74">
       <span xid="span69" style="color:#666666;">包裹数量</span></div> 
      <div class="x-col" xid="col73"></div>
      <div class="x-col x-col-fixed" xid="col75" style="width:auto;">
       <span xid="span66" style="color:#666;" bind-text='val("quantity")'></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row8" bind-visible=' val("pinglun") !=null' style="margin-top:0.2rem;color:#666;font-size:0.26rem;">
   <div class="x-col" xid="col9">
    <span xid="span21" style="color:#666666;">业主评论</span></div> 
   <div class="x-col x-col-fixed" xid="col6" style="width:auto;">
    <span xid="span20" style="color:#666;" bind-text='val("pinglun")'></span></div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row26" style="margin-top:0.2rem;color:#666;font-size:0.26rem;">
      <div class="x-col" xid="col87" style="padding-bottom:0.3rem;margin-left:0.3rem;border-bottom:1px solid #eee;">
       <span xid="span67" style="color:#666666;">上门时间</span></div> 
      <div class="x-col" xid="col85" style="padding-bottom:0.3rem;border-bottom:1px solid #eee;"></div>
      <div class="x-col x-col-fixed" xid="col88" style="padding-bottom:0.3rem;width:auto;border-bottom:1px solid #eee;margin-right:0.3rem;">
       <span xid="span63" style="color:#666;" bind-text='val("period")'></span></div> </div> 
     <div xid="div7" style="padding:0.3rem 0.3rem 0;margin-bottom:0.3rem;" class="clearfix">
   <span xid="span95" style="color:#7bc83e;margin-top:0.15rem;font-size:0.3rem;" class="pull-left" bind-visible=' val("dispatch_status_key") =="1"'>已申请</span>
   <span xid="span92" style="color:#7bc83e;margin-top:0.15rem;font-size:0.3rem;" class="pull-left" bind-visible=' val("dispatch_status_key")== "2"'>已上门</span>
   <span xid="span93" style="color:#7bc83e;margin-top:0.15rem;font-size:0.3rem;" class="pull-left" bind-visible=' val("dispatch_status_key")=="3"'>已取消</span>
   <span xid="span96" style="color:#7bc83e;margin-top:0.15rem;font-size:0.3rem;" class="pull-left" bind-visible=' val("dispatch_status_key") =="4"'>已完成</span>
   <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label pull-right" label="发表评论" xid="button7" style="border-color:#7bc83e;padding:0;color:#fff;border-radius:0.1rem;background-color:#7bc83e;width:1.8rem;height:0.6rem;line-height:0.6rem;display:block;font-size:0.26rem;" bind-visible=" val(&quot;dispatch_status_key&quot;) =='4'" onClick="button2Click">
    <i xid="i7"></i>
    <span xid="span94">发表评论</span></a> </div>
  <div xid="div11" style="height:0.2rem;background-color:#f0f0f0;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div>
  </li> </ul> </div>
  </div> 
    <div class="tab-pane" xid="smContent">
     <div xid="div13" style="height:0.2rem;background-color:#f0f0f0;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div><div component="$UI/system/components/justep/list/list" class="x-list" xid="list3" data="doorData">
   <ul class="x-list-template" xid="listTemplateUl3">
    <li xid="li3" style="background-color:white;">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row13" style="color:#333;font-size:0.3rem;">
      <div class="x-col" xid="col53" style="margin-left:0.3rem;height:0.8rem;line-height:0.8rem;border-bottom:1px solid #eee;">
       <span xid="span31" style="color:#333333;">订单号</span></div> 
      <div class="x-col" xid="col50" style="height:0.8rem;border-bottom:1px solid #eee;"></div>
      <div class="x-col x-col-fixed" xid="col48" style="width:auto;margin-right:0.3rem;height:0.8rem;line-height:0.8rem;border-bottom:1px solid #eee;">
       <span xid="span32" style="color:#333333;" bind-text='val("serial_number")'></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row16" style="margin-top:0.3rem;color:#666;font-size:0.26rem;">
      <div class="x-col" xid="col46">
       <span xid="span33" style="color:#666666;">收件人姓名</span></div> 
      <div class="x-col x-col-fixed" xid="col54" style="width:auto;">
       <span xid="span34" style="color:#666;" bind-text='val("xname")'></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row15" style="margin-top:0.2rem;color:#666;font-size:0.26rem;">
      <div class="x-col" xid="col32">
       <span xid="span36" style="color:#666666;">联系电话</span></div> 
      <div class="x-col" xid="col44"></div>
      <div class="x-col x-col-fixed" xid="col45" style="width:auto;">
       <span xid="span37" style="color:#666;" bind-text='val("contact")'></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row18" style="margin-top:0.2rem;color:#666;font-size:0.26rem;">
      <div class="x-col" xid="col31">
       <span xid="span40" style="color:#666666;">收件地址</span></div> 
      <div class="x-col x-col-fixed" xid="col43" style="width:auto;">
       <span xid="span42" style="color:#666;" bind-text='val("address")'></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row17" style="margin-top:0.2rem;color:#666;font-size:0.26rem;">
      <div class="x-col" xid="col28">
       <span xid="span41" style="color:#666666;">包裹数量</span></div> 
      <div class="x-col" xid="col27"></div>
      <div class="x-col x-col-fixed" xid="col29" style="width:auto;">
       <span xid="span38" style="color:#666;" bind-text='val("quantity")'></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row9" bind-visible=' val("pinglun") !=null' style="margin-top:0.2rem;color:#666;font-size:0.26rem;">
   <div class="x-col" xid="col14">
    <span xid="span25" style="color:#666666;">业主评论</span></div> 
   <div class="x-col x-col-fixed" xid="col13" style="width:auto;">
    <span xid="span24" style="color:#666;" bind-text='val("pinglun")'></span></div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row14" style="margin-top:0.2rem;color:#666;font-size:0.26rem;">
      <div class="x-col" xid="col51" style="padding-bottom:0.3rem;margin-left:0.3rem;border-bottom:1px solid #eee;">
       <span xid="span39" style="color:#666666;">上门时间</span></div> 
      <div class="x-col" xid="col49" style="padding-bottom:0.3rem;border-bottom:1px solid #eee;"></div>
      <div class="x-col x-col-fixed" xid="col52" style="padding-bottom:0.3rem;width:auto;border-bottom:1px solid #eee;margin-right:0.3rem;">
       <span xid="span35" style="color:#666;" bind-text='val("period")'></span></div> </div> 
     <div xid="div14" style="padding:0.3rem 0.3rem 0;display:none;">
   <textarea component="$UI/system/components/justep/textarea/textarea" class="form-control" xid="textarea3" style="height:1.8rem;background-color:#f2f2f2;border-radius:0.1rem;padding:0.2rem;font-size:0.26rem;" placeHolder="请输入您的评论"></textarea></div><div xid="div9" style="padding:0.3rem 0.3rem 0;margin-bottom:0.3rem;" dir="ltr" class="clearfix">
   <span xid="span100" style="color:#7bc83e;margin-top:0.15rem;font-size:0.3rem;" class="pull-left" bind-visible=' val("dispatch_status_key") =="1"'>已申请</span>
   <span xid="span97" style="color:#7bc83e;margin-top:0.15rem;font-size:0.3rem;" class="pull-left" bind-visible=' val("dispatch_status_key")== "2"'>已上门</span>
   <span xid="span98" style="color:#7bc83e;margin-top:0.15rem;font-size:0.3rem;" class="pull-left" bind-visible=' val("dispatch_status_key")=="3"'>已取消</span>
   <span xid="span101" style="color:#7bc83e;margin-top:0.15rem;font-size:0.3rem;" class="pull-left" bind-visible=' val("dispatch_status_key") =="4"'>已完成</span>
   <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label pull-right" label="发表评论" xid="button8" style="border-color:#7bc83e;padding:0;color:#fff;border-radius:0.1rem;background-color:#7bc83e;width:1.8rem;height:0.6rem;line-height:0.6rem;display:block;font-size:0.26rem;" bind-visible=" val(&quot;dispatch_status_key&quot;) =='4'" onClick="button2Click">
    <i xid="i8"></i>
    <span xid="span99">发表评论</span></a> </div>
  <div xid="div15" style="height:0.2rem;background-color:#f0f0f0;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div></li> </ul> </div>
  </div> 
    <div class="tab-pane" xid="qxContent">
     <div xid="div16" style="height:0.2rem;background-color:#f0f0f0;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div><div component="$UI/system/components/justep/list/list" class="x-list" xid="list6" data="cancelDta">
   <ul class="x-list-template" xid="listTemplateUl6">
    <li xid="li6" style="background-color:white;">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row31" style="color:#333;font-size:0.3rem;">
      <div class="x-col" xid="col107" style="margin-left:0.3rem;height:0.8rem;line-height:0.8rem;border-bottom:1px solid #eee;">
       <span xid="span73" style="color:#333333;">订单号</span></div> 
      <div class="x-col" xid="col104" style="height:0.8rem;border-bottom:1px solid #eee;"></div>
      <div class="x-col x-col-fixed" xid="col102" style="width:auto;margin-right:0.3rem;height:0.8rem;line-height:0.8rem;border-bottom:1px solid #eee;">
       <span xid="span74" style="color:#333333;" bind-text='val("serial_number")'></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row34" style="margin-top:0.3rem;color:#666;font-size:0.26rem;">
      <div class="x-col" xid="col100">
       <span xid="span75" style="color:#666666;">收件人姓名</span></div> 
      <div class="x-col x-col-fixed" xid="col108" style="width:auto;">
       <span xid="span76" style="color:#666;" bind-text='val("xname")'></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row33" style="margin-top:0.3rem;color:#666;font-size:0.26rem;">
      <div class="x-col" xid="col96">
       <span xid="span78" style="color:#666666;">联系电话</span></div> 
      <div class="x-col" xid="col98"></div>
      <div class="x-col x-col-fixed" xid="col99" style="width:auto;">
       <span xid="span79" style="color:#666;" bind-text='val("contact")'></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row36" style="margin-top:0.3rem;color:#666;font-size:0.26rem;">
      <div class="x-col" xid="col95">
       <span xid="span82" style="color:#666666;">收件地址</span></div> 
      <div class="x-col x-col-fixed" xid="col97" style="width:auto;">
       <span xid="span84" style="color:#666;" bind-text='val("address")'></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row35" style="margin-top:0.3rem;color:#666;font-size:0.26rem;">
      <div class="x-col" xid="col92">
       <span xid="span83" style="color:#666666;">包裹数量</span></div> 
      <div class="x-col" xid="col91"></div>
      <div class="x-col x-col-fixed" xid="col93" style="width:auto;">
       <span xid="span80" style="color:#666;" bind-text='val("quantity")'></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row col-content" xid="row32" style="margin-top:0.3rem;color:#666;font-size:0.26rem;">
      <div class="x-col" xid="col105">
       <span xid="span81" style="color:#666666;">上门时间</span></div> 
      <div class="x-col" xid="col103"></div>
      <div class="x-col x-col-fixed" xid="col106" style="width:auto;">
       <span xid="span77" style="color:#666;" bind-text='val("period")'></span></div> </div><div component="$UI/system/components/justep/row/row" class="x-row " xid="row10" bind-visible=' val("pinglun") !=null' style="margin-top:0.2rem;color:#666;font-size:0.26rem;">
   <div class="x-col" xid="col16" style="padding-bottom:0.3rem;margin-left:0.3rem;border-bottom:1px solid #eee;">
    <span xid="span27" style="color:#666666;"><![CDATA[取消原因]]></span></div> 
   <div class="x-col x-col-fixed" xid="col15" style="padding-bottom:0.3rem;width:auto;border-bottom:1px solid #eee;margin-right:0.3rem;">
    <span xid="span26" style="color:#999999;" bind-text='val("cancel_note")'></span></div> </div> 
     <div xid="div2" style="padding:0.3rem 0.3rem 0;margin-bottom:0.3rem;" class="clearfix">
   <span xid="span1" style="color:#7bc83e;margin-top:0.15rem;font-size:0.3rem;" class="pull-left" bind-visible=' val("dispatch_status_key") =="1"'>已申请</span>
   <span xid="span7" style="color:#7bc83e;margin-top:0.15rem;font-size:0.3rem;" class="pull-left" bind-visible=' val("dispatch_status_key")== "2"'>已上门</span>
   <span xid="span4" style="color:#7bc83e;margin-top:0.15rem;font-size:0.3rem;" class="pull-left" bind-visible=' val("dispatch_status_key")=="3"'>已取消</span>
   <span xid="span14" style="color:#7bc83e;margin-top:0.15rem;font-size:0.3rem;" class="pull-left" bind-visible=' val("dispatch_status_key") =="4"'>已完成</span>
   <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label pull-right" label="发表评论" xid="button2" style="border-color:#7bc83e;padding:0;color:#fff;border-radius:0.1rem;background-color:#7bc83e;width:1.8rem;height:0.6rem;line-height:0.6rem;display:block;font-size:0.26rem;" bind-visible=" val(&quot;dispatch_status_key&quot;) =='4'" onClick="button2Click">
    <i xid="i2"></i>
    <span xid="span15">发表评论</span></a> </div>
  <div xid="div18" style="height:0.2rem;background-color:#f0f0f0;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div></li> </ul> </div>
  </div> </div> </div>
  </div>
  </div> 
</div>