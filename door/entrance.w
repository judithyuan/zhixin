<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;" onLoad="modelLoad"> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="选择入口"
          class="x-titlebar top">
          <div class="x-titlebar-left top-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon left-btn" icon="icon-ios7-arrow-left"
              onClick="backBtnClick" xid="backBtn"> 
              <i class="icon-ios7-arrow-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title" style="font-size:0.36rem;font-weight:normal;">选择入口</div>  
          <div class="x-titlebar-right reverse top-right"> 
          <span xid="span3" bind-click="span1Click" class="right-btn">使用说明</span></div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1" style="background-color:#f0f0f0;bottom:0"><div xid="div1" style="margin-top:0.42rem;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="height:0;">
   <div class="x-col" xid="col1"></div>
   <div class="x-col" xid="col2" style="text-align: center;"><span xid="span4" style="font-size:0.3rem"><![CDATA[]]></span></div>
   <div class="x-col" xid="col3" style="text-align:right;margin-right:10px;"></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col x-col-fixed" xid="col4" style="text-align: center;">
    <img src="$UI/zhixin/img/start/whiteopen.png" alt="" xid="image3" id="dmimg1" style="width:0.4rem;"></img><p xid="p1" style="margin-top:0.22rem;"><img src="$UI/zhixin/img/start/dmwhite.png" alt="" xid="image1" id="img1open" style="width:3.3rem" bind-click="image1Click"></img></p>
  </div> 
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="padding:0;align-items:center;margin-top:0.26rem;">
   <div class="x-col x-col-fixed" xid="col14" style="width:3rem;margin:0 auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="邀请访客 - 大门" xid="button1" style="border-radius:0.4rem;color:#555555;border:1px solid #ACABAB;width:100%;height:0.8rem;line-height:0.8rem;font-size:0.3rem;" onClick="button1Click">
   <i xid="i1"></i>
   <span xid="span7">邀请访客 - 大门</span></a></div>
   </div></div>
  <div xid="div2" style="margin-top:0.42rem;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="height:0rem;display:none;">
    <div class="x-col" xid="col12"></div>
    <div class="x-col" xid="col10" style="text-align: center;">
     <span xid="span6" style="font-size:18px"><![CDATA[]]></span></div> 
    <div class="x-col" xid="col11" style="text-align:right;margin-right:10px;"></div></div> 
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="height:4rem;">
    <div class="x-col x-col-fixed" xid="col8" style="text-align: center;">
     <img src="$UI/zhixin/img/start/whiteopen.png" alt="" xid="image4" id="dymimg2" style="width:0.4rem;"></img>
  <p xid="p2" style="margin-top:0.22rem"><img src="$UI/zhixin/img/start/dymwhite.png" alt="" xid="image2" id="img2open" style="width:3.3rem;" bind-click="image2Click"></img></p></div> 
    </div> 
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="padding:0;margin:0;align-items:center;margin-top:0.26rem;">
   <div class="x-col x-col-fixed" xid="col17" style="padding:0;margin:0 auto;width:auto;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="邀请访客 - 单元门" xid="button2" style="border-radius:0.4rem;color:#555555;border:1px solid #ACABAB;width:100%;height:0.8rem;width:3rem;line-height:0.8rem;font-size:0.3rem;" onClick="button2Click">
     <i xid="i2"></i>
     <span xid="span8">邀请访客 - 单元门</span></a> </div> 
   </div></div></div>
  </div> 
<div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="loadpopOver">
   <div class="x-popOver-overlay" xid="div5" style="background-color:black;"></div>
   <div class="x-popOver-content" xid="div4" style="margin-left:-30px;background-color:rgba(255, 255, 255, 0);width:100%;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button5" icon="icon-loading-b" style="font-size:48px;color:#7bc93d;">
     <i xid="i5" class="icon-loading-b"></i>
     <span xid="span11"></span></a> </div> </div></div>