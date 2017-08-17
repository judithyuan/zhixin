<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onActive="modelActive" style="top:73px;left:139px;height:auto;"/> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar text-orange top" xid="titleBar" title="选择房屋信息">
     <div class="x-titlebar-left top-left" xid="left1">
      <a component="$UI/system/components/justep/button/button" class="btn btn-icon-left btn-only-icon text-orange left-btn" xid="button1" icon="icon-ios7-arrow-left" onClick="{operation:'window.close'}">
       <i xid="i7" class="icon-ios7-arrow-left"></i>
       <span xid="span3"></span></a> </div> 
     <div class="x-titlebar-title" xid="title1" style="font-weight: normal;background-color:#fafafa;color:#333333;">选择房屋信息</div>
     <div class="x-titlebar-right reverse" xid="right1"></div></div> </div> 
   <div class="x-panel-content" xid="content1">
    
    
    
     
  
  <div xid="div1" style="padding:0 0.3rem;background-color:#fff;position:relative;"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label65" xid="labelEdit4" style="background-color:white;margin:0.2rem 0 0;height:1rem;border-bottom:1px solid #eee;">
   <label class="x-label" xid="label4" style="text-align:left;font-weight:normal;padding-right:0.38rem;width:auto;font-size:0.3rem;height:1rem;line-height:1rem;color:#333;">城市</label>
   <input type="hidden" xid="cid" bind-value="$model.getdist('cid')"></input>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="ctxt" readonly="true" bind-click="seldist" bind-value="$model.getdist('ctxt')" style="border:none;height:0.9rem;line-height:1rem;"></input></div>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button3" style="font-size:0.4rem;position:absolute;top:0.25rem;right:0.3rem;height:0.4rem;">
   <i xid="i1" class="icon-ios7-arrow-right" style="color:#666;"></i>
   <span xid="span1"></span></a></div>
  <div xid="div2" style="padding:0 0.3rem;background-color:#fff;position:relative;"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label65" xid="labelEdit6" style="background-color:white;height:1rem;border-bottom:1px solid #eee;">
   <label class="x-label" xid="label6" style="text-align:left;font-weight:normal;padding-right:0.38rem;width:auto;font-size:0.3rem;height:1rem;line-height:1rem;color:#333;">楼盘</label>
   <input type="hidden" xid="lid" bind-value="$model.getdist('lid')"></input>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="ltxt" readonly="true" bind-click="seldist" bind-value="$model.getdist('ltxt')" style="border:none;height:0.9rem;line-height:1rem;"></input></div>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button4" style="font-size:0.4rem;position:absolute;top:0.25rem;right:0.3rem;height:0.4rem;">
   <i xid="i2" class="icon-ios7-arrow-right" style="color:#666;"></i>
   <span xid="span2"></span></a></div><div xid="div3" style="padding:0 0.3rem;background-color:#fff;position:relative;"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label65" xid="labelEdit9" style="background-color:white;height:1rem;">
   <label class="x-label" xid="label9" style="text-align:left;font-weight:normal;padding-right:0.38rem;width:auto;font-size:0.3rem;height:1rem;line-height:1rem;color:#333;">房间</label>
   <input type="hidden" xid="bid" bind-value="$model.getdist('bid')"></input>
   <input type="hidden" xid="rid" bind-value="$model.getdist('rid')"></input>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="brtxt" readonly="true" bind-click="seldist" bind-value="$model.getdist('brtxt')" style="border:none;height:0.9rem;line-height:1rem;"></input></div>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button5" style="font-size:0.4rem;position:absolute;top:0.25rem;right:0.3rem;height:0.4rem;">
   <i xid="i3" class="icon-ios7-arrow-right" style="color:#666;"></i>
   <span xid="span4"></span></a></div><a component="$UI/system/components/justep/button/button" class="btn btn-default center-block" label="下一步" xid="registerBtn" style="margin-top:0.4rem;background-color:#7bc83e;height:0.8rem;margin-left:0.4rem;margin-right:0.4rem;font-size:0.36rem;background-color:#7bc83e;border:none;" onClick="registerBtnClick">
     <i xid="i8"></i>
     <span xid="span5" style="font-size:large">下一步</span></a>
  
  </div> 
   </div></div>