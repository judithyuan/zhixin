<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:397px;left:499px;" onModelConstruct="modelModelConstruct" onLoad="modelLoad" onActive="modelActive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="shopimgData" idColumn="id" onCustomRefresh="imgDataCustomRefresh">
   <column label="ID" name="id" type="Integer" xid="xid1"></column>
  <column label="图片路径" name="banner" type="String" xid="xid2"></column>
  <column name="image" type="String" xid="xid17"></column>
  <column name="type" type="String" xid="xid3"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="navData" idColumn="gc_id"><column label="gc_id" name="gc_id" type="String" xid="xid4"></column>
  <column label="name" name="name" type="String" xid="xid5"></column>
  <column label="short" name="short" type="String" xid="xid6"></column>
  <column label="thumburl" name="thumb" type="String" xid="xid7"></column>
  <column label="color" name="color" type="String" xid="xid8"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="jishidaData" idColumn="data"><column name="image" type="String" xid="xid9"></column>
  <column name="data" type="String" xid="xid10"></column>
  <column name="type" type="String" xid="xid11"></column>
  <column name="id" type="String" xid="xid12"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="faxianData" idColumn="data"><column name="data" type="String" xid="xid13"></column>
  <column name="image" type="String" xid="xid14"></column>
  <column name="title" type="String" xid="xid15"></column>
  <column name="type" type="String" xid="xid16"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="tegongData" idColumn="goods_commend"><column name="goods_commend" type="String" xid="xid18"></column>
  <column name="goods_commonid" type="String" xid="xid19"></column>
  <column name="goods_id" type="String" xid="xid20"></column>
  <column name="goods_image" type="String" xid="xid21"></column>
  <column name="goods_name" type="String" xid="xid22"></column>
  <column name="goods_price" type="String" xid="xid23"></column>
  <column name="id" type="String" xid="xid24"></column>
  <column label="image_url" name="image_url" type="String" xid="xid25"></column>
  <column name="loupan_id" type="String" xid="xid26"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="navAlldata" onCustomRefresh="navAlldataCustomRefresh" idColumn="gc_id"><column name="gc_id" type="String" xid="xid27"></column>
  <column name="gc_name" type="String" xid="xid28"></column>
  <column name="image" type="String" xid="xid29"></column>
  <column name="type_name" type="String" xid="xid30"></column>
  <column name="text" type="String" xid="xid31"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="imgData" idColumn="id" onCustomRefresh="imgDataCustomRefresh">
   <column label="ID" name="id" type="Integer" xid="column2"></column>
  <column label="图片路径" name="banner" type="String" xid="column3"></column>
  <column name="image" type="String" xid="column1"></column>
  <column name="data" type="String" xid="xid32"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="carCount" onCustomRefresh="carCountCustomRefresh" idColumn="cart_count" autoNew="true" confirmRefresh="false">
   <column name="cart_count" type="String" xid="column4"></column></div></div>  
  <div component="$UI/system/components/justep/wing/wing" class="x-wing" xid="wing1" display="reveal" animate="true">
   <div class="x-wing-left wingleftshop" id='left1shop' xid="left1" style="overflow: auto;color:666666;border:none;background-color:hsla(0, 0%, 0%, 0);" bind-click="left1Click"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" style="background-color:#f0f0f0;color:#666666;border-bottom:1px solid #d5d5d5;display:block;">
   <div class="x-titlebar-title" xid="div3"></div>
   <div class="x-titlebar-right reverse" xid="div4" style="width:"></div></div>
  <div xid="div6" style="border-top:1px solid #f8f8f8;"></div><div component="$UI/system/components/justep/list/list" class="x-list" xid="list3" data="navAlldata" style="height:100%;background-color:#f0f0f0;">
   <ul class="x-list-template" xid="listTemplateUl6">
    <li xid="li1" style="border-bottom:1px solid #d5d5d5;" bind-click="li3Click"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="padding:0;line-height: 1rem;height:1rem;">
   <div class="x-col x-col-fixed" xid="col1" style="padding-left:0.3rem;width:auto;"><img src="" alt="" xid="image2" style="width:0.56rem;height:0.56rem;" bind-attr-src=' val("image")'></img></div>
   <div class="x-col" xid="col3" style="padding:0;"><p xid="p2" bind-text=' val("gc_name")' style="line-height: 1rem;margin:0 0 0 0.22rem;text-align:left;font-weight: normal;color:#666;font-size:0.32rem;"><![CDATA[]]></p></div></div>
  <div xid="div9" style="border-top:1px solid #f8f8f8;"></div></li></ul> </div>
  </div>
   <div class="x-wing-content moveright" xid="content1">
    <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar top">
          <div class="x-titlebar-left top-left"> 
            <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon left-btn" icon="icon-ios7-arrow-left" onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-ios7-arrow-left" />  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title"><img src="$UI/zhixin/img/shop/logo.png" alt="" xid="image1" style="width:1.78rem;height:0.4rem;"></img></div>  
          <div class="x-titlebar-right reverse" bind-click="span9Click" style="padding-right:0;vertical-align:middle;"> 
          <div class="x-col" xid="col13" style="padding-right:0;">
   <span xid="span9" class="pull-right" style="position: relative;margin-top: 0px;padding-right:0.3rem;" bind-click="span9Click">
    <img src="$UI/zhixin/img/bellh.png" alt="" xid="image13" style="width:0.4rem;"></img>
    <span xid="span9xiaohondian" class="ts" id="span99" style="display:none;left:0.3rem;top:30%;"></span></span> </div></div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="contentshouye" style="background-color:#f0f0f0;"><div class="panel panel-default x-card" component="$UI/system/components/bootstrap/panel/panel" xid="panelImg" style="border:none;border-color: rgba(255, 255, 255, 0);margin-bottom:0px;position:relative;">
   <div component="$UI/system/components/bootstrap/carousel/carousel" class="x-carousel carousel" xid="carouselshop" auto="true">
    <ol class="carousel-indicators" xid="ol1" style="margin:0;width:auto;"></ol>
    <div class="x-contents carousel-inner" role="listbox" component="$UI/system/components/justep/contents/contents" active="0" slidable="true" wrap="true" swipe="true" routable="false" xid="contentsImg">
     <div class="x-contents-content" xid="content2" style="width:100%;">
      <img src="" alt="" xid="scrollImg" bind-click="openPageClick" style="width:100%;" class="kj-img1"></img></div> </div> </div> 
   
   </div>
  <div class="panel panel-default x-card" component="$UI/system/components/bootstrap/panel/panel" xid="panelClass" style="margin-bottom:0px;position:relative;border-top-color: rgba(255, 255, 255, 0);height:1.76rem;">
   <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="navData" limit="5">
   <ul class="x-list-template" xid="listTemplateUl3" style="margin:0;overflow: hidden;">
    <li xid="li3" style="padding:0;width:20%;float:left;text-align: center;" bind-click="li3Click"><div xid="div1" style="height:1.6rem;"><img src="$UI/zhixin/img/error.png" alt="" xid="image5" style="width:0.86rem;height:0.86rem;margin-top:0.16rem;" bind-attr-src=' val("thumb")'></img><p xid="p1" bind-text=' val("name")' style="margin-top:0.18rem;font-size:0.24rem;color:#666;font-weight:normal;margin-bottom:0.16rem;"><![CDATA[生鲜]]></p></div></li></ul> </div></div>
  <div class="panel panel-default x-card panelSearch" component="$UI/system/components/bootstrap/panel/panel" xid="panelSearch" style="margin:0;position:relative;background-color:#F0F0F0;height:1.46rem;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="padding:0;margin:0.38rem 0;">
    <div class="x-col" xid="col8" style="position: relative;height:0.7rem;padding:0 0.4rem;">
     <img alt="" xid="image11" class="serchImg" src="$UI/zhixin/img/shop/serch.png"></img>
  <input type="text" value="" xid="input2" style="width:15%;background-color: #e3e3e3;" class="searchInputCut" readonly="true"></input><form><input type='search' id='searchshopmain' component="$UI/system/components/justep/input/input" class="form-control searchInput" xid="input3" style="width:85%;padding-left: 0px;height:0.7rem;color:#999;font-size:0.26rem;" placeHolder="搜索商品名称"></input></form></div> 
    </div> </div>
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panelTitle" style="display:none;padding:0 0.5rem;border-bottom: none;margin-bottom:0px;position:relative;background-color:white;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="padding:0;height:1.9rem;">
    <div class="x-col x-col-10" xid="col14" style="display:none;"></div>
    <div class="x-col" xid="col11" style="height:1.9rem;">
     <img src="$UI/zhixin/img/shop/jishida_new.png" alt="" xid="image16" style="width:100%;margin-top:-0.14rem;" bind-click="jishidalist"></img>
     </div> 
    <div class="x-col x-col-10" xid="col12" style="line-height:1.16rem;display:none;"><span xid="span4" class="pull-right" style="font-size:0.26rem;color:#999;"><![CDATA[更多]]></span></div></div> </div>
  <div class="panel panel-default x-card" component="$UI/system/components/bootstrap/panel/panel" xid="paneList" style="padding:0 0.2rem;margin-bottom:0px;position:relative;background-color:#ffffff;border:none;margin-bottom:0.2rem;box-shadow:none;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row13" style="padding:0;padding-bottom:0.14rem;">
   <div class="x-col" xid="col32" style="padding:0;"><div component="$UI/system/components/justep/list/list" class="x-list" xid="jishidaList" limit="4" data="jishidaData" filter=' $row.val("id") %2  !=0'>
   <ul class="x-list-template" xid="listTemplateUl1" style="margin:0;">
    <li xid="li1jishida" style="margin:0px;background-color:white;text-align:left;margin-bottom:0.1rem;" bind-click="li1jishidaClick">
  
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10jishida" style="padding:0;">
   
   
  <div class="x-col" xid="col7" style="padding:0;"><img alt="" xid="image18" style="border: 1px solid #eeeeee;width:3.5rem;height:1.8rem;" bind-attr-src=' val("image")'></img>
  </div>
  </div>
  </li></ul> </div></div>
   <div class="x-col" xid="col34" style="padding:0;"><div component="$UI/system/components/justep/list/list" class="x-list" xid="jishidaListlift" limit="4" data="jishidaData" filter=' $row.val("id") %2 ==0'>
   <ul class="x-list-template" xid="listTemplateUl4" style="margin:0;">
    <li xid="li4" style="margin:0px;background-color:white;text-align:right;margin-bottom:0.1rem;" bind-click="li1jishidaClick">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row12" style="padding:0;">
      <div class="x-col" xid="col31" style="padding:0;">
       <img alt="" xid="image12" style="border: 1px solid #eeeeee;width:3.5rem;height:1.8rem;" bind-attr-src=' val("image")'></img></div> </div> </li> </ul> </div></div></div> </div>
  <div class="panel panel-default x-card" component="$UI/system/components/bootstrap/panel/panel" xid="panelTegong" style="margin-bottom:0px;position:relative;background-color:#FFF;border:none;box-shadow:none;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="padding:0;height:0.9rem;">
    <div class="x-col" xid="col18" style="line-height:0.9rem;position:relative;"><p xid="p17" style="font-size:0.4rem;display:block;color:#666;text-align:center;font-weight:normal;"><![CDATA[社区特供]]></p>
  <div xid="div8" style="width:0.6rem;border-top:2px solid #eee;position:absolute;bottom:0;left:50%;margin-left:-0.3rem;"></div></div>
    <div class="x-col x-col-20" xid="col19" style="height:0.9rem;padding-right:0.2rem;text-align:right;display:none;"></div></div> </div>
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panelTgList" style="padding:0 0.2rem;border: none;margin-bottom:0px;position:relative;padding-top:0.36rem;border-bottom:1px solid #eee;box-shadow:none;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9" style="padding:0;padding-bottom:0.26rem;">
   <div class="x-col pull-left" xid="col5" style="padding:0;">
    <div component="$UI/system/components/justep/list/list" class="x-list" xid="list2tegongd" data="tegongData" filter=' $row.val("id") %2  !=0'>
    <ul class="x-list-template" xid="listTemplateUl2" style="margin-bottom:0;padding:0;">
     <li xid="li2" style="background-color:white;margin:0;margin-bottom:0.06rem;width:3.52rem;" bind-click="clickSp" class="pull-left" dir="ltr">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="padding:0;">
       <div class="x-col" xid="col22">
        <p xid="p20" style="padding:0.18rem;">
         <img src="$UI/zhixin/img/error.png" alt="" xid="image22" style="width:3.16rem;height:3.16rem;" bind-attr-src=' val("image_url")'></img></p> 
        <p xid="p19" style="overflow: hidden;height:0.36rem;font-weight: normal;margin:0.14rem 0.18rem 0.22rem;color:#666;text-align: -webkit-left;font-size:0.24rem;" bind-text=' val("goods_name")'>鲜果蔬菜 美国进口红葡萄</p>
        <p xid="p22" style="margin:0;margin-left:0.18rem;color:#ff3333;text-align: -webkit-left;font-size:0.32rem;" bind-text=" '￥'+val(&quot;goods_price&quot;)">￥35.5</p></div> 
       </div> </li> </ul> </div></div> 
   <div class="x-col pull-right" xid="col4" style="padding:0;">
    <div component="$UI/system/components/justep/list/list" class="x-list" xid="list7tegongs" data="tegongData" filter=' $row.val("id")  %2 ==0'>
   <ul class="x-list-template" xid="listTemplateUl9" style="margin-bottom:0px;">
    <li xid="li8" style="background-color:white;margin:0;margin-bottom:0.06rem;width:3.52rem;" bind-click="clickSp" class="pull-right">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row11" style="padding:0;">
      <div class="x-col" xid="col16">
       <p xid="p4" style="padding:0.18rem;">
        <img src="$UI/zhixin/img/error.png" alt="" xid="image6" style="width:3.16rem;height:3.16rem;" bind-attr-src=' val("image_url")'></img></p> 
       <p xid="p8" style="overflow: hidden;height:0.36rem;font-weight: normal;margin:0.14rem 0.18rem 0.22rem;color:#666;text-align: -webkit-left;font-size:0.24rem;" bind-text='val("goods_name")'>鲜果蔬菜 美国进口红葡萄</p>
       <p xid="p6" style="margin:0;margin-left:0.18rem;color:#ff3333;text-align: -webkit-left;font-size:0.32rem;" bind-text=" '￥'+val(&quot;goods_price&quot;)">￥35.5</p></div> 
      </div> </li> </ul> </div>
  </div> </div> <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="margin-top:0.4rem;padding-bottom:0.3rem;">
   <div class="x-col" xid="col6"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-right" label="查看更多" xid="button1" style="color:#999;margin:0;font-size:0.24rem;border:none;height:100%;" onClick="button1Click">
   <i xid="i1" class="icon-ios7-arrow-right"></i>
   <span xid="span5">更多</span></a></div>
   </div></div>
  <div class="panel panel-default x-card" component="$UI/system/components/bootstrap/panel/panel" xid="panelFind" style="margin-bottom:0px;position:relative;background-color:#FFF;border:none;margin-top:0.2rem;box-shadow:none;padding-bottom:0.3rem;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row14" style="padding:0;height:0.9rem;">
   <div class="x-col" xid="col21" style="line-height:0.9rem;position:relative;">
    <p xid="p3" style="font-size:0.4rem;display:block;color:#666;text-align:center;font-weight:normal;"><![CDATA[发现好货]]></p>
  <div xid="div10" style="width:0.6rem;border-top:2px solid #eee;position:absolute;bottom:0;left:50%;margin-left:-0.3rem;"></div></div> 
   <div class="x-col x-col-20" xid="col28" style="height:0.9rem;padding-right:0.2rem;text-align:right;display:none;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="更多" xid="button3" style="color:#999;margin:0;font-size:0.22rem;line-height:2.4em;border:none;padding-right:0.2rem;height:100%;line-height:0.9rem;padding-right:0;" onClick="findmore">
     <i xid="i5"></i>
     <span xid="span3">更多</span></a> </div> </div></div>
  <div class="panel panel-default x-card" component="$UI/system/components/bootstrap/panel/panel" xid="panelFindList" style="margin-bottom:0px;position:relative;border:none;box-shadow:none;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8" style="padding:0;">
    
    <div class="x-col" xid="col26"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list4" data="faxianData">
   <ul class="x-list-template" xid="listTemplateUl5">
    <li xid="li5" bind-click="find"><img src="$UI/zhixin/img/shop/jsd.png" alt="" xid="image23" style="width:7.1rem;margin:0 0.2rem 0.2rem;height:3rem;" bind-attr-src=' val("image")'></img></li></ul> </div>
  </div>
    </div> <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7" style="margin-top:0.4rem;padding-bottom:0.3rem;">
   <div class="x-col" xid="col10">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-right" label="查看更多" xid="button4" style="color:#999;margin:0;font-size:0.24rem;border:none;height:100%;" onClick="findmore" icon="icon-ios7-arrow-right">
   <i xid="i6" class="icon-ios7-arrow-right"></i>
   <span xid="span6">查看更多</span></a></div> </div></div>
  </div><div class="x-panel-bottom" xid="bottom1" style="height:0.98rem;border-top:1px solid #eee;"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified mainbottom" tabbed="true" xid="buttonGroup1" style="background-color:white;margin-top:0.09rem;border:none">
   <a component="$UI/system/components/justep/button/button" class="btn btn-icon-top active" label="首页" xid="homeBtn" onClick="homeBtnClick" icon="img:$UI/zhixin/img/shop/sy.png|$UI/zhixin/img/shop/syw.png" style="font-weight:normal;color:#666666;font-weight:normal;font-size: 0.22rem;">
    
    <img src="$UI/zhixin/img/shop/sy.png" xid="image31" style="width:0.48rem;height:0.48rem;" height="0.48rem"></img><span xid="span1" style="font-weight: normal;font-size:0.22rem;">首页</span></a> 
   
   
   <a component="$UI/system/components/justep/button/button" class="btn btn-icon-top btn-default" label="发现" xid="findBtn" icon="img:$UI/zhixin/img/shop/fxw.png|$UI/zhixin/img/logo.png" onClick="findBtnClick" style="color:#666666;font-weight:normal;border-top-width: 0px;">
   <img src="$UI/zhixin/img/shop/fxw.png" xid="image28" style="width:0.48rem;height:0.48rem;" height="0.48rem"></img><span xid="span8" style="font-weight: normal;font-size:0.22rem;">发现</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-icon-top btn-default" label="购物车" xid="carBtn" icon="img:$UI/zhixin/img/shop/gwcw.png|$UI/zhixin/img/shop/gwc.png" onClick="carBtnClick" style="color:#666666;font-weight:normal;border-top-width: 0px;">
   <img src="$UI/zhixin/img/shop/gwcw.png" xid="image29" style="position:relative;width:0.48rem;height:0.48rem;"><span xid="span15" bind-text='$model.carCount.val("cart_count")' bind-visible='$model.carCount.val("cart_count") &gt;0' class="tts" style="position:absolute;top:0.05rem;font-weight:normal;font-size:0.18rem;text-align:center;vertical-align:middle;padding:0 0.1rem;height:0.2rem;"><![CDATA[0]]></span></img><span xid="span10" style="font-weight: normal;font-size:0.22rem;">购物车
  </span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-icon-top btn-default" label="我的" xid="myBtn" icon="img:$UI/zhixin/img/shop/myw.png|$UI/zhixin/img/shop/my.png" onClick="myBtnClick" style="color:#666666;font-weight:normal;border-top-width: 0px;">

   <img src="$UI/zhixin/img/shop/myw.png" xid="image30" style="width:0.48rem;height:0.48rem;"></img><span xid="span11" style="font-weight: normal;font-size:0.22rem;">我的</span></a></div></div>
  </div></div> 
   </div> 
<div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="livelineOver" dismissible="false" style="display:none;">
   <div class="x-popOver-overlay" xid="div2"></div>
   <div class="x-popOver-content" xid="div5" style="margin-left:-150px;margin-top:-150px;">
    <img src="$UI/zhixin/img/gameover.png" alt="" xid="image3" style="width:300px;"></img>
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10" style="position: absolute;bottom:10px;">
     <div class="x-col" xid="col9">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="确定" xid="button5" style="font-size:16px;color:white;background-color:#7bc93d;margin-left: auto;margin-right: auto;width:50%;border-radius: 8px;    border-color: #57AD14;" onClick="denglu">
       <i xid="i3"></i>
       <span xid="span7">确定</span></a> </div> </div> </div> </div></div>