<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:329px;left:582px;"
    onModelConstruct="modelModelConstruct" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="wenduData" idColumn="day_air_temperature" confirmRefresh="false" onCustomRefresh="wenduDataCustomRefresh">
   <column name="day_air_temperature" type="String" xid="column2"></column>
  <column name="day_weather" type="String" xid="column3"></column>
  <column name="night_air_temperature" type="String" xid="column4"></column>
  <column label="night_weather_pic" name="night_weather_pic" type="String" xid="column5"></column>
  <column label="quality" name="quality" type="String" xid="column6"></column>
  <column label="sports" name="sports" type="String" xid="column7"></column>
  <column name="day" type="String" xid="column1"></column>
  <data xid="default2">[{&quot;day_air_temperature&quot;:&quot;天气&quot;,&quot;day_weather&quot;:&quot;天气&quot;,&quot;night_air_temperature&quot;:&quot;天气&quot;,&quot;night_weather_pic&quot;:&quot;天气&quot;,&quot;quality&quot;:&quot;天气&quot;,&quot;sports&quot;:&quot;天气&quot;,&quot;day&quot;:&quot;天气&quot;}]</data>
  <column name="xh" type="String" xid="xid10"></column>
  <column name="xh1" type="String" xid="xid11"></column></div><div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="imgData" idColumn="id" onCustomRefresh="imgDataCustomRefresh"> 
      <column label="ID" name="id" type="Integer" xid="xid1"></column>
  <column label="图片路径" name="banner" type="String" xid="xid2"></column>
  <column name="image" type="String" xid="xid17"></column></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="version" idColumn="name"><column name="name" type="String" xid="xid3"></column>
  <column name="num" type="String" xid="xid12"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="tianqiData" onCustomRefresh="tianqiDataCustomRefresh"></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="gonggaoData" idColumn="id" onCustomRefresh="gonggaoDataCustomRefresh"><column name="id" type="String" xid="xid4"></column>
  <column name="title" type="String" xid="xid5"></column>
  <column name="add_time" type="String" xid="xid6"></column>
  <data xid="default1">[{&quot;id&quot;:&quot;1&quot;,&quot;title&quot;:&quot;关于国庆节中秋节小区安全&quot;,&quot;time&quot;:&quot;2016-9-25&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;title&quot;:&quot;关于小区问题 &quot;,&quot;time&quot;:&quot;2016-9-24&quot;}]</data>
  <column name="desc" type="String" xid="xid7"></column>
  <column name="content" type="String" xid="xid8"></column>
  <column name="up_time" type="String" xid="xid9"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="topData" idColumn="data" onCustomRefresh="topDataCustomRefresh"><column label="商品ID" name="data" type="String" xid="xid13"></column>
  <column name="image" type="String" xid="xid14"></column>
  <column name="title" type="String" xid="xid15"></column>
  <column name="type" type="String" xid="xid16"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="rightData" idColumn="goodID"><column name="goodID" type="String" xid="xid18"></column>
  <column name="img" type="String" xid="xid19"></column>
  <column name="type" type="String" xid="xid20"></column>
  <column name="rectangle1_isintime" type="String" xid="xid22"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="leftData" onCustomRefresh="rightDataCustomRefresh" idColumn="goodID">
   <column name="goodID" type="String" xid="column8"></column>
  <column name="img" type="String" xid="column9"></column>
  <column name="type" type="String" xid="column10"></column>
  <column name="rectangle1_isintime" type="String" xid="xid23"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="top1Data" onCustomRefresh="rightDataCustomRefresh" idColumn="goodID">
   <column name="goodID" type="String" xid="column11"></column>
  <column name="img" type="String" xid="column12"></column>
  <column name="type" type="String" xid="column13"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="healthyDta" onCustomRefresh="healthyDtaCustomRefresh" idColumn="id">
   <column label="编号" name="id" type="String" xid="column15"></column>
  <column label="标题" name="title" type="String" xid="column16"></column>
  <column name="datatime" type="String" xid="column14"></column>
  <column label="内容" name="content" type="String" xid="xid24"></column>
  <column name="cid" type="String" xid="xid25"></column>
  <column label="浏览量" name="browse_volume" type="String" xid="xid26"></column>
  <column label="更新发布时间" name="updatetime" type="String" xid="xid27"></column>
  <column name="publisher" type="String" xid="xid28"></column>
  <column label="楼盘ID" name="lid" type="String" xid="xid29"></column>
  <column label="分类名称" name="category_name" type="String" xid="xid30"></column>
  <column name="default_picture" type="String" xid="xid21"></column>
  <column name="desc" type="String" xid="xid31"></column>
  <column name="category_name" type="String" xid="xid32"></column></div><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="ggtsData" onCustomRefresh="ggtsDataCustomRefresh"></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="topIconData" idColumn="short_name" onCustomRefresh="topIconDataCustomRefresh"><column name="short_name" type="String" xid="xid33"></column>
  <column name="icon_name" type="String" xid="xid34"></column>
  <column name="icon_image" type="String" xid="xid35"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="bottomIconData" idColumn="short_name" onCustomRefresh="bottomIconDataCustomRefresh"><column name="short_name" type="String" xid="xid36"></column>
  <column name="icon_name" type="String" xid="xid37"></column>
  <column name="icon_image1" type="String" xid="xid38"></column>
  <column name="icon_image2" type="String" xid="xid39"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="houseInfo" idColumn="addr" confirmRefresh="false" autoNew="true">
   <column name="addr" type="String" xid="column17"></column>
   <column name="avatar" type="String" xid="column19"></column>
   <data xid="default3">[{&quot;addr&quot;:&quot;鲜花大院 一栋一单元&quot;,&quot;id&quot;:&quot;1&quot;},{&quot;addr&quot;:&quot;丽都花园内侧 一栋二单元&quot;,&quot;id&quot;:&quot;2&quot;},{&quot;addr&quot;:&quot;天府世家 二栋一单元&quot;,&quot;id&quot;:&quot;3&quot;}]</data>
   <column name="state" type="String" xid="column18"></column>
   <column name="district_id" type="String" xid="column24"></column>
   <column label="租户" name="identity" type="String" xid="column25"></column>
   <column name="name" type="String" xid="column26"></column>
   <column name="password" type="String" xid="column27"></column>
   <column name="room_id" type="String" xid="column20"></column>
   <column name="state" type="String" xid="column21"></column>
   <column name="telphone" type="String" xid="column22"></column>
   <column name="user_id" type="String" xid="column23"></column>
   <column label="1（当前户）" name="default" type="String" xid="column28"></column></div></div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    xid="popSelect" position="center" direction="left-bottom" anchor="top1" style="display:none;"> 
    <div class="x-popOver-overlay" xid="div8"/>  
    <div class="x-popOver-content" xid="div9" style="width:100%;background-color:#fff;"> 
      <h4 xid="h41"><![CDATA[选择城市:]]></h4>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-default"
        label="选择" xid="button1" onClick="button1Click"> 
        <i xid="i5"/>  
        <span xid="span12">选择</span> 
      </a> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/distpicker/distpicker2" class="x-popPicker" xid="distpicker" style="top:2px;left:16px;">
   <div class="x-popPicker-overlay" xid="div10"></div>
   <div class="x-popPicker-content" xid="div11">
    <div class="x-poppicker-header" xid="div12">
     <button class="btn btn-default x-btn-ok" xid="button2">确定</button></div> </div> </div><div component="$UI/system/components/justep/panel/panel" class="x-card x-full x-panel"
    xid="panel" style="background-color: white;"> 
    <div class="x-panel-content" xid="content" style="bottom:0.98rem;"> 
      <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
        active="0" xid="mainContents" swipe="false" wrap="false" slidable="false"
        routable="true"> 
        <div class="x-contents-content x-cards" xid="homeContent"> 
          <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-has-iosstatusbar"
            xid="panel3" style="background-color:#f0f0f0;"> 
            <div class="x-panel-content" xid="content3" _xid="C6F40D0C9B4000019954141011501287"
              style="bottom: 0px;overflow-x: hidden;"> 
              <div class="panel panel-default x-card" component="$UI/system/components/bootstrap/panel/panel" xid="panel1" style="margin-bottom:0px;position:relative;height:3.4rem;"> 
                <div component="$UI/system/components/bootstrap/carousel/carousel" class="x-carousel carousel" xid="carousel1" auto="true" style="height:3.4rem;" interval="5"> 
                  <div class="x-contents carousel-inner" role="listbox" component="$UI/system/components/justep/contents/contents" active="0" slidable="true" wrap="true" swipe="true" routable="false" xid="contentsImg" style="height:3.4rem;"> 
                    <div class="x-contents-content" xid="content1" style="width:100%;height:3.4rem;"> 
                      <img src="" alt="" xid="scrollImg" class="kj-img1" bind-click="openPageClick" /> 
                    </div> 
                  </div><ol class="carousel-indicators" xid="ol1" style="margin:0;width:auto;"></ol> 
                <div class="x-col" xid="col12" style="width:100%;text-align:center;padding:0 0.4rem;position:absolute;top:0.44rem">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="selBuildBtn" onClick="selBuildBtnClick" style="color: #fff; border:none;line-height:0.5rem;min-width:0.8rem;width:auto;background-color: rgba(204, 204, 204, 0.44);    border-radius: 0.25rem;padding-left:0.56rem;padding-right:0.56rem;"> 
                  <img src="./img/main/sy-dizhi.png" alt="" xid="image1" style="height:0.34rem;margin-right:0.14rem;vertical-align:middle"></img><span xid="spanAddr" style="font-size:0.28rem;vertical-align:middle" bind-text=" $model.switchText()"><![CDATA[]]></span>  
                    </a>
  <span xid="span9" style="position:absolute;right:0.4rem;width:0.4rem;" bind-click="span9Click">
   <img src="$UI/zhixin/img/bell.png" alt="" xid="image13" style="max-width:100%;max-height:100%;"></img>
  <span xid="span9xiaohondian" class="ts" id="span98" style="display:none;"></span></span>
  </div></div> 
              </div><div component="$UI/system/components/justep/list/list" class="x-list clearfix" xid="topIconAll" style="display:block;background-color:#fff;padding:0.2rem 0;" data="topIconData">
   <ul class="x-list-template x-min-height" xid="listTemplateUl10" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl1">
    <li class="pull-left col text-center" componentname="li(html)" id="undefined_li1" style="width:20%;" xid="topIcon" bind-click="topIconClick">
     <div class="text-center" xid="div1" bind-css="{'openDoor':val(&quot;short_name&quot;)=='open_door'}">
      <img alt="" xid="image9" style="width: 0.88rem" class="img-responsive center-block tb-img5" align="bottom" bind-attr-src="val('icon_image')" bind-css="{'openImg':val(&quot;short_name&quot;)=='open_door'}"></img>
      <span xid="span10" style="font-size: 0.26rem;display: inline-block;margin-top: 0.1rem;" bind-visible="val(&quot;short_name&quot;)!='open_door'" bind-text='val("icon_name")'>在线缴费</span></div> </li> </ul> </div><div xid="div1main" style="height:3rem;padding-bottom:0.1rem;background-color:#fff;display:none;" bind-click="div1mainClick">
   <img alt="" xid="imgBanner" style="width:100%;height:100%;"></img></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="weather" style="height:0.9rem;margin-top:0.2rem;background-color:#ffffff;padding:0 0.2rem;border-bottom:1px solid #eeeeee;">
   <div class="x-col" xid="col51"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" style="padding:0;margin:0;" data="wenduData" limit="1">
   <ul class="x-list-template" xid="listTemplateUl2" style="padding:0;margin:0;">
    <li xid="li2"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row11" bind-click="row11Click" style="line-height:0.9rem;">
   <div class="x-col x-col-fixed" xid="col4" style="font-weight: normal;width:1.3rem;font-size:0.28rem;color:#7bc83e;"><p id="p1" xid="p1" style="display:inline-block;" bind-text="$model.wenduData.val(&quot;night_air_temperature&quot;) +'-' + $model.wenduData.val(&quot;day_air_temperature&quot;)"><![CDATA[24-20]]></p><p xid="p2" style="display:inline-block;"><![CDATA[℃]]></p>
  </div>
   
   <div class="x-col" xid="col14" style="font-size:0.28rem;"><span xid="span13" bind-text='(function(){
	if(  val("day_weather").length&gt;"6"){    
		return  val("day_weather").substring(0,6); 
 }else{return  val("day_weather")} 
 })
 ()'><![CDATA[多云转雷阵雨]]></span></div></div>
  </li></ul> </div></div>
   <div class="x-col x-col-fixed" xid="col53" style="width:auto;line-height:0.9rem;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" label="呼叫物业" xid="button8" icon="img:$UI/zhixin/img/main/phone.png|" style="font-size:0.28rem;color:#666666;" onClick="image16Click">
   <img src="$UI/zhixin/img/main/phone.png" xid="image5" style="height:0.5rem;"></img><span xid="span6" style="font-size:0.28rem;">呼叫物业</span></a></div>
  </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="announce" style="height:0.9rem;background-color:#ffffff;padding:0 0.2rem;">
     <div class="x-col x-col-fixed" xid="col11" style="width:auto;">
      <div component="$UI/system/components/justep/list/list" class="x-list" xid="list4" style="padding:0;margin:0;" data="wenduData" limit="1">
       <ul class="x-list-template" xid="listTemplateUl4" style="padding:0;margin:0;">
        <li xid="li1" style="padding:0;margin:0;">
         <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
          <div class="x-col x-col-fixed" xid="col3" style="width:1.3rem;line-height:0.9rem;">
           <img src="$UI/zhixin/img/main/gonggao-new.png" alt="" xid="image14" style="width:1.1rem;"></img></div> 
  </div> 
         </li> </ul> </div> </div> 
      
     <div class="x-col" xid="col10">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="height:0.9rem;position:absolute;z-index:99;width:4rem;">
    <div class="x-col x-col-fixed w-scroll" xid="col5" style="position: relative;width:4rem;">
     <div xid="div5main" style="overflow: hidden;height:0.5rem;line-height:0.5rem;position: absolute;white-space: nowrap;text-overflow: ellipsis;width:4rem;margin-top:0.2rem;">
      <div component="$UI/system/components/justep/list/list" class="x-list w-h4Box" xid="list1" style="position: absolute;list-style:none;width:4rem;" data="gonggaoData" limit="5" bind-click="list1Click">
       <ul class="x-list-template" xid="listTemplateUl1" style="list-style:none;">
        <li xid="li4" style="list-style:none;overflow:hidden;width:201px;" class="h4even" bind-click="li3Click">
         <span xid="span2" style="font-size: 0.28rem;color:#333333;display:inline-block;" bind-text='(function(){  if(val("title").length&gt;"13"){       return val("title").substring(0,13)+"...";   }else{return val("title")}   })  ()'>关于中秋节和国庆节小区安全问题</span></li> </ul> </div> </div> </div> 
    <div class="x-col x-col-fixed" xid="col7" style="width:auto;"></div></div> </div><div class="x-col x-col-fixed x-col-center" xid="col9" style="width:auto">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-right pull-right" label="更多" xid="button11" style="color:#999999;" onClick="image18Click" icon="icon-ios7-arrow-right">
   <span xid="span8" style="font-size:0.24rem;">更多</span></a></div> 
  </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="health" style="padding:0 0.2rem;background-color:#ffffff;margin-top:0.2rem;">
     <div class="x-col" xid="col17">
      <div component="$UI/system/components/justep/list/list" class="x-list" xid="list3" style="padding:0;margin:0;" data="healthyDta" limit="1">
       <ul class="x-list-template" xid="listTemplateUl3" style="padding:0;margin:0;">
        <li xid="li3" style="padding:0;margin:0;" bind-click="jiankang">
         <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="height:1.56rem;align-items:center;">
          <div class="x-col" xid="col16" style="margin-right:0.3rem;">
           
  <div xid="div17" style="height:1.12rem;text-align:left;font-weight: bold;line-height:0.56rem;overflow:hidden;text-overflow: ellipsis;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label " xid="button3" style="font-size:0.24rem;color:#7bc83e;padding: 0 0.05rem;border: 1px solid #7bc83e;line-height:0.36rem;border-radius:0.06rem;" label="健康">
   <i xid="i9"></i>
   <span xid="span14" bind-text='val("category_name")' style="font-size:0.28rem;">健康</span></a><span xid="span7" style="color:#666666;overflow:hidden;text-overflow:ellipsis;height:100%;font-size:0.28rem;font-weight:normal;" bind-text='val("desc")'><![CDATA[(function(){try {if(val("desc").length>"26"){return val("desc").substring(0,26)+"...";   }else{return val("desc")} } catch (e) {}}]]></span></div></div> 
          <div class="x-col x-col-fixed" xid="col8" style="width:auto;">
      
  <div xid="imgBox" style="width:1.28rem;max-height:1.28rem;overflow:hidden;"><img alt="" xid="image4" style="width: 100%;" bind-attr-src=' val("default_picture")'></img></div></div></div> </li> </ul> </div> </div> 
      </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="onSales" style="height:4rem;background-color:#ffffff;margin-top:0.2rem;">
   <div class="x-col x-col-fixed" xid="col32" style="overflow: hidden;border-right:1px solid #eee;width:3.3rem;">
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list8" data="top1Data">
   <ul class="x-list-template" xid="listTemplateUl8" style="margin-bottom:0px;">
    <li xid="li8" bind-click="li8Click" style="text-align:center;overflow:hidden;height:4rem;"><img src="$UI/zhixin/img/error.png" alt="" xid="image16" bind-attr-src=' val("img")' class="img1" style="max-width:100%;height:100%"></img></li></ul> </div></div>
   <div class="x-col" xid="col33" style="overflow:hidden;">
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list5" data="rightData" style="height:50%;">
   <ul class="x-list-template" xid="listTemplateUl5" style="margin-bottom:0px;">
    <li xid="li5" bind-click="li5Click" style="height: 2rem;text-align:cener;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row15" style="height: 2rem;t">
   <div class="x-col" xid="col37" style="overflow:hidden;line-height:0.2rem;"><img src="$UI/zhixin/img/error.png" alt="" xid="image18" bind-attr-src=' val("img")' class="img2" style="width:100%;"></img>
  <img src="$UI/zhixin/img/main/jishida.png" alt="" xid="imagejishi" style="width:100%" bind-visible="val(&quot;rectangle1_isintime&quot;) =='1'"></img></div></div></li></ul> </div><div xid="div6" style="width:100%;height:1px;background-color:#eee;"></div><div component="$UI/system/components/justep/list/list" class="x-list" xid="list7" data="leftData">
   <ul class="x-list-template" xid="listTemplateUl7" style="margin-bottom:0px;">
    <li xid="li7" bind-click="li7Click" style="text-align:center;height:auto;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row16" style="height: 2rem;">
   <div class="x-col" xid="col40" style="overflow:hidden;line-height:0.2rem;text-align:center;"><img src="$UI/zhixin/img/error.png" alt="" xid="image19" bind-attr-src=' val("img")' class="img3" style="max-height:100%;max-width:100%;" height="auto"></img>
  <img src="$UI/zhixin/img/main/jishida.png" alt="" xid="image2jishida" style="max-height:100%;max-width:100%;" bind-visible="val(&quot;rectangle1_isintime&quot;) =='1'"></img></div></div></li></ul> </div>
  
  </div>
   </div><div xid="serise" style="padding:0.2rem 0.2rem 0 0.2rem;display:block;background-color:#ffffff;margin-top:0.2rem"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list6" data="topData">
   <ul class="x-list-template" xid="listTemplateUl6">
    <li xid="li6" bind-click="findmainshowpage"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row19">
    <div class="x-col" xid="col45" style="margin-bottom:0.2rem;">
     <img src="$UI/zhixin/img/error.png" alt="" xid="image29" style="width:100%;" bind-attr-src=' val("image")'></img>
  </div> 
    </div></li></ul> </div></div>
  </div> 
          </div> 
        </div>
        </div> 
    </div>  
    <div class="x-panel-bottom" xid="bottom1" style="height:0.98rem;border-top:1px solid #eee;"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified mainbottom" tabbed="true" xid="buttonGroup3" style="background-color:white;margin-top:0.09rem;border:none;display:block;">
   
   
   
   
   <div component="$UI/system/components/justep/list/list" class="x-list" xid="bottomIconList" data="bottomIconData">
   <ul class="x-list-template" xid="listTemplateUl9">
    <li xid="bottomIcon" class="pull-left col text-center" style="height:0.98rem;width:20%;" bind-click="bottomIconClick">
     <a component="$UI/system/components/justep/button/button" class="btn btn-icon-top" label="首页" xid="bottomBtn" target="homeContent" style="color:#666;font-weight:normal;" bind-css="{'bottomFont':val(&quot;short_name&quot;)==&quot;home_page&quot;}">
   <img src="$UI/zhixin/img/main/home.png" xid="image40" style="width:0.48rem;height:0.48rem;" bind-attr-src='val("short_name")=="home_page"?val("icon_image2"):val("icon_image1")' height="0.48rem"></img>
   <span xid="span40" style="font-size: 0.22rem;" bind-css="{}" bind-text='val("icon_name")'>首页</span></a></li> </ul> </div></div></div></div> 
<div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="ggtspopOver" dismissible="false" style="display:none;">
   <div class="x-popOver-overlay" xid="div7"></div>
   <div class="x-popOver-content" xid="div7" style="width:6.4rem;height:8.6rem;margin-left:-3.2rem;margin-top:-4.3rem;padding-top:0.8rem;">
    <img src="$UI/zhixin/img/main/x.png" alt="" xid="image20" style="position:absolute;right:0;top:0;height:0.5rem"></img><img src="$UI/zhixin/img/main/wygg.png" alt="" xid="image3" style="width:6.4rem;"></img>
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row13">
   <div class="x-col" xid="col38"><span xid="span30" style="color:#333;font-weight:bold;text-align:center;width:100%;font-size:0.3rem;margin-top:0.3rem;" class="center-block"><![CDATA[物业公告]]></span></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row10" style="margin-top:0.3rem;">
     <div class="x-col" xid="col26" style="padding:0 0.4rem;">
      <span xid="span20" bind-text="ggts" style="color:#999;font-size:0.28rem;">额度分公司的金科股份可是当时的回复就开始打哈卡的酸辣粉三大</span></div> </div> 
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row12" style="position:absolute;bottom:50px;display:none;">
     <div class="x-col" xid="col27" style="text-align: right;">
      <span xid="span25" style="margin-right: 0.8rem;" bind-text="ggtsTime">2017-4-4</span></div> </div> 
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8" style="position: absolute;bottom:0.3rem;">
     <div class="x-col" xid="col2" bind-click="col2Click" style="position:relative;">
      <img src="$UI/zhixin/img/main/button.png" alt="" xid="image24" style="width:4.6rem;height:1.6rem;margin-left:0.9rem;"></img><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="查看详情" xid="button4" style="font-size:0.3rem;color:#fff;background-color:transparent;margin-left:auto;margin-right:auto;width:4.6rem;position:absolute;top:0;left:0.9rem;height:1rem;top:0.2rem;line-height:1rem;font-weight:bold;">
       <i xid="i13"></i>
       <span xid="span1">确定</span></a> 
  </div> </div> 
    <a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="button12" style="position: absolute;top:0;right:0;opacity: 0;padding:0;height:0.5rem;width:0.5rem;" onClick="ggtsclise" label="1233" icon="linear linear-trash">
     <i xid="i15" class="linear linear-trash"></i>
     <span xid="span26">1233</span></a> 
  <div xid="div24" style="height:7.6rem;background-color:#fff;position:absolute;top:1rem;left:0;width:6.4rem;z-index:-1;"></div></div> </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="ykrzpopOver" style="display:none;">
   <div class="x-popOver-overlay" xid="div26" style="background-color:black;"></div>
   <div class="x-popOver-content" xid="div26" style="height:8.6rem;margin-left:-3.2rem;margin-top:-4.3rem;padding-top:0.8rem;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="button9" style="font-size:16px;color:#7bc93d;    position: absolute;right: 0;z-index:20;height:0.5rem;width:0.5rem;top:0;" onClick="button6Clickcancle">
     <i xid="i2"></i>
     <span xid="span33"></span></a> 
    <img src="$UI/zhixin/img/main/x.png" alt="" xid="image27" style="position:absolute;right:0;top:0;height:0.5rem"></img>
    <img src="$UI/zhixin/img/main/rzfw.png" alt="" xid="image28" style="width:6.4rem;"></img>
    <div xid="div4" style="width:6.4rem;height:3rem;padding-top:0.8rem;">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row18">
      <div class="x-col" xid="col21">
       <span xid="span31" style="width:100%;text-align:center;color:#999;font-size:0.28rem;" class="center-block">该服务目前仅对指定小区的认证住户开通</span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row18" style="margin-top:0.2rem;">
      <div class="x-col" xid="col15">
       <span xid="span22" style="width:100%;text-align:center;color:#999;font-size:0.28rem;" class="center-block"></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row17" style="margin-top:0.2rem;">
      <div class="x-col" xid="col13">
       <span xid="span17" style="width:100%;text-align:center;color:#999;font-size:0.28rem;" class="center-block"></span></div> </div> </div> 
    <div xid="div3" style="height:7.6rem;background-color:#fff;position:absolute;top:1rem;left:0;width:6.4rem;z-index:-1;"></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row22" style="position: absolute;bottom:0.3rem;">
   <div class="x-col" xid="col46" style="position:relative;height:0.8rem;margin:0 0.15rem 0 0.3rem;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="立即认证" xid="button18" style="background-color:rgb(93,248,224);height:100%;line-height:0.8rem;color:#fff;font-size:0.36rem;border-radius:5px;" onClick="button7Clicklikerenz">
     <i xid="i17"></i>
     <span xid="span41">立即认证</span></a> </div> 
   <div class="x-col" xid="col48" style="height:0.8rem;margin:0 0.3rem 0 0.15rem;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="再看看" xid="button19" style="background-color:#e3e3e3;height:100%;line-height:0.8rem;color:#fff;font-size:0.36rem;border-radius:5px;" onClick="button19Click">
     <i xid="i18"></i>
     <span xid="span42">再看看</span></a> </div> </div></div> </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="villagepopOver">
   <div class="x-popOver-overlay" xid="divzzc" bind-click="divzzcClick"></div>
   <div class="x-popOver-content" xid="div5village" style="top:0.84rem;left:20%;">
  <div xid="div19" class="sanjiao"></div><div xid="div18village" style="height:3rem;overflow-y:scroll;border-radius:5px;"><div component="$UI/system/components/justep/list/list" class="x-list" xid="listManyHouse" data="houseInfo" style="background-color:#fff;">
   <ul class="x-list-template" xid="listTemplateUl11">
    <li xid="liHouse" style="border-bottom:1px solid #eee;height:1rem;padding:0 0.2rem;line-height:1rem;font-size:0.28rem;text-align:center;" bind-click="addrClick">
     <span xid="span3" bind-text='val("addr")'>地址</span></li> </ul> </div></div>
  </div></div>
  <div xid="div1zzc" style="width:100%;height:100%;background-color:rgba(0,0,0,0.5);position:fixed;top:0;left:0;z-index:999;display:none;">
   <div xid="div2redB" style="height:60%;width:80%;background-color:#df4237;position:absolute;top:50%;left:50%;margin-left:-40%;margin-top:-50%;">
    <img src="$UI/zhixin/img/redB.png" alt="" xid="image2" style="width:100%;height:100%;powition;position;relative;z-idex:1001;"></img>
    <div xid="div4reason" style="position:absolute;z-index:1001;left:0;top:60%;width:100%;text-align:center;">
     <span xid="span1reason" style="color:#eacb98;"></span>
     </div> 
    <div xid="div5btn" style="position:absolute;z-index:1001;left:0;top:70%;width:100%;text-align:center;">
     <span xid="span3btn" style="display:inline-block;width:60%;background-color:#ebcd9a;height:0.8rem;border-radius:10px;color:#333;line-height:0.8rem;" bind-click="span3btnClick">领取</span></div> 
    <span xid="span5qx" style="position:absolute;top:0;left:0;width:0.5rem;height:0.5rem;z-index:1001;" bind-click="span5qxClick"></span></div> </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="advertisementPopOver" style="display:none;" dismissible="false">
   <div class="x-popOver-overlay" xid="div2ggzzc" bind-click="div2ggzzcClick"></div>
   <div class="x-popOver-content" xid="divAdvertisement" style="width:6.4rem;height:8.6rem;margin-left:-3.2rem;margin-top:-4.3rem;padding-top:0.8rem;">
    <img alt="" xid="image6Advertisement" style="width:6.4rem;" bind-attr-src="syggtp" bind-click="image6AdvertisementClick"></img>
    <img src="$UI/zhixin/img/main/x.png" alt="" xid="imageClose" style="position:absolute;right:0;top:0;height:0.5rem;display:none;" bind-click="imageCloseClick"></img></div> </div></div>
