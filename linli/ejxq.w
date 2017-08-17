<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:43px;left:286px;" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="detailDta" onCustomRefresh="detailDtaCustomRefresh" idColumn="id" confirmRefresh="false">
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
  <column name="type" type="String" xid="xid22"></column>
  <column label="限定人数" name="limited_number" type="String" xid="xid23"></column>
  <column label="当前人数" name="current_number" type="String" xid="xid24"></column>
  <column label="报名信息" name="active_msg" type="String" xid="xid25"></column>
  <column label="报名状态" name="active_state" type="String" xid="xid26"></column>
  <column label="点赞" name="thumbs_up" type="String" xid="xid27"></column>
  <column name="up_time" type="String" xid="xid28"></column>
  <column name="add_time" type="String" xid="xid29"></column></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="reviewDta" onCustomRefresh="reviewDtaCustomRefresh" idColumn="id" confirmRefresh="false">
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
  <column name="user_id" type="String" xid="xid21"></column></div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="生活详情"
        class="x-titlebar top"> 
        <div class="x-titlebar-left top-left"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-only-icon left-btn" icon="icon-ios7-arrow-left" onClick="{operation:'window.close'}"
            xid="backBtn"> 
            <i class="icon-ios7-arrow-left" style="font-size:0.6rem;"/>  
            <span/> 
          </a> 
        </div>  
        <div class="x-titlebar-title" style="font-weight:normal;font-family:苹方 常规;font-size:0.36rem;">生活详情</div>  
        <div class="x-titlebar-right reverse top-right" xid="right">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon right-btn" label="button" xid="button2" icon="img:$UI/zhixin/img/bellh.png|" onClick="button2Click">
    <i xid="i2"></i>
    <img src="$UI/zhixin/img/bellh.png" xid="image7" style="width:0.4rem;"></img><span xid="span15"></span></a> </div></div> 
    </div>  
    <div class="x-panel-content" xid="content1">
      <div component="$UI/system/components/justep/list/list" class="x-list"
        xid="list2" data="detailDta" style="    border-bottom: 1px solid #DDD;"> 
        <ul class="x-list-template" xid="listTemplateUl2"> 
          <li xid="li2">
            <div xid="div1" style="padding:0.4rem 0.3rem;">
              <h3 xid="h31" style="color:#333333;margin:0;font-size:0.46rem;font-weight:bold;" bind-text='val("title")'><![CDATA[标题]]>
  <span xid="span23"></span></h3>  
              <span xid="span1" style="font-size: 0.26rem;display:block;color:#333;margin-top:0.2rem;" bind-text="val('updatetime')"><![CDATA[2017年3月7日 17:11:08]]></span>  
              <p xid="p1" id="inner" style="color:#333;margin-top:0.2rem;" bind-html=' val("content")'><![CDATA[这里是公告公告内容。这里是公告公告内容。这里是公告公告内容。这里是公告公告内容。这里是公告公告内容。这里是公告公告内容。这里是公告公告内容。这里是公告公告内容。这里是公告公告内容。这里是公告公告内容。这里是公告公告内容。这里是公告公告内容。]]></p>  
              <div xid="div2" style="margin-top:0.6rem;">
                <img src="$UI/zhixin/img/shop/eyes.png" alt="" xid="image1"
                  style="width:0.3rem;"/>  
                <span xid="span3" style="color:#999999;margin-left:0.14rem;vertical-align:middle;font-size:0.28rem;"
                  bind-text="val(&quot;browse_volume&quot;)"><![CDATA[10]]></span>
                <img src="$UI/zhixin/img/shop/up.png" alt="" xid="image2" style="width:0.3rem;margin-left:0.24rem;"
                  bind-click="image2Click"/>  
                <span xid="span4" id="article1" bind-click="image2Click" bind-text='val("thumbs_up")' style="color:#999999;margin-left:0.14rem;vertical-align:middle;font-size:0.28rem;"><![CDATA[20]]></span>
              </div>
            </div>
          </li>
        </ul> 
      </div>  
        
      <div xid="div3" style="display:none;padding:0px 10px;line-height:40px;width:100%;background-color:#eee;" bind-visible=' $model.detailDta.val("type") ==1'>
        <div xid="div4">
          <span xid="span2"><![CDATA[目前人数：]]></span>  
          <span xid="span11" style="color:#ff5969" bind-text='$model.detailDta.val("current_number")'><![CDATA[56]]></span>  
          <span xid="span12" style="margin-left:10px;"><![CDATA[限定人数：]]></span>  
          <span xid="span13" style="color:#ff5969" bind-text='$model.detailDta.val("limited_number")'><![CDATA[100]]></span>
        <span xid="span16" bind-text='$model.detailDta.val("active_msg")' class="pull-right"><![CDATA[]]></span></div>
        <div xid="div5">
          <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label btn-block" label="立即报名" xid="button1" style="border:none;background-color:#ff5969;" onClick="button1Click"> 
            <i xid="i1" />  
            <span xid="span14" style="color:#fff;font-size:14px;">立即报名</span>
          </a>
        </div>
        <span xid="span5"><![CDATA[最新评论]]></span> 
      </div><h5 xid="h51" style="padding:0 0.3rem;font-size:0.3rem;color:#333333;line-height:0.8rem;background-color:#f0f0f0;">最新评论</h5><div component="$UI/system/components/justep/list/list" class="x-list"
        xid="list1" data="reviewDta"> 
        <ul class="x-list-template" xid="listTemplateUl1"> 
          <li xid="li1" style="border-bottom:1px solid #eee;background-color:white;padding:0.2rem 0.3rem;">
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row1"> 
              <div class="x-col x-col-fixed" xid="col1" style="width:auto;">
                <img src="$UI/zhixin/img/user/2321.png" alt="" xid="image3"
                  style="padding-top: 2px;width: 50px;padding-right:5px;" bind-attr-src=" val(&quot;avatar&quot;)" bind-visible='val("avatar") !="" &amp;&amp; val("avatar") !=null &amp;&amp; val("avatar") !=undefined'/>
              <img src="$UI/zhixin/img/user/2321.png" alt="" xid="image4" style="padding-top: 2px;width: 50px;padding-right:5px;" bind-visible='val("avatar")  ==""  || val("avatar")  ==null  || val("avatar")  ==undefined'></img></div>  
              <div class="x-col" xid="col3">
                <div component="$UI/system/components/justep/row/row" class="x-row"
                  xid="row2" style="color:#999999;font-size:0.26rem;padding:0.2rem 0;"> 
                  <div class="x-col x-col-fixed" xid="col4" style="width:auto;">
                    <span xid="span6" bind-text=' val("mobile").replace(/^(\d{3})\d{4}(\d{4})$/, "$1****$2")'><![CDATA[186****9898]]></span>
                  </div>  
                  <div class="x-col" xid="col5">
                    <span xid="span7" bind-text="val(&quot;add_time&quot;)" class="pull-right"><![CDATA[2017年3月7日 17:11:08]]></span>
                  </div> 
                </div>  
                <div component="$UI/system/components/justep/row/row" class="x-row"
                  xid="row3"> 
                  <div class="x-col" xid="col7">
                    <span xid="span8" bind-text="val(&quot;content&quot;)"><![CDATA[此处为评价内容，此处为评价内容，此处为评价内容，此处为评价内容。]]></span>
                  </div> 
                </div>  
                <div component="$UI/system/components/justep/row/row" class="x-row pull-right" xid="row4">
   
  <div class="x-col" xid="col12"><div xid="div6" bind-click="image5Click" class="pull-right"><img src="$UI/zhixin/img/shop/down.png" alt="" xid="image5" style="width:0.3rem;"></img><span id="ggdown" xid="span10" bind-text='val("thumbs_down")' style="vertical-align:middle;margin-left:0.14rem;">20</span></div><div xid="div7" bind-click="image6Click" class="pull-right"><img src="$UI/zhixin/img/shop/up.png" alt="" xid="image6" style="width:0.3rem;"></img><span id="ggup" xid="span9" style="margin-right:0.32rem;margin-left:0.14rem;vertical-align:middle;" bind-text='val("thumbs_up")'>10</span></div></div>
  </div>
  </div>
            </div>
          </li>
        </ul> 
      </div> 
    
  </div> 
  <div class="x-panel-bottom" xid="bottom1"><div xid="div10" align="left" class="clearfix bottom-fixed" style="padding-top:0.1rem;-moz-box-shadow:0 -2px 5px #eeeeee; -webkit-box-shadow:0 -2px 5px #eeeeee; box-shadow:0 -2px 5px #eeeeee;">
   <div xid="div9" class="pull-left">
    <input component="$UI/system/components/justep/input/input" class="form-control textarea1ejxq" xid="textarea1ejxq" style="border-radius:0.66rem;width:5.94rem;height:0.66rem;padding:0 0.33rem;box-shadow:none;" placeHolder="请输入评论内容" id="releasepl2"></input></div> 
   <div xid="div8" style="background-color:#7bc83e;width:0.66rem;height:0.66rem;border-radius:0.33rem;text-align:center;" class="pull-right" bind-click="clicksend">
    <span xid="span20" style="color:white;line-height:0.66rem;font-size:0.26rem;text-align:center;">发送</span></div> </div></div></div> 
</div>
