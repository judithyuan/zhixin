<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:23px;left:192px;height:auto;" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="data" idColumn="url" confirmRefresh="false">
   <column name="url" type="String" xid="column2"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-content xiugai" xid="content1" style="topbackground-color:#f0f0f0;top:0px;"><div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel2" style="margin-bottom:0px;border-radius:0;background-color:white;border: none;    border: none;">
   
   </div>
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel3" style="background-color:#f0f0f0;border-bottom:0;    box-shadow: 0 1px 1px rgba(255, 255, 255, 0);top:0;">
   <iframe frameborder="0" src="" id="iframe1" xid="iframeyh" width="100%" bind-attr-src='$model.data.val("url")'></iframe></div>
  </div>
  </div> 
</div>