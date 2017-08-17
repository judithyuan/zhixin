<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:85px;left:350px;height:auto;" onActive="modelActive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="myActivityData" idColumn="id" confirmRefresh="false" confirmDelete="false" onCustomRefresh="myActivityDataCustomRefresh">
   <column name="id" type="String" xid="xid1"></column>
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
  <column label="报名状态" name="enrollment_status" type="String" xid="xid15"></column>
  <column label="活动标题" name="title" type="String" xid="xid16"></column>
  <column label="活动id" name="activity_id" type="String" xid="xid17"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top2">
   <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar top" title="我的活动" xid="titleBar2">
    <div class="x-titlebar-left top-left" xid="left2">
     <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon left-btn" icon="icon-chevron-left" onClick="{operation:'window.close'}" xid="button4">
      <i class="icon-ios7-arrow-left icon-chevron-left" xid="i6"></i>
      <span xid="span9"></span></a> </div> 
    <div class="x-titlebar-title" style="font-weight:normal;font-size:0.36rem;" xid="title2"><![CDATA[我的活动]]></div>
    <div class="x-titlebar-right reverse top-right" bind-click="right1Click" xid="right2"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon right-btn" label="button" xid="button2" icon="img:$UI/zhixin/img/bellh.png|" onClick="button2Click">
   <i xid="i2"></i>
   <img src="$UI/zhixin/img/bellh.png" xid="image7" style="width:0.4rem;"></img>
   <span xid="span15"></span></a></div></div> </div><div class="x-panel-content" xid="content1" style="padding:0 0.3rem;background-color:#f0f0f0;top:68;"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="myActivityData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" style="padding:0 0.3rem;background-color:#fff;margin-top:0.2rem;border-radius:8px"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="border-bottom:1px solid #eeeeee;height:0.9rem;line-height:0.9rem;justify-content:space-between">
   <div class="x-col  x-col-fixed" xid="col1" style="white-space:nowrap;overflow:hidden;text-overflow:ellipsis;width:auto;"><span xid="span2" style="color:#333;display:inline-block;overflow:hidden;text-overflow:ellipsis;white-space: nowrap;width:100%" bind-text='val("title")'><![CDATA[]]></span></div>
   <div class="x-col x-col-fixed" xid="col4" style="white-space:nowrap;width:auto;min-width:1.2rem">
   <span xid="span18"><![CDATA[|]]></span><span xid="span17" style="color:#999;display:inline-block;width:0.8rem" bind-text='val("enrollment_status")'></span>
  </div><div class="x-col population" xid="col2" style="text-align:right;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;width:auto;"><span xid="span5"><![CDATA[报名:]]></span><span xid="span6" style="color:#ff5959" bind-text='val("participants_number")'><![CDATA[9999]]></span><span xid="span7"><![CDATA[/]]></span><span xid="span1" bind-text='val("total_number")'><![CDATA[9999]]></span>
  </div>
   </div>
  <div xid="div4" style="padding:0.2rem 0;font-size:0.28rem;color:#333" bind-click="div4Click"><p xid="activityContentText" style="width:100%;max-height:1.68rem;display: -webkit-box;display: -moz-box;overflow: hidden;text-overflow: ellipsis;word-break: break-all;-webkit-box-orient: vertical;-webkit-line-clamp:3;  " bind-text='  val("content")'><![CDATA[]]></p></div>
  <div xid="div8" style="line-height:0.9rem;border-top:1px solid #eeeeee;font-size:0.24rem;overflow:hidden" class="activity-time">
   <div xid="div7" style="float:left;">
    <span xid="span8" style="color:#999;"><![CDATA[活动时间:]]></span><span xid="span11" style="color:#999;" bind-text='val("activity_start_time")'><![CDATA[]]></span>
  <span xid="span10" style="color:#999;"><![CDATA[-]]></span>
  <span xid="span12" bind-text='val("activity_end_time")' style="color:#999;"></span>
  </div> 
   <div xid="div6" style="float:right;">
    <span xid="span14" style="color:#ffffff;font-weight:normal;background-color:#ff5a59;vertical-align:middle;padding:0.02rem 0.1rem;border-radius:0.06rem;line-height:0.3rem;margin-left:0.1rem;height:0.3rem;" bind-text="val(&quot;activity_state&quot;) == 0 ? '待招募' : (val(&quot;activity_state&quot;) == 1 ? '招募中' : (val(&quot;activity_state&quot;) == 2 ? '已招募' : (val(&quot;activity_state&quot;) == 3 ? '进行中' : (val(&quot;activity_state&quot;) == 4 ? '已结束' : '其他' ) ) ) )"><![CDATA[]]></span></div> </div>
  </li></ul> </div>
  <div xid="activityNullData" style="display:none;text-align: center;width: 100%;">
   <img src="$UI/zhixin/img/none.png" alt="" xid="image1" style="width: 30%;margin-top: 30%;" height="100%"></img></div></div>
  </div> 
</div>