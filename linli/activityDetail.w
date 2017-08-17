<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;" onLoad="modelLoad" onParamsReceive="modelParamsReceive" onActive="modelActive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="activityData" idColumn="id" confirmRefresh="false" confirmDelete="false" onBeforeRefresh="activityDataBeforeRefresh" onCustomRefresh="activityDataCustomRefresh"><column name="id" type="String" xid="xid1"></column>
  <column label="活动创建时间" name="add_time" type="String" xid="xid2"></column>
  <column label="文字内容" name="content" type="String" xid="xid3"></column>
  <column label="活动计划人数" name="total_number" type="String" xid="xid4"></column>
  <column label="活动参与人数" name="participants_number" type="String" xid="xid5"></column>
  <column label="修改时间" name="up_time" type="String" xid="xid6"></column>
  <column label="活动开始时间" name="activity_start_time" type="String" xid="xid7"></column>
  <column label="活动结束时间" name="activity_end_time" type="String" xid="xid8"></column>
  <column label="招募开始时间" name="registration_start_time" type="String" xid="xid9"></column>
  <column label="招募结束时间" name="registration_end_time" type="String" xid="xid10"></column>
  <column label="活动费用" name="activity_cost" type="String" xid="xid11"></column>
  <column label="报名状态1:已报名，0，未报名" name="activity_state" type="String" xid="xid12"></column>
  <column label="活动状态" name="active_msg" type="String" xid="xid13"></column>
  <column label="剩余报名天数" name="registration_day" type="String" xid="xid14"></column>
  <column label="报名状态" name="enrollment_status" type="String" xid="xid15"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1">
   <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar top" title="活动详情" xid="titleBar1">
    <div class="x-titlebar-left top-left" xid="left2">
   <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon left-btn" icon="icon-chevron-left" onClick="{operation:'window.close'}" xid="button4">
    <i class="icon-ios7-arrow-left icon-chevron-left" xid="i6"></i>
    <span xid="span9"></span></a> </div><div class="x-titlebar-title" style="font-weight:normal;font-size:0.36rem;" xid="title1">活动详情</div>
    <div class="x-titlebar-right reverse top-right" bind-click="right1Click" xid="right1">
     </div> 
  </div> </div>
  <div class="x-panel-content" xid="content1" style="background-color:#eeeeee;bottom:0.98rem;">
   
   
   
   
   <div xid="activityDetaiImg" style='background-repeat: no-repeat;background-position:center center;background-size:100%;height:5.3rem;weight:100%;position:relative;background-color:rgba(0,0,0,0)' dir="rtl"><div xid="div4" style="background-color:#fff;height:50px;width: 100%;border-radius: 50% 50% 0 0/100% 100% 0 0;position:absolute;bottom:0"></div>
  <div xid="activityState" style="width:1.52rem;height:0.5rem;background:rgba(0,0,0,0.1);border-top-right-radius:0.26rem;border-top-left-radius:0.26rem;border-bottom-right-radius:0.26rem;color:#fff;position:absolute;top:0.5rem;right:0.4rem"><p xid="activityStateP" style="height:100%;line-height:0.5rem;text-align:center;font-size:0.26rem;"><![CDATA[]]></p></div></div>
  <div xid="activityDetailContent" style="background-color:#fff;padding:0.4rem 0.3rem;font-size:0.28rem"><div component="$UI/system/components/justep/row/row" class="x-row" xid="activityDate" style="margin-top:0.2rem;align-items:center;">
   <div class="x-col x-col-fixed" xid="col1" style="width:auto;padding-right:0.2rem"><div xid="div5" style="width:0.5rem;height:0.5rem;border-radius:0.25rem;border:1px solid #ff9626;position:relative;"><div xid="div6" style="width:0.42rem;height:0.42rem;border-radius:0.21rem;border:1px solid #ff9626;background-color:#ff9626;margin:0.02rem auto 0 auto;text-align:center"><span xid="span1" style="color:#fff;padding-right:0.02rem"><![CDATA[1]]></span></div></div>
  </div>
   <div class="x-col x-col-fixed" xid="col2" style="width:2.2rem;"><span xid="span4" style="vertical-align:middle;"><![CDATA[活动时间：]]></span></div>
   <div class="x-col x-col-fixed" xid="col3"><span xid="span6" bind-text='$model.activityData.val("activity_start_time")'><![CDATA[]]></span>
  <span xid="span7"><![CDATA[-]]></span>
  <span xid="span8" bind-text='$model.activityData.val("activity_end_time")'></span></div></div>
  
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="participateNum" style="margin-top:0.2rem;align-items:center">
   <div class="x-col x-col-fixed" xid="col6" style="width:auto;padding-right:0.2rem">
    <div xid="div3" style="width:0.5rem;height:0.5rem;border-radius:0.25rem;border:1px solid #ff9626;position:relative;">
     <div xid="div2" style="width:0.42rem;height:0.42rem;border-radius:0.21rem;border:1px solid #ff9626;background-color:#ff9626;margin:0.02rem auto 0 auto;text-align:center">
      <span xid="span14" style="color:#fff;padding-right:0.02rem"><![CDATA[2]]></span></div> </div> </div> 
   <div class="x-col x-col-fixed" xid="col4" style="width:2.2rem;">
    <span xid="span10" style="vertical-align:middle;">报名人数：</span></div> 
   <div class="x-col x-col-fixed" xid="col5">
   <span xid="span11" bind-text='$model.activityData.val("participants_number")' style="color:#ff5959"><![CDATA[]]></span>
   <span xid="span12"><![CDATA[/]]></span>
   <span xid="span13" bind-text='$model.activityData.val("total_number")'></span></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="recruitDate" style="margin-top:0.2rem;align-items:center">
    
   <div class="x-col x-col-fixed" xid="col7" style="width:auto;padding-right:0.2rem">
    <div xid="div7" style="width:0.5rem;height:0.5rem;border-radius:0.25rem;border:1px solid #ff9626;position:relative;">
     <div xid="div8" style="width:0.42rem;height:0.42rem;border-radius:0.21rem;border:1px solid #ff9626;background-color:#ff9626;margin:0.02rem auto 0 auto;text-align:center">
      <span xid="span15" style="color:#fff;padding-right:0.02rem"><![CDATA[3]]></span></div> </div> </div> 
    
  <div class="x-col" xid="col22" style="padding:0"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row8" style="padding:0">
   <div class="x-col x-col-fixed" xid="col8" style="width:2rem;">
    <span xid="span17" style="vertical-align:middle;"><![CDATA[报名时间：]]></span>
  </div><div class="x-col x-col-fixed" xid="col9">
    <span xid="span19" bind-text='$model.activityData.val("registration_start_time")'><![CDATA[]]></span>
    <span xid="span18"><![CDATA[-]]></span>
    <span xid="span16" bind-text='$model.activityData.val("registration_end_time")'></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9" style="padding:0">
   <div class="x-col" xid="col26" style="padding-top:0.1rem;"><span xid="span34"><![CDATA[(还剩]]></span>
  <span xid="leftDate" style="color:#ff5959" bind-text='$model.activityData.val("registration_day")'></span>
  <span xid="span36"><![CDATA[天)]]></span></div>
   </div></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="activityFee" style="margin-top:0.2rem;align-items:center">
   <div class="x-col x-col-fixed" xid="col12" style="width:auto;padding-right:0.2rem">
    <div xid="div10" style="width:0.5rem;height:0.5rem;border-radius:0.25rem;border:1px solid #ff9626;position:relative;">
     <div xid="div9" style="width:0.42rem;height:0.42rem;border-radius:0.21rem;border:1px solid #ff9626;background-color:#ff9626;margin:0.02rem auto 0 auto;text-align:center">
      <span xid="span24" style="color:#fff;padding-right:0.02rem"><![CDATA[4]]></span></div> </div> </div> 
   <div class="x-col x-col-fixed" xid="col10" style="width:2.2rem;">
    <span xid="span21" style="vertical-align:middle;"><![CDATA[活动费用：]]></span></div> 
   <div class="x-col x-col-fixed" xid="col11">
    <span xid="span20" style="color:#ff5959" bind-text='$model.activityData.val("activity_cost")'><![CDATA[]]></span>
    <span xid="span2"><![CDATA[元]]></span></div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="recruitState" style="margin-top:0.2rem;align-items:center">
   <div class="x-col x-col-fixed" xid="col13" style="width:auto;padding-right:0.2rem">
    <div xid="div11" style="width:0.5rem;height:0.5rem;border-radius:0.25rem;border:1px solid #ff9626;position:relative;">
     <div xid="div12" style="width:0.42rem;height:0.42rem;border-radius:0.21rem;border:1px solid #ff9626;background-color:#ff9626;margin:0.02rem auto 0 auto;text-align:center">
      <span xid="span25" style="color:#fff;padding-right:0.02rem"><![CDATA[5]]></span></div> </div> </div> 
   <div class="x-col x-col-fixed" xid="col15" style="width:2.2rem;">
    <span xid="span26" style="vertical-align:middle;"><![CDATA[报名状态：]]></span></div> 
   <div class="x-col x-col-fixed" xid="col14">
    <span xid="span27" style="height:100%;display:none;" bind-visible='$model.activityData.val("enrollment_status") == 0'><![CDATA[已报名]]></span>
    <span xid="span33" style="display:none;color:#ff5959;" bind-visible='$model.activityData.val("enrollment_status") == 1'><![CDATA[未报名]]></span></div> </div><div xid="div1" style="text-align:center;margin-top:0.3rem"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="立即报名" xid="button1" style="width:5.2rem;height:0.98rem;line-height:0.98rem;border-radius:0.49rem;color:white;font-size:0.36rem;background-color:#e3e3e3;color:white;" bind-css='{availableBtn: $model.activityData.val("enrollment_status")==1 &amp;&amp;  $model.activityData.val("registration_day") &gt;0 &amp;&amp; $model.activityData.val("total_number")- $model.activityData.val("participants_number") &gt;0 &amp;&amp;  $model.activityData.val("activity_state") != 0}' onClick="button1Click" bind-focus="button1Focus" bind-enable='$model.activityData.val("enrollment_status")==1 &amp;&amp;  $model.activityData.val("registration_day") &gt;0 &amp;&amp; $model.activityData.val("total_number")- $model.activityData.val("participants_number") &gt;0 &amp;&amp; $model.activityData.val("activity_state") !=0'>
   <i xid="i1"></i>
   <span xid="span5">立即报名</span></a></div>
  <p xid="p1" style="text-align:center;color:#999;margin-top:0.2rem"><![CDATA[如需退出活动，请联系客服：]]>
  <a xid="a1" href="tel:400-186-1626"><![CDATA[400-186-1626]]></a></p>
  <div xid="div15" style="height:0.2rem;background-color:#ff9626;margin-top:0.2rem;"></div>
  <div xid="activityContentInfo" style="padding:0 0.1rem"><div style="border:1px solid #ff9626;border-bottom-right-radius:8px;border-bottom-left-radius:8px;padding:0.18rem;position:relative;top:-0.1rem;z-index:3;background-color:#fff;" xid="div"><div xid="activityContentInfoParent" style="border:1px solid #ff9626;border-radius:6px;padding:0.18rem;white-space:normal; word-break:break-all;" class="activity-content" align="left"></div></div></div></div></div></div> 
</div>