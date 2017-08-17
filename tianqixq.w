<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="temperatureData" onCustomRefresh="tp" idColumn="id"><column name="id" type="String" xid="xid1"></column>
  <column label="最高温度" name="day_air_temperature" type="String" xid="xid2"></column>
  <column label="晴" name="day_weather" type="String" xid="xid3"></column>
  <column label="icon" name="day_weather_pic" type="String" xid="xid4"></column>
  <column label="最低温度" name="night_air_temperature" type="String" xid="xid5"></column>
  <column label="riqi" name="action" type="String" xid="xid13"></column>
  <column label="ymd" name="ymd" type="String" xid="xid14"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="todayData" idColumn="day_air_temperature"><column name="day_air_temperature" type="String" xid="xid6"></column>
  <column name="day_weather" type="String" xid="xid7"></column>
  <column name="night_air_temperature" type="String" xid="xid8"></column>
  <column label="night_weather_pic" name="night_weather_pic" type="String" xid="xid9"></column>
  <column label="quality" name="quality" type="String" xid="xid10"></column>
  <column label="sports" name="sports" type="String" xid="xid11"></column>
  <column name="day" type="String" xid="xid12"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-content" xid="content1">
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel2">
   
   <div xid="div1" style="background-image:url($UI2/zhixin/img/main/bactianqi.png);background-repeat:no-repeat;background-size:100% 100%;height:100%;">
   <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" style="color:white;line-height: 48px;">
          <div class="x-titlebar-left top-left"> 
            <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon left-btn" icon="icon-ios7-arrow-left" onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-ios7-arrow-left" />  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title"><span xid="span1" style="font-weight:normal;"><![CDATA[成都]]></span></div>  
          <div class="x-titlebar-right reverse"> 
          </div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1icon" style="margin-bottom: 0.2rem;">
   <div class="x-col" xid="col1"></div>
   <div class="x-col x-col-fixed" xid="col2" style="width:auto;padding-bottom: 0;padding-top: 0;"><img src="$UI/zhixin/img/main/04.png" alt="" xid="icontq" bind-attr-src=' $model.todayData.val("night_weather_pic")'></img></div>
   <div class="x-col" xid="col3"></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2zhaungtai" style="margin-top: -0.1rem;padding-top: 0;">
   <div class="x-col" xid="col6"></div>
   <div class="x-col x-col-fixed" xid="col4" style="width:auto;padding-bottom: 0;padding-top: 0;">
    <span xid="span2" style="color: rgba(255, 255, 255, 0.9);font-size:24px;" bind-text='$model.todayData.val("day_weather")'><![CDATA[雷阵雨]]></span></div> 
   <div class="x-col" xid="col5"></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3time" style="margin-top: 0px;">
   <div class="x-col" xid="col9"></div>
   <div class="x-col x-col-fixed" xid="col7" style="width:auto;padding-bottom: 0;padding-top: 0;">
    <span xid="span3" style="color: rgba(255, 255, 255, 0.9);font-size:14px;" bind-text="'今天：周'+$model.todayData.val(&quot;day&quot;)"><![CDATA[今天：周三]]></span></div> 
   <div class="x-col" xid="col8"></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4wendu" style="margin-top: 0px;">
   <div class="x-col" xid="col12"></div>
   <div class="x-col x-col-fixed" xid="col10" style="width:auto;padding-bottom: 0;padding-top: 0;">
    <span xid="span4" style="color:white;font-size:36px;" bind-text="$model.todayData.val(&quot;night_air_temperature&quot;)+ ' ~ '+$model.todayData.val(&quot;day_air_temperature&quot;)+'℃'"><![CDATA[9~12℃]]></span></div> 
   <div class="x-col" xid="col11"></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5pm" style="margin-top: 10px;">
   <div class="x-col" xid="col15"></div>
   <div class="x-col x-col-fixed" xid="col13" style="width:auto;padding-bottom: 0;padding-top: 0;">
    <span xid="span5" style="color: rgba(255, 255, 255, 0.9);font-size:14px;border-radius: 8px;padding: 10px;background-color: #FFBB07;;" bind-text="'空气质量：'+$model.todayData.val(&quot;quality&quot;)"><![CDATA[空气质量：良]]></span></div> 
   <div class="x-col" xid="col14"></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6tuijian" style="margin-top: 10px;">
   <div class="x-col" xid="col18"></div>
   <div class="x-col x-col-fixed" xid="col16" style="width:auto;padding-bottom: 0;padding-top: 0;">
    <span xid="span6" style="color: rgba(255, 255, 255, 0.9);font-size:14px;" bind-text='$model.todayData.val("sports")'><![CDATA[有降水，推荐室内休闲娱乐]]></span></div> 
   <div class="x-col" xid="col17"></div></div></div><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="temperatureData">
   <ul class="x-list-template" xid="listTemplateUl1" style="margin-bottom:0;">
    <li xid="li1" style="padding:0;margin:0;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row7" style="padding: 0;">
   <div class="x-col" xid="col19" style="padding: 0;line-height: 40px;"><span xid="span7" style="margin-left:10px;" bind-text='val("ymd")'><![CDATA[12.01]]></span>
  <span xid="span10" bind-text='val("action")' bind-css="{'bac': val(&quot;action&quot;) =='今天' ||val(&quot;action&quot;) =='明天'}"><![CDATA[今天]]></span></div>
   <div class="x-col" xid="col20" style="padding: 0;line-height: 40px;"><img src="$UI/zhixin/img/main/04.png" alt="" xid="image7" height="40px;" bind-attr-src=' val("day_weather_pic")'></img>
  <span xid="span8" bind-text='val("day_weather")'><![CDATA[雷阵雨]]></span></div>
   <div class="x-col" xid="col21" style="padding: 0;line-height: 40px;"><span xid="span9" class="pull-right" style="margin-right:10px;" bind-text="val(&quot;night_air_temperature&quot;)+' ~ '+val(&quot;day_air_temperature&quot;)+'℃'"><![CDATA[9~12℃]]></span></div></div></li></ul> </div></div>
  </div>
  </div> 
</div>