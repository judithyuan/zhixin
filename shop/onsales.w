<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;width:226px;top:103px;left:271px;" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="activityGoodsData" idColumn="goods_id">
   <column label="商品id" name="goods_id" type="String" xid="xid1"></column>
   <column label="商品图片路径" name="img_url" type="String" xid="xid2"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1" style="top:0"> 
      <div class="x-panel-top" xid="top1"> 
         
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar top" style="color:#333;font-weight:normal;background-color:#fafafa;font-size:0.36rem;" title="热销商品">
          <div class="x-titlebar-left"> 
             
          <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon" icon="icon-ios7-arrow-left" onClick="{operation:'window.close'}" xid="backBtn" style="padding:0;padding-left:0.4rem;font-size:0.6rem"> 
              <i class="icon-ios7-arrow-left" />  
              <span></span> 
            </a></div>  
          <div class="x-titlebar-title" style="font-size:0.36rem;font-weight:normal">热销商品</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div></div>  
  <div class="x-panel-content" xid="content1">
   <img alt="" xid="activityTitle"></img>
   <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="activityGoodsData" autoLoad="true">
    <ul class="x-list-template" xid="listTemplateUl1">
     <li xid="li1">
      <img src="" alt="" xid="image2" bind-attr-src=' val("img_url")' bind-click="image2Click"></img></li> </ul> </div> </div></div> 
</div>