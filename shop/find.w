<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="findDta" onCustomRefresh="findDtaCustomRefresh" idColumn="type"><column name="title" type="String" xid="xid1"></column>
  <column name="image" type="String" xid="xid2"></column>
  <column name="type" type="String" xid="xid3"></column>
  <column label="商品ID" name="data" type="String" xid="xid4"></column>
  <column name="goods_price" type="String" xid="xid5"></column>
  <column name="goods_marketprice" type="String" xid="xid6"></column>
  <column name="goods_name" type="String" xid="xid7"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div xid="div1" style="color:#333;z-index:5;display:none;" class="top">
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="padding: 0px;">
   <div class="x-col x-col-fixed" xid="col1" style="width:auto;line-height:48px;"><a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon backBtn" icon="icon-ios7-arrow-left" onClick="{operation:'window.close'}" xid="backBtn" style="font-size:0.6rem;height:100%;padding:0;margin-left:0.4rem;line-height:48px;">
   <i class="icon-ios7-arrow-left" xid="i1"></i>
   <span xid="span1"></span></a></div>
   <div class="x-col " xid="col2" style="position: relative;margin-top:0.2rem;margin-left:0.2rem"><img src="$UI/zhixin/img/shop/serch.png" alt="" xid="image11" class="serchImg"></img>
  </div>
   </div></div>
  <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar tb-index top" xid="titleBar1">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon left-btn" xid="button1" icon="icon-ios7-arrow-left" onClick='{"operation":"window.close"}' style="height:100%">
    <i xid="i2" class="icon-ios7-arrow-left"></i>
    <span xid="span2"></span></a> 
   <div class="x-titlebar-title" xid="title1" style="position: relative;margin-left:0.2rem;height:48px;margin-top:10px;">
    <img src="$UI/zhixin/img/shop/serch.png" alt="" xid="image1" class="img-circle serchImg" style="border-radius:0;"></img>
    <form><input type="search" component="$UI/system/components/justep/input/input" class="form-control searchInput" id="input3findserach" xid="input3findserach" style="width:6.2rem;height:0.6rem;padding-left:0.68rem;font-size:0.26rem;font-weight:normal;" placeHolder="e家好货，等您搜索"></input></form></div> 
   </div></div>  
    <div class="x-panel-content" xid="content1" style="background-color:#ffffff;"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="findDta">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" style="border-bottom:10px solid #eee;background-color:#fff;" bind-click="li1Click"><div xid="imgBox" style="height:auto;overflow:hidden;"><img src="$UI/zhixin/img/loading.gif" alt="" xid="image2" style="width:100%;" bind-attr-src=' val("image")'></img></div><div xid="div2" style="padding:0 0.2rem 0.1rem 0.2rem;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col6" style="overflow: hidden;white-space: nowrap;text-overflow: ellipsis;line-height:0.8rem;color:#333;width:100%;overflow: hidden;white-space: nowrap;text-overflow: ellipsis;"><span xid="span3" style="font-size:0.3rem;font-weight:bold;" bind-text='val("goods_name")'><![CDATA[商品名称]]></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col7" style="font-size:0.24rem;"><span xid="span4" style="color:#ff3333;font-weight:bold;" bind-text='"￥"+ val("goods_price")'><![CDATA[￥648.0]]></span><span xid="span5" style="color:#999;margin-left:0.14rem;text-decoration:line-through;" bind-text='"￥"+ val("goods_marketprice")'><![CDATA[￥1200.0]]></span></div>
   </div></div>
  </li></ul> </div>
  </div>
  </div> 
<div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="livelineOver" dismissible="false">
   <div class="x-popOver-overlay" xid="div3"></div>
   <div class="x-popOver-content" xid="div5" style="margin-left:-150px;margin-top:-150px;">
    <img src="$UI/zhixin/img/gameover.png" alt="" xid="image5" style="width:300px;"></img>
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="position: absolute;bottom:10px;">
     <div class="x-col" xid="col17">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="确定" xid="button5" style="font-size:16px;color:white;background-color:#7bc93d;margin-left: auto;margin-right: auto;width:50%;border-radius: 8px;    border-color: #57AD14;" onClick="denglu">
       <i xid="i3"></i>
       <span xid="span7">确定</span></a> </div> </div> </div> </div></div>