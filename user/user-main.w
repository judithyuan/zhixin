<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:81px;left:306px;" onLoad="modelLoad" onActive="modelActive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="countData" onCustomRefresh="countDataCustomRefresh"></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="phoneData" onCustomRefresh="phoneDataCustomRefresh" idColumn="phone"><column name="phone" type="String" xid="xid1"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="numcart" onCustomRefresh="numcartCustomRefresh"></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="bottomIconData" idColumn="short_name" onCustomRefresh="bottomIconDataCustomRefresh">
   <column name="short_name" type="String" xid="xid36"></column>
   <column name="icon_name" type="String" xid="xid37"></column>
   <column name="icon_image1" type="String" xid="xid38"></column>
   <column name="icon_image2" type="String" xid="xid39"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1" style="background-color:#f0f0f0;"> 
        
    <div xid="div7qrcodeusershare" style="display:none;height:100%;width:100%;position:absolute;top:0;background-color:rgba(0, 0, 0, 0.26);z-index: 10;" bind-click="div7qrcodeusershareClick"><div id="qrcode" xid="div6" style="position:absolute;"></div></div><div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar top" title="我的">
          <div class="x-titlebar-left"> 
            </div>  
          <div class="x-titlebar-title" style="font-weight:normal;font-weight:bold;font-size:0.36rem;">我的</div>  
          <div class="x-titlebar-right reverse top-right" bind-click="right1Click"> 
          <span xid="span3" style="display:inline-block;">
   <span xid="span2" style="width:0.3rem;position:relative;">
   <img src="$UI/zhixin/img/bellh.png" alt="" xid="image3" style="width:0.4rem;"></img>
   <span xid="span9xiaohondian" class="ts" id="span98" style="display:none;"></span></span></span></div>
        </div> 
      </div><div class="x-panel-content" xid="content1" style="background-color:#eeeeee;padding-top:0.2rem;bottom:0.98rem;"><div xid="div3" class="clearfix" style="background-color:#fff;color:#fff;border-bottom:1px solid #e3e3e3;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="height:2.2rem;padding:0.4rem 0 0.4rem 0.4rem;">
    <div class="x-col x-col-fixed" xid="col9" style="width:auto;"><img src="$UI/zhixin/img/user/avt.png" alt="" xid="image1" class="img-circle" bind-attr-src="$model.showAvatar()" style="width:1.4rem;"></img></div>
    <div class="x-col" xid="col10" style="width:auto;color: #333333;margin-left:0.2rem;">
     <div component="$UI/system/components/justep/row/row" class="x-row x-row-center" xid="row2" style="margin-top:0.2rem;align-items:center;width:auto;">
   <div class="x-col x-col-fixed" xid="col14" style="width:auto;position:relative;"><span xid="span4" style="font-size:0.3rem;font-weight:bold;vertical-algin:middle;line-height:100%;" bind-text="nameusermain" bind-visible="justep.Shell.user.get().is_auth_name=='1'"><![CDATA[熊猫e家用户]]></span>
  </div>
  <div class="x-col" xid="col32"><span xid="span35" style="padding:0 0.1rem;font-size:0.22rem;color:#ffffff;border-radius:0.18rem;text-align:center;display:inline-block;margin-left:0.1rem;background-color:#ff3333;display:inline-block;vertical-align:top;position:relative;top:0.02rem;left:.;" class="compatibility-height" bind-visible="justep.Shell.user.get().is_auth_name=='1'" bind-text="sfstr">已认证</span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="margin-top:0.2rem;">
   <span id="span5" xid="span5" style="line-height:100%;font-size:0.26rem;color:#999999;" bind-text="$model.phone()"><![CDATA[159****9898]]></span></div></div> 
    <div class="x-col x-col-20" xid="col11" style="margin-right:0.3rem;line-height:1.4rem;">
      
  
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-right" label="账户设置" xid="button2" icon="icon-ios7-arrow-right">
   <i xid="i4" class="icon-ios7-arrow-right" style="font-size:0.3rem;color:#999;right:0;"></i>
   <span xid="span28" bind-click="span28Click" style="color:#999;font-size:0.26rem;">账户设置</span></a></div> </div> 
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="rowqianbao" style="color:#333333;border-top: 1px solid #eeeeee;height:1rem;align-items:center;">
   <div class="x-col" xid="col19" bind-click="col19Click" style="padding:0px 5px;">
    <div xid="div14" bind-click="div14Click" style="text-align:center;">
     <span xid="span19">我的钱包</span></div> </div> 
   <div class="x-col x-col-fixed" xid="col16" style="width:1px;">
    <div xid="div16" style="background-color:#eeeeee;width:1px;height:0.44rem;"></div></div> 
   <div class="x-col" xid="col29">
    <div xid="div10" style="color:#7bc83e;text-align:center;" bind-click="div10Click">
     <span xid="span30">充值</span></div> </div> 
   <div class="x-col x-col-fixed" xid="col34" style="width:1px;">
    <div xid="div11" style="background-color:#eeeeee;width:1px;height:0.44rem;"></div></div> 
   <div class="x-col" xid="col33usermain">
    <div xid="div7usermain" bind-click="eCardClick" style="text-align:center;">
     <span xid="span6usermain" style="position:relative;">E卡
      <span xid="span8" style="position:absolute;background-color:red;border-radius:100%;border:3px solid red;top:-3px;right:-3px;width:0;height:0;"></span></span> </div> </div> </div></div>
  <ul xid="ul1" style="margin-top:0.2rem;padding:0 0 0 0.3rem;background-color:#ffffff;margin-bottom:0.2rem;">
   
   
   <li xid="lifangwu" style="height:1rem;">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row13" style="border-bottom: 1px solid #eeeeee;align-items:center;height:100%;" bind-click="col1Click">
     <div class="x-col x-col-fixed" xid="col37" style="width:0.58rem;margin-right:0.3rem;">
      <img src="$UI/zhixin/img/user/wdfw.png" alt="" xid="image7" style="width:0.58rem;height:0.58rem;"></img></div> 
     <div class="x-col" xid="col38">
      <span xid="span21"><![CDATA[我的房屋]]></span>
      </div> 
  <div class="x-col x-col-10" xid="col1" style="padding-right:0.3rem"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right" label="button" xid="button3" icon="icon-ios7-arrow-right">
   <i xid="i5" class="icon-ios7-arrow-right" style="font-size:0.4rem;color:#999;"></i>
   <span xid="span9"></span></a></div></div> </li><li xid="liwyjf" style="height:1rem;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9" style="border-bottom: 1px solid #eeeeee;align-items:center;height:100%;padding-right:0.3rem" bind-click="col15Click">
   <div class="x-col x-col-fixed" xid="col21" style="width:0.58rem;margin-right:0.3rem;">
    <img src="$UI/zhixin/img/user/wyjf.png" alt="" style="width:0.58rem;height:0.58rem;" xid="image18"></img></div> 
   <div class="x-col" xid="col20">
    <span xid="span32">物业缴费</span>
    </div> 
  <div class="x-col x-col-10" xid="col2">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right" label="button" xid="button4" icon="icon-ios7-arrow-right">
    <i xid="i6" class="icon-ios7-arrow-right" style="font-size:0.4rem;color:#999;"></i>
    <span xid="span10"></span></a> </div></div></li><li xid="liwybx" style="height:1rem;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10" style="border-bottom: 1px solid #eeeeee;align-items:center;height:100%;padding-right:0.3rem" bind-click="baoxiu">
    <div class="x-col x-col-fixed" xid="col22" style="width:0.58rem;margin-right:0.3rem;">
     <img src="$UI/zhixin/img/user/wybx.png" alt="" style="width:0.58rem;height:0.58rem;" height="35px" xid="image21"></img></div> 
    <div class="x-col" xid="col23">
     <span xid="span33"><![CDATA[物业报修]]></span>
     </div> 
  <div class="x-col x-col-10" xid="col3">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right" label="button" xid="button6wybx" icon="icon-ios7-arrow-right">
    <i xid="i8" class="icon-ios7-arrow-right" style="font-size:0.4rem;color:#999;"></i>
    <span xid="span11"></span></a> </div></div> </li> 
   <li xid="likdsm" style="height:1rem;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row11" style="align-items:center;height:100%;padding-right:0.3rem;border-bottom: 1px solid #eeeeee;" bind-click="kuaidi">
    <div class="x-col x-col-fixed" xid="col25" style="width:0.58rem;margin-right:0.3rem;">
     <img src="$UI/zhixin/img/user/kdsm.png" alt="" style="width:0.58rem;height:0.58rem;" xid="image23"></img></div> 
    <div class="x-col" xid="col24">
     <span xid="span34">快递上门</span></div> 
    <div class="x-col x-col-10" xid="col15">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right" label="button" xid="button7" icon="icon-ios7-arrow-right">
      <i xid="i9" class="icon-ios7-arrow-right" style="font-size:0.4rem;color:#999;"></i>
      <span xid="span12"></span></a> </div> </div> </li>
  <li xid="complaint" style="height:1rem;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="align-items:center;height:100%;padding-right:0.3rem" bind-click="complaint">
    <div class="x-col x-col-fixed" xid="col47" style="width:0.58rem;margin-right:0.3rem;">
     <img src="$UI/zhixin/img/user/complaint.png" alt="" style="width:0.58rem;height:0.58rem;" xid="image2"></img></div> 
    <div class="x-col" xid="col49">
     <span xid="span14">我的投诉</span></div> 
    <div class="x-col x-col-10" xid="col47">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right" label="button" xid="button13" icon="icon-ios7-arrow-right">
      <i xid="i2" class="icon-ios7-arrow-right" style="font-size:0.4rem;color:#999;"></i>
      <span xid="span15"></span></a> </div> </div> </li></ul>
  <ul xid="ul4" style="background-color:#fff;margin-bottom:0.2rem;padding:0 0 0 0.3rem;">
   <li xid="li3" style="height:1rem;">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="activity" style="align-items:center;height:100%;padding-right:0.3rem;" bind-click="activityClick">
     <div class="x-col x-col-fixed" xid="col44" style="width:0.58rem;margin-right:0.3rem;">
      <img src="$UI/zhixin/img/user/activity.png" alt="" style="width:0.58rem;height:0.58rem;" xid="image11"></img></div> 
     <div class="x-col" xid="col55">
      <span xid="span17" style=" ">活动订单</span></div> 
     <div class="x-col x-col-10" xid="col57">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right" label="button" xid="button14" icon="icon-ios7-arrow-right">
       <i xid="i7" class="icon-ios7-arrow-right" style="font-size:0.4rem;color:#999;"></i>
       <span xid="span29"></span></a> </div> </div> </li> </ul><ul xid="ul2" style="background-color:#fff;margin-bottom:0.2rem;padding:0 0 0 0.3rem;">
  <li xid="liscdd" style="height:1rem;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row12" style="border-bottom: 1px solid #eeeeee;align-items:center;height:100%;padding-right:0.3rem" bind-click="order">
    <div class="x-col x-col-fixed" xid="col35" style="width:0.58rem;margin-right:0.3rem;">
     <img src="$UI/zhixin/img/user/scdd.png" alt="" xid="image6" style="width:0.58rem;height:0.58rem;"></img></div> 
    <div class="x-col" xid="col36" style="padding-right:0.18rem;">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7" style="align-items:center">
      <div class="x-col x-col-fixed" xid="col8" style="width:1.6rem;">
       <span xid="span20">商城订单</span></div> 
      <div class="x-col" xid="col28" style="width:auto;font-size:0.26rem;color:#999;"></div>
      <div class="x-col x-col-fixed" xid="col12" style="width:auto;">
       
       <span xid="span8shopOrdernum" style="color:#999999;vertical-align:middle;">待支付订单</span><span xid="span18shopOrdernum" style="border-radius: 0.17rem;color:#ffffff;color:white;text-align:center;font-size:0.22rem;padding:0 0.12rem;background-color:#ff3333;display:inline-block;vertical-align:middle;position:relative;top:-0.01rem;" bind-text="shopOrdernum"><![CDATA[0]]></span></div> 
  <div class="x-col x-col-fixed" xid="col43" style="width:auto;"></div></div> 
  </div> 
    <div class="x-col x-col-fixed" xid="col18" style="width:auto;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right" label="button" xid="button8" icon="icon-ios7-arrow-right" style="padding-top:0.05rem;">
      <i xid="i10" class="icon-ios7-arrow-right" style="font-size:0.4rem;color:#999;"></i>
      <span xid="span13"></span></a> </div> </div> </li><li xid="lishdz" style="height:1rem;">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row14" style="align-items:center;height:100%;padding-right:0.3rem" bind-click="col6Click">
     <div class="x-col x-col-fixed" xid="col39" style="width:0.58rem;margin-right:0.3rem;">
      <img src="$UI/zhixin/img/user/shdz.png" alt="" style="width:0.58rem;height:0.58rem;" xid="image8"></img></div> 
     <div class="x-col" xid="col40">
      <span xid="span22" style=" "><![CDATA[收货地址]]></span>
      </div> 
  <div class="x-col x-col-10" xid="col26">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right" label="button" xid="button10" icon="icon-ios7-arrow-right">
    <i xid="i11" class="icon-ios7-arrow-right" style="font-size:0.4rem;color:#999;"></i>
    <span xid="span18"></span></a> </div></div> </li></ul>
  <ul xid="ul3" style="background-color:#ffffff;padding:0 0 0 0.3rem;"><li xid="liyjjy" style="height:1rem;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row15" style="border-bottom: 1px solid #eeeeee;align-items:center;height:100%;padding-right:0.3rem" bind-click="col13Click">
    <div class="x-col x-col-fixed" xid="col41" style="width:0.58rem;margin-right:0.3rem;">
     <img src="$UI/zhixin/img/user/yjjy.png" alt="" style="width:0.58rem;height:0.58rem;" xid="image9"></img></div> 
    <div class="x-col bd-none" xid="col13">
     <span xid="span23">意见建议</span></div> 
    <div class="x-col x-col-10" xid="col27">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right" label="button" xid="button11" icon="icon-ios7-arrow-right">
      <i xid="i12" class="icon-ios7-arrow-right" style="font-size:0.4rem;color:#999;"></i>
      <span xid="span25"></span></a> </div> </div> </li>
  <li xid="litjhy" style="height:1rem;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row16" style="align-items:center;height:100%;padding-right:0.3rem" bind-click="col45Click">
    <div class="x-col x-col-fixed" xid="col42" style="width:0.58rem;margin-right:0.3rem;">
     <img src="$UI/zhixin/img/user/tjhy.png" alt="" style="width:24px;height:24px;" height="35px" xid="image10"></img></div> 
    <div class="x-col" xid="col4">
     <span xid="span24">推荐好友</span></div> 
    <div class="x-col x-col-10" xid="col31">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right" label="button" xid="button12" icon="icon-ios7-arrow-right">
      <i xid="i13" class="icon-ios7-arrow-right" style="font-size:0.4rem;color:#999;"></i>
      <span xid="span26"></span></a> </div> </div> </li></ul>
  
  </div>
  <div class="x-panel-bottom" xid="bottom1" style="height:0.98rem;border-top:1px solid #eee;background-color:#fff;">
   
  <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified mainbottom" tabbed="true" xid="buttonGroup3" style="background-color:white;margin-top:0.09rem;border:none;display:block;">
   <div component="$UI/system/components/justep/list/list" class="x-list" xid="bottomIconList" data="bottomIconData">
    <ul class="x-list-template" xid="listTemplateUl9" style="margin:0;">
     <li xid="bottomIcon" class="pull-left col text-center" style="height:0.98rem;width:20%;" bind-click="bottomIconClick">
      <a component="$UI/system/components/justep/button/button" class="btn btn-icon-top" label="首页" xid="bottomBtn" target="homeContent" style="color:#666;font-weight:normal;" bind-css="{'bottomFont':val(&quot;short_name&quot;)==&quot;mine&quot;}">
       <img src="$UI/zhixin/img/main/home.png" xid="image40" style="width:0.48rem;height:0.48rem;" bind-attr-src='val("short_name")=="mine"?val("icon_image2"):val("icon_image1")'></img>
       <span xid="span40" style="font-size: 0.22rem;" bind-css="{}" bind-text='val("icon_name")'>首页</span></a> </li> </ul> </div> </div></div></div> 
<div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="phonePopOver">
   <div class="x-popOver-overlay" xid="div8"></div>
   <div class="x-popOver-content" xid="div9" style="margin-left: -140px;bottom:0;width:280px;" bind-click="div9Click">
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="phoneData" bind-click="list1Click" limit="1">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div component="$UI/system/components/justep/row/row" class="x-row " xid="row6" style="margin-bottom:10px;position: absolute; bottom: 100px;">
   <div class="x-col" xid="col5"></div>
   <div class="x-col x-col-80" xid="col6" style="border-radius:5px;background-color:white;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="800-800-111" xid="button1" style="color:#7bc93d;border-radius:0;" onClick="button1Click">
     <i xid="i1"></i>
     <span xid="span1" bind-text='val("phone")'>800-800-111</span></a> </div> 
   <div class="x-col" xid="col7"></div></div></li></ul> </div>
  </div></div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="livelineOver" dismissible="false">
   <div class="x-popOver-overlay" xid="div2"></div>
   <div class="x-popOver-content" xid="div5" style="margin-left:-150px;margin-top:-150px;">
    <img src="$UI/zhixin/img/gameover.png" alt="" xid="image5" style="width:300px;"></img>
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="position: absolute;bottom:10px;">
     <div class="x-col" xid="col17">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="确定" xid="button5" style="font-size:16px;color:white;background-color:#7bc93d;margin-left: auto;margin-right: auto;width:50%;border-radius: 8px;    border-color: #57AD14;" onClick="denglu">
       <i xid="i3"></i>
       <span xid="span7">确定</span></a> </div> </div> </div> </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="loadpopOveruser" opacity="1">
   <div class="x-popOver-overlay" xid="div4" style="background-color:white;"></div>
   <div class="x-popOver-content" xid="div13" style="margin-left:-100px;margin-top:-80px;">
    <img src="$UI/zhixin/img/loading.gif" alt="" xid="image24" style="width:200px;"></img></div> </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="Overlineerroruser" dismissible="false">
   <div class="x-popOver-overlay" xid="div15"></div>
   <div class="x-popOver-content" xid="div1" style="margin-left:-150px;margin-top:-150px;">
    <img src="$UI/zhixin/img/error.png" alt="" xid="image25" style="width:300px;"></img>
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row17" style="position: absolute;bottom:10px;">
     <div class="x-col" xid="col30">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="确定" xid="button9" style="font-size:16px;color:white;background-color:#7bc93d;margin-left: auto;margin-right: auto;width:50%;border-radius: 8px;    border-color: #57AD14;" onClick="denglu">
       <i xid="i14"></i>
       <span xid="span27">确定</span></a> </div> </div> </div> </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="choosepopOver" style="display:none;">
   <div class="x-popOver-overlay" xid="div17" style="background-color:black;"></div>
   <div class="x-popOver-content" xid="div12" style="height:8.6rem;margin-left:-3.2rem;margin-top:-4.3rem;padding-top:0.8rem;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="button15" style="font-size:16px;color:#7bc93d;    position: absolute;right: 0;z-index:20;height:0.5rem;width:0.5rem;top:0;" onClick="button6Click">
     <i xid="i15"></i>
     <span xid="span39"></span></a> 
    <img src="$UI/zhixin/img/main/x.png" alt="" xid="image16" style="position:absolute;right:0;top:0;height:0.5rem"></img>
    <img src="$UI/zhixin/img/main/rzfw.png" alt="" xid="image15" style="width:6.4rem;"></img>
    <div xid="div22" style="width:6.4rem;height:3rem;padding-top:0.8rem;">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row23">
      <div class="x-col" xid="col45">
       <span xid="span38" style="width:100%;text-align:center;color:#999;font-size:0.28rem;" class="center-block"><![CDATA[该服务目前仅对指定小区的认证住户开通]]></span></div> </div> 
     
     </div> 
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row22" style="position: absolute;bottom:0.3rem;">
     <div class="x-col" xid="col46" style="position:relative;height:0.8rem;margin:0 0.15rem 0 0.3rem;">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="立即认证" xid="button18" style="background-color:rgb(93,248,224);height:100%;line-height:0.8rem;color:#fff;font-size:0.36rem;border-radius:5px;" onClick="button18Click">
   <i xid="i17"></i>
   <span xid="span41">立即认证</span></a></div> 
  <div class="x-col" xid="col48" style="height:0.8rem;margin:0 0.3rem 0 0.15rem;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="再看看" xid="button19" style="background-color:#e3e3e3;height:100%;line-height:0.8rem;color:#fff;font-size:0.36rem;border-radius:5px;" onClick="button19Click">
   <i xid="i18"></i>
   <span xid="span42">再看看</span></a></div></div> 
    <div xid="div23" style="height:7.6rem;background-color:#fff;position:absolute;top:1rem;left:0;width:6.4rem;z-index:-1;"></div></div> </div></div>