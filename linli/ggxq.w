<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:33px;left:129px;" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="detailDta" onCustomRefresh="detailDtaCustomRefresh" idColumn="id">
   <column label="浏览量" name="browse_volume" type="String" xid="xid1"></column>
  <column name="cid" type="String" xid="xid2"></column>
  <column name="content" type="String" xid="xid3"></column>
  <column name="datatime" type="String" xid="xid4"></column>
  <column name="default_picture" type="String" xid="xid5"></column>
  <column name="id" type="String" xid="xid6"></column>
  <column name="lid" type="String" xid="xid7"></column>
  <column label="发布者用户编号" name="publisher" type="String" xid="xid8"></column>
  <column name="title" type="String" xid="xid9"></column>
  <column label="最新更新时间" name="updatetime" type="String" xid="xid10"></column>
  <column label="点赞" name="thumbs_up" type="String" xid="xid22"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="reviewDta" onCustomRefresh="reviewDtaCustomRefresh" idColumn="id" confirmRefresh="false">
   <column label="添加时间" name="add_time" type="String" xid="xid11"></column>
  <column label="用户头像" name="avatar" type="String" xid="xid12"></column>
  <column label="评论内容" name="content" type="String" xid="xid13"></column>
  <column label="对应的文章编号" name="ehomelife_id" type="String" xid="xid14"></column>
  <column label="自增编号" name="id" type="String" xid="xid15"></column>
  <column label="当前用户手机号码" name="mobile" type="String" xid="xid16"></column>
  <column name="publiser" type="String" xid="xid17"></column>
  <column label="当前状态（1：正常，2：非正常）" name="state" type="String" xid="xid18"></column>
  <column label="坏点赞数量" name="thumbs_down" type="String" xid="xid19"></column>
  <column label="好点赞数量" name="thumbs_up" type="String" xid="xid20"></column>
  <column name="user_id" type="String" xid="xid21"></column>
  <rule xid="rule1"></rule>
  <column label="判断是否点赞" name="flag" type="String" xid="xid23"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="公告详情"
          class="x-titlebar top">
          <div class="x-titlebar-left top-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon left-btn" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title" style="font-weight:normal;font-family:苹方 常规;">公告详情</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="detailDta">
   <ul class="x-list-template" xid="listTemplateUl2">
    <li xid="li2">
     <div xid="div1" style="padding:10px;">
      <h3 xid="h31" style="color:#333;margin-top:0px;" bind-text='val("title")'>物业公告标题</h3>
      <span xid="span1" style="font-size: 13px;display:block;color:#333;" bind-text='val("updatetime")'>2017年3月7日 17:11:08</span>
      <p xid="p1" id="inner2" style="margin-top:10px;color:#333;font-size:13px;" bind-html=' val("content")'>这里是公告公告内容。这里是公告公告内容。这里是公告公告内容。这里是公告公告内容。这里是公告公告内容。这里是公告公告内容。这里是公告公告内容。这里是公告公告内容。这里是公告公告内容。这里是公告公告内容。这里是公告公告内容。这里是公告公告内容。</p>
      <div xid="div2" style="    margin: 10px 0px;">
       <img src="$UI/zhixin/img/shop/eyes.png" alt="" xid="image1" style="width:20px;"></img>
       <span xid="span3" style="margin-right: 10px;display: inline-block;" bind-text='val("browse_volume")'>10</span>
       <img src="$UI/zhixin/img/shop/up.png" alt="" xid="image2" style="width:20px;    margin-top: -4px;" bind-click="image2Click"></img>
       <span xid="span4" id="article" bind-click="image2Click" bind-text='val("thumbs_up")'>20</span></div> </div> </li> </ul> </div><div xid="div3" style="padding-left:10px;line-height:40px;width:100%;background-color:#eee;"><span xid="span5"><![CDATA[最新评论]]></span></div>
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="reviewDta" style="    padding-bottom: 58px;">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" style="padding:10px;border-bottom:10px solid #eee;">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
      <div class="x-col x-col-fixed" xid="col1" style="width:auto;">
       <img src="$UI/zhixin/img/user/2321.png" alt="" xid="image3" style="padding-top: 2px;width: 50px;padding-right:5px;" bind-attr-src=' val("avatar")' bind-visible='val("avatar") !="" &amp;&amp; val("avatar") !=null &amp;&amp; val("avatar") !=undefined'></img>
  <img src="$UI/zhixin/img/user/2321.png" alt="" xid="image7" style="padding-top: 2px;width: 50px;padding-right:5px;" bind-visible='val("avatar")  ==""  || val("avatar")  ==null  || val("avatar")  ==undefined'></img></div> 
      <div class="x-col" xid="col3">
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
        <div class="x-col x-col-fixed" xid="col4" style="width:auto;padding-right:20px;">
         <span xid="span6" bind-text="(function(){    ">186****9898</span></div> 
        <div class="x-col" xid="col5">
         <span xid="span7" bind-text='val("add_time")'>2017年3月7日 17:11:08</span></div> </div> 
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
        <div class="x-col" xid="col7">
         <span xid="span8" bind-text='val("content")'>此处为评价内容，此处为评价内容，此处为评价内容，此处为评价内容。</span></div> </div> 
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
        <div class="x-col" xid="col2"></div><div class="x-col x-col-20" xid="col12" bind-click="image6Click">
         <img src="$UI/zhixin/img/shop/up.png" alt="" xid="image6" style="    margin-top: -4px;width:16px;"></img>
         <span id="ggup" xid="span9" style="margin-right: 10px;display: inline-block;" bind-text='val("thumbs_up")'>10</span>
         
         </div> 
  
  <div class="x-col x-col-20" xid="col6" bind-click="image5Click"><img src="$UI/zhixin/img/shop/down.png" alt="" xid="image5" style="    margin-top: -4px;width:16px;"></img><span id="ggdown" xid="span10" bind-text='val("thumbs_down")'>20</span></div></div> </div> </div> </li> </ul> </div>
  <div xid="div4" class="pl"><textarea component="$UI/system/components/justep/textarea/textarea" class="form-control" xid="textarea1" id="releasepl" placeHolder="期待您的评论" style="box-shadow:none;width:100%;" bind-blur="textarea1Blur"></textarea></div></div>
  </div> 
<div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="livelineOver" dismissible="false">
   <div class="x-popOver-overlay" xid="div5"></div>
   <div class="x-popOver-content" xid="div5" style="margin-left:-150px;margin-top:-150px;">
    <img src="$UI/zhixin/img/gameover.png" alt="" xid="image4" style="width:300px;"></img>
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10" style="position: absolute;bottom:10px;">
     <div class="x-col" xid="col20">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="确定" xid="button5" style="font-size:16px;color:white;background-color:#7bc93d;margin-left: auto;margin-right: auto;width:50%;border-radius: 8px;    border-color: #57AD14;" onClick="denglu">
       <i xid="i3"></i>
       <span xid="span16">确定</span></a> </div> </div> </div> </div></div>