<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:155px;left:286px;height:auto;" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="ListDataliebiao" idColumn="goods_id"><column label="goods_id" name="goods_id" type="String" xid="xid1"></column>
  <column name="goods_image_url" type="String" xid="xid2"></column>
  <column label="goods_jingle" name="goods_jingle" type="String" xid="xid3"></column>
  <column label="原价" name="goods_marketprice" type="String" xid="xid4"></column>
  <column label="现价" name="goods_price" type="String" xid="xid5"></column>
  <column label="store_name" name="store_name" type="String" xid="xid6"></column>
  <column label="store_id" name="store_id" type="String" xid="xid7"></column>
  <column label="goods_salenum" name="goods_salenum" type="String" xid="xid8"></column>
  <column label="goods_image" name="goods_image" type="String" xid="xid9"></column>
  <column name="goods_name" type="String" xid="xid10"></column>
  <column name="is_in_time" type="String" xid="xid11"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar tb-index top" xid="titleBar1">
   
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon left-btn" xid="button1" icon="icon-ios7-arrow-left" onClick='{"operation":"window.close"}' style="height:100%">
   <i xid="i1" class="icon-ios7-arrow-left"></i>
   <span xid="span1"></span></a><div class="x-titlebar-title" xid="div2" style="position: relative;margin-left:0.2rem;height:48px;margin-top:10px;">
    <img src="$UI/zhixin/img/shop/serch.png" alt="" xid="image11" class="img-circle serchImg" style="border-radius:0;"></img><form><input type='search' component="$UI/system/components/justep/input/input" id='searchDtailList' class="form-control searchInput" xid="input3" style="width:6.2rem;padding-left:0.68rem;height:0.6rem;font-weight:normal;font-size:0.26rem;" placeHolder="搜索商品名称"></input></form></div> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="button2" icon="linear linear-menu" style="color:#666666;font-size:0.4rem;height:48px;margin-right:0.3rem;display:none">
   <i xid="i2" class="linear linear-menu" style="line-height:48px;"></i>
   <span xid="span2"></span></a></div></div>  
    <div class="x-panel-content" xid="content1" _xid="C7742E8679E00001869A114514E3ECC0" style="bottom: 0;background-color:#f0f0f0;"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup1paixu" style="display:block;height:0.9rem;justify-content: space-between;font-size:0.28rem;background-color:white;"><a component="$UI/system/components/justep/button/button" class="btn btn-link active" label="综合" xid="button7zonghe" icon="icon-arrow-down-b" onClick="button7zongheClick" style="line-height:0.9rem;font-size:0.28rem;">
   <span xid="span7" style="margin-right:0.1rem;">综合</span><i xid="i7" class="icon-arrow-down-b"></i>
   </a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="销量" xid="button8xiaoliang" onClick="button8xiaoliangClick" style="line-height:0.9rem;font-size:0.28rem;">
   <span xid="span8" style="margin-right:0.1rem;">销量</span><i xid="i8"></i>
   </a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="价格" xid="button9jiage" onClick="button9jiageClick" style="line-height:0.9rem;font-size:0.28rem;">
   <span xid="span9" style="margin-right:0.1rem;">价格</span><i xid="i9"></i>
   </a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="及时达" xid="button10jishida" style="color:#7bc83e;border-left: 1px solid #eeeeee;line-height:0.9rem;font-size:0.28rem;margin-left:0.3rem;" onClick="button10jishidaClick">
   <span xid="span10" style="margin-right:0.1rem;">及时达</span><i xid="i10"></i>
   </a></div>
  <div xid="div1" style="position:relative;top:1.1rem;width:100%;height:auto;" class="x-scroll-view"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView2ss" onPullDown="scrollView2PullDown" onPullUp="scrollView2PullUp" autoAppend="true" autoPullUp="true">
   <div class="x-content-center x-pull-down container" xid="div8">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i4"></i>
    <span class="x-pull-down-label" xid="span5">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div9" style="background-color:white;"><div component="$UI/system/components/justep/list/list" class="x-list" id="listbox" xid="list1ListDataliebiao" data="ListDataliebiao" limit="5" autoLoad="true">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" bind-click="li1Click" class="noborder"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="padding:0.12rem 0 0 0.3rem;">
   <div class="x-col x-col-fixed" xid="col5" style="text-align:center;width:auto;">
  <div xid="imgBox" style="width:2.34rem;height:2.34rem;overflow:hidden;margin-top:0.08rem;"><img src="$UI/zhixin/img/error.png" alt="" xid="image1" style="max-width:100%;max-height:100%;" bind-attr-src=' val("goods_image_url")'></img></div></div>
   <div class="x-col" xid="col7" style="position:relative;border-bottom:1px solid #eeeeee;padding-left:0.14rem;margin-left:0.22rem;overflow:hidden;text-overflow:ellipsis;white-space:no-wrap"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="overflow: hidden;overflow:hidden;text-overflow:ellipsis;white-space:nowrap">
   <div class="x-col" xid="col8" style="padding:0;overflow:hidden;text-overflow:ellipsis;white-space:nowrap"><img src="$UI/zhixin/img/shop/jsd.png" alt="" xid="image2" style="width:0.74rem;" bind-visible="val(&quot;is_in_time&quot;) =='1'"></img>
  <span xid="span11" style="color:#333333;dispaly:inline-block;font-size:0.28rem;white-space: nowrap;text-overflow: ellipsis;" bind-text='val("goods_name")'><![CDATA[标题]]></span></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="font-size:0.24rem;color:#999999;margin-top:0.2rem;">
   <div class="x-col" xid="col11" style="font-size:0.24rem;"><span xid="span12" style="color:#999999;"><![CDATA[已售]]></span>
  <span xid="span13" style="color:#999999;margin-left:0.14rem;" bind-text='val("goods_salenum")'><![CDATA[500]]></span></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="position:relative;top:0.9rem;padding-right:0.3rem;">
   <div class="x-col" xid="price" style="padding:0;line-height:100%"><span xid="span14" style="font-size:0.32rem;color:#ff3333;"><![CDATA[]]></span>
  <span xid="span15" style="font-size:0.32rem;color:#ff3333;" bind-text='"￥"+val("goods_price")'><![CDATA[23.5]]></span>
  <span xid="span16" style="font-size:0.24rem;color:#999999;margin-left:0.14rem;text-decoration:line-through"><![CDATA[]]></span>
  <span xid="span17" style="font-size:0.24rem;color:#999999;text-decoration:line-through" bind-text='"￥"+val("goods_marketprice")'>23.5</span><img src="$UI/zhixin/img/shop/iconfont-cart.png" alt="" xid="image8" style="width:0.5rem;position:absolute;bottom:0;right:0.3rem"></img></div>
   <div class="x-col x-col-fixed" xid="col19" style="padding:0;width:auto;"></div></div></div></div>
  </li></ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div10">
    <span class="x-pull-up-label" xid="span6">加载更多...</span></div> </div></div>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button3" icon="icon-loading-a" style="position: absolute;top: 50%;left:50%;font-size:0.4rem;display:none;">
   <i xid="i3" class="icon-loading-a"></i>
   <span xid="span3"></span></a></div>
  </div> 
<div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="loadpopOver" opacity="1">
   <div class="x-popOver-overlay" xid="div5" style="background-color:white;"></div>
   <div class="x-popOver-content" xid="div3" style="margin-left:-100px;margin-top:-80px;">
    <img src="$UI/zhixin/img/loading.gif" alt="" xid="image3" style="width:200px;"></img></div> </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="livelineOver" dismissible="false">
   <div class="x-popOver-overlay" xid="div6"></div>
   <div class="x-popOver-content" xid="div4" style="margin-left:-150px;margin-top:-150px;">
    <img src="$UI/zhixin/img/gameover.png" alt="" xid="image5" style="width:300px;"></img>
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="position: absolute;bottom:10px;">
     <div class="x-col" xid="col1">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="确定" xid="button5" style="font-size:16px;color:white;background-color:#7bc93d;margin-left: auto;margin-right: auto;width:50%;border-radius: 8px;    border-color: #57AD14;" onClick="denglu">
       <i xid="i5"></i>
       <span xid="span4">确定</span></a> </div> </div> </div> </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="Overlineerror" dismissible="false">
   <div class="x-popOver-overlay" xid="div15"></div>
   <div class="x-popOver-content" xid="div16" style="margin-left:-150px;margin-top:-150px;">
    <img src="$UI/zhixin/img/error.png" alt="" xid="image17" style="width:300px;"></img>
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row17" style="position: absolute;bottom:10px;">
     <div class="x-col" xid="col28">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="确定" xid="button9" style="font-size:16px;color:white;background-color:#7bc93d;margin-left: auto;margin-right: auto;width:50%;border-radius: 8px;    border-color: #57AD14;" onClick="denglu">
       <i xid="i14"></i>
       <span xid="span18">确定</span></a> </div> </div> </div> </div></div>