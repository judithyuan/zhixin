<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;" onLoad="modelLoad"></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1" style="background-color:#dde7dc;"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="门禁"
        class="x-titlebar" style="background-color:transparent;"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="backBtnClick"
            xid="backBtn"> 
            <i class="icon-chevron-left"/>  
            <span/> 
          </a> 
        </div>  
        <div class="x-titlebar-title" style="font-weight:normal;">一键开门
          门禁
        </div>  
        <div class="x-titlebar-right reverse" style="padding-right:10px;"> 
          <span xid="span1" style="font-size:14px;color:#7bc93d;" bind-click="span1Click"><![CDATA[使用说明]]></span>
        </div> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1">
      <div xid="div1" align="center" style="margin-top:75px;">
        <div xid="div2" style="margin-bottom:20px;">
          <img src="$UI/zhixin/img/bmfwImg/dian1.png" alt="" xid="image4" id="img4"
            style="width:20px;"/>
        </div>
        <img src="$UI/zhixin/img/bmfwImg/km.png" alt="" xid="image1" id="img1" style="width:185px;"
          bind-click="image1Click"/> 
      </div>  
      <div xid="div3" align="center" style="margin-top:40px;">
        <a component="$UI/system/components/justep/button/button" class="btn btn-link"
          label="邀请访客" xid="button1" style="border-radius:25px;color:#9ebc93;border:1px solid #9ebc93;width:121px;" onClick="button1Click"> 
          <i xid="i1"/>  
          <span xid="span3">邀请访客</span>
        </a>
      </div>
    <div xid="div6" align="center" style="margin-top:20px;">
   <span xid="span4" style="color:#9ebc93"><![CDATA[请主动打开您的蓝牙设备]]></span></div></div> 
  </div> 
<div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="loadpopOver">
   <div class="x-popOver-overlay" xid="div5" style="background-color:black;"></div>
   <div class="x-popOver-content" xid="div4" style="margin-left:-30px;background-color:rgba(255, 255, 255, 0);width:100%;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button5" icon="icon-loading-b" style="font-size:48px;color:#7bc93d;">
     <i xid="i5" class="icon-loading-b"></i>
     <span xid="span11"></span></a> </div> </div></div>
