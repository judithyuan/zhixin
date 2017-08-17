<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;width:101px;top:41px;left:583px;" onLoad="modelLoad"> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar text-orange" xid="titleBar" title="设置头像" style="background-color:white;">
   <div class="x-titlebar-left" xid="left1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-icon-left btn-only-icon text-orange" xid="button3" icon="icon-chevron-left" onClick="{operation:'window.close'}">
     <i xid="i3" class="icon-chevron-left"></i>
     <span xid="span3"></span></a> </div> 
   <div class="x-titlebar-title" xid="title1">设置头像</div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>  
    <div class="x-panel-content" xid="content1"><div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel2">
   <div class="panel-heading" xid="heading1">
    <h4 class="panel-title" xid="h41"><![CDATA[当前头像]]></h4></div> 
   <div class="panel-body" xid="body1" style="text-align:center;"><img alt="" xid="avatar" style="max-width:80%;" class="img-circle" src="$UI/zhixin/img/user/avt.png" bind-attr-src="$model.showAvatar()"></img></div>
   <div class="panel-footer clearfix" xid="footer1"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group pull-right" tabbed="true" xid="buttonGroup1"><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="拍照" xid="button1" icon="glyphicon glyphicon-camera" onClick="button1Click" style="background-color:#7bc93d;margin-right:2px;">
   <i xid="i1" class="glyphicon glyphicon-camera"></i>
   <span xid="span1">拍照</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="相册" xid="button2" icon="glyphicon glyphicon-picture" onClick="button2Click" style="background-color:#7bc93d;">
   <i xid="i2" class="glyphicon glyphicon-picture"></i>
   <span xid="span2">相册</span></a>
  </div></div></div></div>
  </div> 
<div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" xid="clipContent">
   <div class="x-popOver-overlay" xid="div1"></div>
   <div class="x-popOver-content" style="text-align:center;width:100%;height:100%;padding-top:50px;"><div xid="imageContent" style="height:70%;margin:10px;"></div><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="确定" xid="clipBtn">
   <i xid="i4"></i>
   <span xid="span4">确定</span></a>
  </div></div>
  </div>