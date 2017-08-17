<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;width:101px;top:41px;left:583px;" onLoad="modelLoad"> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1" style="background-color:#f0f0f0;"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar text-orange top" xid="titleBar" title="账户设置">
   <div class="x-titlebar-left top-left" xid="left1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-icon-left btn-only-icon left-btn" xid="button3" icon="icon-ios7-arrow-left" onClick="{operation:'window.close'}">
     <i xid="i3" class="icon-ios7-arrow-left" style="color:#333;"></i>
     <span xid="span3"></span></a> </div> 
   <div class="x-titlebar-title" xid="title1" style="font-weight:normal;">账户设置</div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>  
    <div class="x-panel-content" xid="content1" style="background-color:#eeeeee;overflow-x: hidden;"><ul xid="ul1" class="list-item" style="margin:0;background-color:white;padding-left:0.3rem;margin-top:0.2rem;">
   <li xid="li2" style="height:1rem;">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row12" style="border-bottom: 1px solid #eeeeee;height:1rem;">
     <div class="x-col x-col-10" xid="col35">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="头像" xid="button1" style="color:#333333;font-size:0.3rem;height:1rem;line-height:1rem;">
   <i xid="i1"></i>
   <span xid="span2">头像</span></a></div> 
     <div class="x-col x-col-90 clearfix" xid="col36">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right" label="button" xid="button7" icon="icon-ios7-arrow-right" style="font-size:0.4rem;color:#999;height:1rem;line-height:1rem;margin-right:0.3rem;display:none;">
   <i xid="i7" class="icon-ios7-arrow-right"></i>
   <span xid="span8"></span></a><img alt="" xid="avatar" style="width:0.64rem;height:0.64rem;margin-top:0.18rem;margin-right:0.3rem;" class="pull-right img-circle" src="$UI/zhixin/img/user/avt.png" bind-attr-src="$model.showAvatar()"></img>
  </div> </div> </li> 
   <li xid="li3" style="height:1rem;">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row13" style="border-bottom: 1px solid #eeeeee;align-items:center;">
     <div class="x-col x-col-10" xid="col37">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="姓名" xid="button2" style="color:#333333;font-size:0.3rem;height:1rem;line-height:1rem;">
   <i xid="i2"></i>
   <span xid="span4">姓名</span></a></div> 
     <div class="x-col x-col-90" xid="col38" style="padding-right:0.3rem">
      
      <input component="$UI/system/components/justep/input/input" class="form-control" xid="input1" style="width:100%;border:0;text-align:right;font-size:0.26rem;color:#999;vertical-align:middle;" placeHolder="设置姓名" bind-ref="$model.name()" onBlur="input1Blur"></input>
  </div> </div> </li> 
   <li xid="li4" style="height:1rem;">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row14" style="border-bottom: 1px solid #eeeeee;">
     <div class="x-col x-col-10" xid="col39">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="性别" xid="button4" style="color:#333333;font-size:0.3rem;height:1rem;line-height:1rem;">
   <i xid="i4"></i>
   <span xid="span5">性别</span></a></div> 
     <div class="x-col x-col-90 clearfix" xid="col40">
      
<!--       <input component="$UI/system/components/justep/input/input" class="form-control" xid="input2" style="width:150px;border:0;float:right;text-align:right" placeHolder="保密" bind-ref="$model.newsex()" onBlur="input2Blur" min="js:new Date()" readonly="true"></input> -->
      <span xid="span1" style="height:1rem;padding-right: 0.3rem;border:0;float:right;text-align:right;line-height:1rem;color:#999;font-size:0.26rem;"><![CDATA[保密]]></span>
  </div> </div> </li> 
   <li xid="li5" style="height:1rem;">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row15">
     <div class="x-col x-col-10" xid="col41">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="修改密码" xid="button5" style="color:#333333;font-size:0.3rem;height:1rem;line-height:1rem;">
   <i xid="i5"></i>
   <span xid="span6">修改密码</span></a></div> 
     <div class="x-col x-col-90 clearfix bd-none" xid="col13" bind-click="col13Click">
      
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right" label="button" xid="button10" icon="icon-ios7-arrow-right" style="font-size:0.4rem;color:#999;height:1rem;line-height:1rem;margin-right:0.3rem;">
   <i xid="i10" class="icon-ios7-arrow-right"></i>
   <span xid="span11"></span></a><span xid="span23" style="color:#989898;float:right;margin-right:10px;"><![CDATA[]]></span>
  </div> </div> </li> 
   </ul>
  <div xid="div2" style="height:0.2rem;background-color:#f0f0f0;border-bottom:1px solid #eee;border-top:1px solid #eee;"></div><div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel7" style="height:1rem;box-shadow:none;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row19" style="padding:0;margin:0;box-shadow:none;height:1rem;">
    <div class="x-col" xid="col49"></div>
    <div class="x-col x-col-fixed" xid="col48" style="width:auto;line-height: 35px;" bind-click="tcBtn">
     <span xid="span27" style="color:#333;font-size:0.3rem;line-height:1rem;">退出登录</span></div> 
    <div class="x-col" xid="col47"></div></div> </div>
  </div>
  </div> 
</div>