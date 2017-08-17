<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:244px;left:132px;" onLoad="modelLoad" onActive="modelActive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="goodsData" idColumn="cart_id" limit="20" confirmRefresh="false" confirmDelete="false" onCustomRefresh="goodsDataCustomRefresh">
   <column label="id" name="cart_id" type="String" xid="column1"></column>
  <column label="店铺ID" name="store_name" type="String" xid="xid1"></column>
  <column label="标题" name="goods_name" type="String" xid="column2"></column>
  <column label="图片" name="goods_image_url" type="String" xid="column3"></column>
  <column isCalculate="false" label="价格" name="goods_price" type="Float" xid="column4"></column>
  <column label="原价格" name="goods_marketprice" type="Float" xid="column5"></column>
  <column label="邮费" name="fPostage" type="String" xid="column6"></column>
  <column label="买出数量" name="fRecord" type="Integer" xid="column7"></column>
  <column label="所在地区" name="fAddress" type="String" xid="column8"></column>
  <column label="颜色" name="fColor" type="String" xid="xid2"></column>
  <column label="尺寸" name="fSize" type="String" xid="xid3"></column>
  <column label="选择" name="fChoose" type="Integer" xid="xid4"></column>
  <column label="数量" name="fNumber" type="Integer" xid="xid5"></column>
  <column label="总价" name="fSum" type="Float" xid="xid6"></column>
  <data xid="default10">[{&quot;id&quot;:&quot;1&quot;,&quot;fShopID&quot;:&quot;f00102135&quot;,&quot;fTitle&quot;:&quot;标题标题&quot;,&quot;fImg&quot;:&quot;1&quot;,&quot;fPrice&quot;:12,&quot;fOldPrice&quot;:15,&quot;fPostage&quot;:&quot;2&quot;,&quot;fRecord&quot;:1,&quot;fAddress&quot;:&quot;地区&quot;,&quot;fColor&quot;:&quot;红&quot;,&quot;fSize&quot;:&quot;大&quot;,&quot;fChoose&quot;:1,&quot;fNumber&quot;:123,&quot;fSum&quot;:50},{&quot;id&quot;:&quot;2&quot;,&quot;fShopID&quot;:&quot;f00102135&quot;,&quot;fTitle&quot;:&quot;把标题&quot;,&quot;fImg&quot;:&quot;1&quot;,&quot;fPrice&quot;:213,&quot;fOldPrice&quot;:321,&quot;fPostage&quot;:&quot;321&quot;,&quot;fRecord&quot;:112,&quot;fAddress&quot;:&quot;的撒&quot;,&quot;fColor&quot;:&quot;如风&quot;,&quot;fSize&quot;:&quot;辅导书&quot;,&quot;fChoose&quot;:23,&quot;fNumber&quot;:2,&quot;fSum&quot;:1},{&quot;id&quot;:&quot;3&quot;,&quot;fShopID&quot;:&quot;f00102136&quot;,&quot;fTitle&quot;:&quot;放到&quot;,&quot;fImg&quot;:&quot;1&quot;,&quot;fPrice&quot;:{&quot;value&quot;:&quot;上3 &quot;},&quot;fOldPrice&quot;:432,&quot;fPostage&quot;:&quot;432&quot;,&quot;fRecord&quot;:21,&quot;fAddress&quot;:&quot;12&quot;,&quot;fColor&quot;:&quot;312&quot;,&quot;fSize&quot;:&quot;32&quot;,&quot;fChoose&quot;:3,&quot;fNumber&quot;:2,&quot;fSum&quot;:2},{&quot;id&quot;:&quot;4&quot;,&quot;fShopID&quot;:&quot;f00102137&quot;,&quot;fTitle&quot;:&quot;dsa&quot;,&quot;fImg&quot;:&quot;1&quot;,&quot;fPrice&quot;:{&quot;value&quot;:&quot;ds&quot;},&quot;fOldPrice&quot;:{&quot;value&quot;:&quot;d&quot;},&quot;fPostage&quot;:&quot;ds&quot;,&quot;fRecord&quot;:{&quot;value&quot;:&quot;sd&quot;},&quot;fAddress&quot;:&quot;ds&quot;,&quot;fColor&quot;:&quot;ds&quot;,&quot;fSize&quot;:&quot;ds&quot;,&quot;fChoose&quot;:{&quot;value&quot;:&quot;ds&quot;},&quot;fNumber&quot;:{&quot;value&quot;:&quot;ds&quot;},&quot;fSum&quot;:{&quot;value&quot;:&quot;ds&quot;}},{&quot;id&quot;:&quot;5&quot;,&quot;fShopID&quot;:&quot;f00102137&quot;,&quot;fTitle&quot;:&quot;ds&quot;,&quot;fImg&quot;:&quot;1&quot;,&quot;fPrice&quot;:{&quot;value&quot;:&quot;ds&quot;},&quot;fOldPrice&quot;:{&quot;value&quot;:&quot;ds&quot;},&quot;fPostage&quot;:&quot;as&quot;,&quot;fRecord&quot;:{&quot;value&quot;:&quot;das&quot;},&quot;fAddress&quot;:&quot;ads&quot;,&quot;fColor&quot;:&quot;dsa&quot;,&quot;fSize&quot;:&quot;dsa&quot;,&quot;fChoose&quot;:{&quot;value&quot;:&quot;d&quot;},&quot;fNumber&quot;:{&quot;value&quot;:&quot;a&quot;},&quot;fSum&quot;:{&quot;value&quot;:&quot;ds&quot;}}]</data>
  <column name="goods_commend" type="Integer" xid="xid18"></column>
  <column name="fPrice" type="String" xid="xid19"></column>
  <column name="goods_spec" type="String" xid="xid20"></column>
  <column name="virtual_limit" type="String" xid="xid21"></column>
  <column name="store_id" type="String" xid="xid22"></column>
  <column name="cart_id" type="String" xid="xid23"></column>
  <column label="goods_num" name="goods_num" type="Integer" xid="xid24"></column>
  <rule xid="rule1">
   <col name="fColor" xid="ruleCol1">
    <constraint xid="constraint1">
     <expr xid="default1"></expr></constraint> 
    <calculate xid="calculate1">
     <expr xid="default2"></expr></calculate> 
    <readonly xid="readonly1">
     <expr xid="default6"></expr></readonly> </col> 
   <col name="fSize" xid="ruleCol2">
    <calculate xid="calculate2">
     <expr xid="default3"></expr></calculate> </col> 
   <col name="fSum" xid="ruleCol3">
    <calculate xid="calculate3">
     <expr xid="default4">$row.val('fChoose')==1? parseFloat($row.val(&quot;goods_price&quot;)*$row.val('goods_num')).toFixed(2):'0'</expr></calculate> </col> 
   <col name="fNumber" xid="ruleCol4">
    <calculate xid="calculate4">
     <expr xid="default5"></expr></calculate> </col> 
   <col name="goods_price" xid="ruleCol7">
    <calculate xid="calculate7">
     <expr xid="default12">$row.val(&quot;goods_price&quot;)</expr></calculate> </col> </rule>
  <column name="goods_id" type="String" xid="xid25"></column>
  <column name="store_id" type="String" xid="xid26"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="shopData" idColumn="store_id" confirmDelete="false" confirmRefresh="false" onCustomRefresh="shopDataCustomRefresh">
   <column label="id" name="store_id" type="String" xid="xid9"></column>
  <column label="店名" name="store_name" type="String" xid="xid10"></column>
  <column label="等级" name="fLevel" type="Integer" xid="xid11"></column>
  <column label="店标" name="store_log" type="String" xid="xid16"></column>
  <column label="描述相符" name="fConsistent" type="Float" xid="xid12"></column>
  <column label="服务态度" name="fService" type="Float" xid="xid13"></column>
  <column label="商品数量" name="fGoodsNumber" type="Integer" xid="xid14"></column>
  <column label="关注人数" name="fFocusNumber" type="Integer" xid="xid15"></column>
  <data xid="default11">[{&quot;id&quot;:&quot;f00102135&quot;,&quot;fShopName&quot;:&quot;a&quot;,&quot;fLevel&quot;:{&quot;value&quot;:&quot;aeqw&quot;},&quot;fShopImg&quot;:&quot;aeqwewq&quot;,&quot;fConsistent&quot;:{&quot;value&quot;:&quot;aeqwewqewqeqewq&quot;},&quot;fService&quot;:{&quot;value&quot;:&quot;aeqwewqewq&quot;},&quot;fGoodsNumber&quot;:{&quot;value&quot;:&quot;aeqwewqewqeq&quot;},&quot;fFocusNumber&quot;:{&quot;value&quot;:&quot;ewewqewqeq&quot;}},{&quot;id&quot;:&quot;f00102136&quot;,&quot;fShopName&quot;:&quot;d&quot;,&quot;fLevel&quot;:{&quot;value&quot;:&quot;ewq&quot;},&quot;fShopImg&quot;:&quot;ewq&quot;,&quot;fConsistent&quot;:{&quot;value&quot;:&quot;ewq&quot;},&quot;fService&quot;:{&quot;value&quot;:&quot;ewq&quot;},&quot;fGoodsNumber&quot;:{&quot;value&quot;:&quot;ewqew&quot;},&quot;fFocusNumber&quot;:{&quot;value&quot;:&quot;wq&quot;}},{&quot;id&quot;:&quot;f00102137&quot;,&quot;fShopName&quot;:&quot;a&quot;,&quot;fLevel&quot;:{&quot;value&quot;:&quot;rew&quot;},&quot;fShopImg&quot;:&quot;rew&quot;,&quot;fConsistent&quot;:{&quot;value&quot;:&quot;re&quot;},&quot;fService&quot;:{&quot;value&quot;:&quot;erw&quot;},&quot;fGoodsNumber&quot;:{&quot;value&quot;:&quot;erw&quot;},&quot;fFocusNumber&quot;:{&quot;value&quot;:&quot;erewr&quot;}}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="calculateData" idColumn="allSum" confirmRefresh="false" confirmDelete="false" onValueChanged="calculateDataDataChange">
   <column label="合计" name="allSum" type="Float" xid="xid7"></column>
  <column label="总数量" name="allNumber" type="String" xid="xid8"></column>
  <column label="是否返回" name="isBack" type="Integer" xid="xid17"></column>
  <data xid="default8">[{&quot;allSum&quot;:&quot;0&quot;,&quot;isBack&quot;:0}]</data>
  <rule xid="rule2">
   <col name="allSum" xid="ruleCol5">
    <calculate xid="calculate5">
     <expr xid="default7">parseFloat($model.goodsData.sum(&quot;fSum&quot;)).toFixed(2)</expr></calculate> </col> 
   <col name="allNumber" xid="ruleCol6">
    <calculate xid="calculate6">
     <expr xid="default9">$model.goodsData.sum('fChoose')</expr></calculate> </col> </rule></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1">
   <div component="$UI/system/components/justep/titleBar/titleBar" title="购物车" class="x-titlebar top" xid="titleBar1">
    <div class="x-titlebar-left top-left" xid="left1">
     <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon left-btn" icon="icon-ios7-arrow-left" onClick="{operation:'window.close'}" xid="backBtn">
      <i class="icon-ios7-arrow-left" xid="i7"></i>
      <span xid="span45"></span></a> </div> 
    <div class="x-titlebar-title" style="font-size:0.36rem;font-weight:normal;" xid="title1">购物车</div>
    <div class="x-titlebar-right reverse top-right" xid="right1">
     <span xid="editBtn" bind-click="editBtnClick" class="right-btn" style="display:none;">编辑</span>
     <span xid="span9" bind-click="span9Click" style="line-height:100%;position:relative;left:0.5rem;display:none;" class="pull-right">
      <img src="$UI/zhixin/img/user/xiaoxi.png" alt="icon" xid="image13" style="width:0.3rem;"></img>
      <span xid="span99" class="ts" id="span99" style="display:none;"></span></span> </div> </div> </div><div class="x-panel-content" xid="content1" style="background-color:#f0f0f0;"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-card x-has-iosstatusbar" xid="panel2" style="box-shadow:none;">
   
   <div  xid="content" class="x-panel-content" style="top: 0px;" _xid="C7753CED77B00001165B16B01793DD50">
    
  <div id="allBoxcar"  component="$UI/system/components/justep/list/list" class="x-list" data="shopData" limit="-1" xid="shopList" disablePullToRefresh="true" disableInfiniteLoad="true" autoLoad="true" dataItemAlias="shopRow">
   <ul class="x-list-template x-min-height" xid="listTemplateUl1" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl1">
    <li xid="li1" class="panel panel-default x-card tb-box" style="box-shadow:none;border:none;">
     <div xid="div13" style="height:0.2rem;width:100%;background-color:#f0f0f0;" class="show"></div><div xid="div1" style="height:1rem;padding-left:0.3rem;line-height:1rem;">
   <span xid="span11" style="width:0.4rem;height:0.4rem;border-radius:100%;border:1px solid #eee;display:none;position:relative;top:0.1rem;background-color:#fff;"></span>
   <img src="$UI/zhixin/img/user/right.png" alt="" xid="image4" class="img-circle tb-img-shop" style="display:none;"></img>
   <img src="$UI/zhixin/img/shop/dpnew.png" alt="" xid="image3" bind-attr-src=' val("store_log")' style="width:0.3rem;height:0.3rem;margin-left:0.1rem;margin-right:0.1rem;"></img>
   <span xid="span4" bind-text="ref('store_name')" style="font-size:0.3rem;position:relative;top:0.04rem;">商铺名称</span></div><div component="$UI/system/components/justep/list/list" class="x-list bg-white" data="goodsData" filter="$row.val('store_id')==shopRow.val('store_id')" xid="goodsList" disablePullToRefresh="true" disableInfiniteLoad="true" style="padding-bottom:0;background-color: #f5f5f5;">
      <ul class="x-list-template x-min-height" xid="listTemplateUl4" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl4" style="padding-bottom:0;">
       <li xid="li4" class="x-min-height tb-goodList" componentname="li(html)" bind-touchmove="li4Touchmove" bind-touchstart="li4Touchstart" bind-touchend="li4Touchend" style="position:relative;overflow:hidden;">
        <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="display:none;">
         <div class="x-col x-col-fixed" xid="col1" style="width:auto;">
          <span component="$UI/system/components/justep/button/checkbox" class="x-checkbox x-radio choose" xid="checkbox2" bind-ref="ref('fChoose')" checkedValue="1"></span></div> 
         <div class="x-col x-col-fixed tb-nopadding" xid="col2">
          <img src="" alt="" xid="image1" class="tb-img-good" bind-click="listClick" bind-attr-src=' val("goods_image_url")'></img></div> 
         <div class="x-col  tb-nopadding" xid="col3">
          <span bind-text='val("goods_name")' class="x-flex text-black h5 tb-nomargin" xid="span26" style="color:#333333;font-size:16px;"></span>
          <div class="text-muted h6" xid="div6">
           <span xid="span27">颜色:</span>
           <span bind-text="ref('goods_spec')" xid="span6"></span>
           <span xid="span7">;</span>
           <span xid="span12">尺寸:</span>
           <span bind-text="ref('fSize')" xid="span18"></span></div> 
          <div class="text-muted" xid="div5">
           <span xid="span22" class="text-danger">￥</span>
           <span xid="span28" bind-text='val("goods_price")' class="h4 text-danger"></span>
           <span xid="span19" class="tb-del-line">￥</span>
           <span xid="span24" bind-text='val("goods_marketprice")' class="tb-del-line"></span></div> 
          <div class="tb-numberOperation" xid="div4">
           <a component="$UI/system/components/justep/button/button" class="btn x-gray btn-sm btn-only-icon pull-right" label="button" xid="button2carzengjia" icon="icon-android-add" onClick="addBtnClick" style="padding:1px;background-color: #FFFFFF;color:#333333;">
            <i xid="i6" class="icon-android-add"></i>
            <span xid="span29"></span></a> 
           <span bind-text='val("goods_num")' class="pull-right" xid="span5" style="padding:0 10px;background-color: #FFFFFF;color:#333333;"></span>
           <a component="$UI/system/components/justep/button/button" class="btn x-gray btn-sm btn-only-icon pull-right" label="button" xid="button1" icon="icon-android-remove" onClick="reductionBtnClick" style="padding:1px;background-color: #FFFFFF;color:#333333;">
            <i xid="i3" class="icon-android-remove"></i>
            <span xid="span13"></span></a> </div> </div> 
         <div class="x-col x-col-fixed" xid="col5" style="width:0em;" bind-style="{width: val(&quot;virtual_limit&quot;)+'em'}">
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-block delet" label="删除" xid="button3" style="line-height: 5em;color:white;" bind-visible=" val(&quot;virtual_limit&quot;) =='5'" onClick="delet">
   <i xid="i1"></i>
   <span xid="span3">删除</span></a></div> </div> 
  <div component="$UI/system/components/justep/row/row" class="x-row " style="height:1.9rem;margin-bottom:0.2rem;margin-top:0.2rem;" xid="goodsRow">
   <div class="x-col x-col-fixed" xid="col6">
    <div component="$UI/system/components/justep/row/row" class="x-row" style="position:relative;padding:0 0.3rem;" xid="row3">
     <div class="x-col x-col-fixed" xid="col33" style="width:auto;margin-top:0.58rem;margin-right:0.2rem;">
      <span component="$UI/system/components/justep/button/checkbox" xid="checkbox1" bind-ref="ref('fChoose')" checkedValue="1" style="width:0.4rem;height:0.4rem;background-color:#f5f5f5;" checked="false" class="x-checkbox text-primary choose" bind-click="checkbox1Click"></span></div> 
     <div class="x-col x-col-fixed" xid="col31" style="width:1.9rem;height:1.9rem;">
      <img src="" alt="" xid="image5" class="tb-img-good" bind-click="listClick" bind-attr-src=' val("goods_image_url")'></img></div> 
     <div class="x-col" xid="col32" style="margin-left:0.26rem;position:relative;">
      <span bind-text='val("goods_name")' class="x-flex text-black h5" xid="span31" style="color:#333333;font-size:0.26rem;margin:0;"></span>
      <div class="text-muted" xid="div3" style="font-size:0.26rem;margin-top:0.16rem;display:none;" bind-visible=' val("goods_spec") !=""'>
       <span xid="span30"><![CDATA[规格:]]></span>
       <span bind-text="ref('goods_spec')" xid="span34"></span>
       
       <span bind-text="ref('fSize')" xid="span35"></span></div> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9" style="position:absolute;bottom:0;height:0.4rem;">
       <div class="x-col x-col-fixed" xid="col30" style="width:auto;">
        <div class="text-muted" xid="div7">
         <span xid="span32" style="color:#ff3333;font-weight:bold;">￥</span>
         <span xid="span23" class="h4 " style="color:#ff3333;font-weight:bold;font-size:0.36rem;" bind-text="(function(){if(val(&quot;goods_price&quot;).toString().split(&quot;.&quot;)[1]==undefined){return val(&quot;goods_price&quot;)+&quot;.00&quot;}else if(parseInt(val(&quot;goods_price&quot;).toString().split(&quot;.&quot;)[1])&lt;10&amp;&amp;val(&quot;goods_price&quot;).toString().split(&quot;.&quot;)[1][0]!='0'){return val(&quot;goods_price&quot;)+&quot;0&quot;}else{return val(&quot;goods_price&quot;)}})()">0.00</span>
         <span xid="span37" class="tb-del-line"></span>
         <span xid="span25" bind-text='"￥"+val("goods_marketprice")' class="tb-del-line" style="display:none;">￥0.00</span></div> </div> 
       <div class="x-col" xid="col29">
        <div xid="div8" style="border-radius:0.04rem;background:white;border:1px solid #e1e1e1;height:0.4rem;" class="pull-right">
         <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button2" icon="icon-minus" onClick="reductionBtnClick" style="color:#6d6d6d;padding:0;width:0.3rem;height:100%;vertical-align:middle;font-size:0.2rem;position:relative;">
          <i xid="i4" class="icon-minus" style="color:#6d6d6d;font-size:0.26rem;"></i>
          <span xid="span38"></span></a> 
         <span bind-text='val("goods_num")' xid="span33" style="color:#333333;min-width:0.7rem;display:inline-block;text-align:center;border-left:1px solid #e1e1e1;border-right:1px solid #e1e1e1;height:0.4rem;vertical-align:top;position:relative;">1</span>
         <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon" label="button" xid="button4" icon="icon-android-add" onClick="addBtnClick" style="color:#6d6d6d;padding:0;width:0.3rem;height:100%;vertical-align:middle;font-size:0.2rem;position:relative;">
          <i xid="i5" class="icon-android-add"></i>
          <span xid="span21"></span></a> </div> </div> </div> </div> </div> </div> 
   <div class="x-col" xid="col15" bind-visible=" val(&quot;virtual_limit&quot;) =='5'" style="width:1.5rem;position:absolute;right:0;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-block delet" label="删除" xid="button2" style="color:white;line-height:1.9rem;padding:0;width:1.5rem;font-size:0.3rem;" onClick="delet">
     <i xid="i4"></i>
     <span xid="span8">删除</span></a> </div> </div>
  <div xid="div11" style="height:0.12rem;background-color:#ffffff;"></div></li> </ul> </div> 
  </li> </ul> </div>
  <div xid="div3carlengthnull" style="text-align:center;width:100%;display:none;">
   <img src="$UI/zhixin/img/none.png" alt="" xid="image2" style="width: 30%;margin-top: 30%;" height="100%"></img></div></div> 
   
  <div class="x-panel-bottom" xid="bottom1carlengthnull" style="background-color:#fff;">
   <div component="$UI/system/components/justep/row/row" class="x-row tb-nopadding" xid="row2" style="padding-left:0.3rem;height:0.98rem;">
    <div class="x-col x-col-fixed" xid="col4" style="width:2rem;margin:0">
     <span component="$UI/system/components/justep/button/checkbox" name="allChoose" class="x-checkbox text-primary choose" xid="allChoose" label="全选" checked="false" onChange="allChooseChange" style="color:#333333;margin-top:0.26rem;"></span></div> 
    <div class="x-col x-col-fixed" xid="col8" style="width:3.7rem">
     <div class="text-right" xid="div9" style="height:0.98rem;line-height:0.98rem;margin-right:0.14rem;">
      <span xid="span15" class="text-muted" style="font-size:0.3rem;color:#ff3333;">合计：</span>
      <span xid="span17" class="text-danger" style="font-size:0.22rem;color:#ff3333;width:12px;height:13px;">￥</span>
      <span xid="sum" class="h4 text-danger" bind-text="calculateData.ref('allSum')" style="color:#ff3333;font-size:0.4rem;"></span></div> 
     <div class="text-right" xid="div10" style="display:none;">
      <span xid="span16">不含运费</span></div> </div> 
    <div id="no-choose-btnorder" class="x-col x-col-fixed text-center no-choose-btn" xid="col9" bind-click="settlementClick" style="line-height:0.98rem;height:0.98rem;width:2.34rem;font-size:0.36rem;">
     <span xid="span10">结算(</span>
     <span xid="number" class="allNumber" bind-text="calculateData.ref('allNumber')"></span>
     <span xid="span14">)</span></div> </div> </div></div>
  </div>
  </div> 
<div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="livelineOver" dismissible="false">
   <div class="x-popOver-overlay" xid="div2"></div>
   <div class="x-popOver-content" xid="div2" style="margin-left:-150px;margin-top:-150px;">
    <img src="$UI/zhixin/img/gameover.png" alt="" xid="image8" style="width:300px;"></img>
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10" style="position: absolute;bottom:10px;">
     <div class="x-col" xid="col17">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="确定" xid="button5" style="font-size:16px;color:white;background-color:#7bc93d;margin-left: auto;margin-right: auto;width:50%;border-radius: 8px;    border-color: #57AD14;" onClick="denglu">
       <i xid="i2"></i>
       <span xid="span2">确定</span></a> </div> </div> </div> </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="ykrzpopOvercar" style="display:none;" dismissible="true">
   <div class="x-popOver-overlay" xid="div26" style="background-color:black;"></div>
   <div class="x-popOver-content" xid="div26" style="height:8.6rem;margin-left:-3.2rem;margin-top:-4.3rem;padding-top:0.8rem;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="button6" style="font-size:16px;color:#7bc93d;    position: absolute;right: 0;z-index:20;height:0.5rem;width:0.5rem;top:0;" onClick="button6Clickcancle">
     <i xid="i8"></i>
     <span xid="span40"></span></a> 
    <img src="$UI/zhixin/img/main/x.png" alt="" xid="image27" style="position:absolute;right:0;top:0;height:0.5rem"></img>
    <img src="$UI/zhixin/img/main/rzfw.png" alt="" xid="image28" style="width:6.4rem;"></img>
    <div xid="div12" style="width:6.4rem;height:3rem;padding-top:0.8rem;">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row18">
      <div class="x-col" xid="col27">
       <span xid="span36" style="width:100%;text-align:center;color:#999;font-size:0.28rem;" class="center-block">请添加地址后再进行购买！</span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row18" style="margin-top:0.2rem;">
      <div class="x-col" xid="col7">
       <span xid="span1" style="width:100%;text-align:center;color:#999;font-size:0.28rem;" class="center-block"></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row14" style="margin-top:0.2rem;">
      <div class="x-col" xid="col24">
       <span xid="span20" style="width:100%;text-align:center;color:#999;font-size:0.28rem;" class="center-block"></span></div> </div> </div> 
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row20" style="position: absolute;bottom:0.3rem;">
     <div class="x-col" xid="col26" style="position:relative;">
      <img src="$UI/zhixin/img/main/button.png" alt="" xid="image6" style="width:4.6rem;height:1.6rem;margin-left:0.9rem;"></img>
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="添加收货地址" xid="button10" style="font-size:0.3rem;color:#fff;background-color:transparent;margin-left:auto;margin-right:auto;width:4.6rem;position:absolute;top:0;left:0.9rem;height:1rem;top:0.2rem;line-height:1rem;font-weight:bold;" onClick="button7Clicklikerenz">
       <i xid="i8"></i>
       <span xid="span39">添加收货地址</span></a> </div> </div> 
    <div xid="div18" style="height:7.6rem;background-color:#fff;position:absolute;top:1rem;left:0;width:6.4rem;z-index:-1;"></div></div> </div></div>