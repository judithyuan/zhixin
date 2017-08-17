<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:192px;left:412px;" onLoad="modelLoad" onParamsReceive="modelParamsReceive" onActive="modelActive"> 
  
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="detailData" idColumn="goods_id" onCustomRefresh="detailDataCustomRefresh" confirmRefresh="false"><column name="goods_id" type="String" xid="xid1"></column>
  <column label="促销" name="cuxiao" type="String" xid="xid2"></column>
  <column label="已选择" name="current_goods_spec" type="String" xid="xid3"></column>
  <data xid="default1">[{&quot;id&quot;:&quot;0&quot;,&quot;cuxiao&quot;:&quot;使用零钱支付立享五折&quot;,&quot;yx&quot;:&quot;选阿撒谎能够&quot;}]</data>
  <column name="goods_image" type="String" xid="xid4"></column>
  <column name="goods_jingle" type="String" xid="xid5"></column>
  <column name="goods_marketprice" type="String" xid="xid6"></column>
  <column name="goods_name" type="String" xid="xid7"></column>
  <column name="goods_price" type="String" xid="xid8"></column>
  <column name="goods_salenum" type="String" xid="xid9"></column>
  <column name="goods_storage" type="String" xid="xid10"></column>
  <column name="is_favorate" type="String" xid="xid11"></column>
  <column name="is_in_time" type="String" xid="xid12"></column>
  <column name="mobile_body" type="String" xid="xid13"></column>
  <column name="no_reason_return" type="String" xid="xid14"></column></div><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="guigeData" idColumn="goods_id" confirmRefresh="false"><column name="goods_id" type="String" xid="xid15"></column>
  <column name="goods_price" type="String" xid="xid16"></column>
  <column name="goods_spec" type="String" xid="xid17"></column>
  <column name="goods_storage" type="String" xid="xid18"></column>
  <column name="state" type="String" xid="xid19"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="countData" idColumn="num"><column name="num" type="Integer" xid="xid20"></column>
  <data xid="default2">[{&quot;num&quot;:1}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="tuijianData" idColumn="goods_id" onCustomRefresh="tuijianDataCustomRefresh" confirmRefresh="false"><column name="goods_id" type="String" xid="xid21"></column>
  <column name="goods_commonid" type="String" xid="xid22"></column>
  <column name="goods_name" type="String" xid="xid23"></column>
  <column name="goods_jingle" type="String" xid="xid24"></column>
  <column name="image_url" type="String" xid="xid25"></column>
  <column name="goods_price" type="String" xid="xid26"></column>
  <column name="store_id" type="String" xid="xid27"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="carCount" onCustomRefresh="carCountCustomRefresh" idColumn="cart_count" autoNew="true" confirmRefresh="false"><column name="cart_count" type="String" xid="xid28"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar top">
          <div class="x-titlebar-left top-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon left-btn" icon="icon-chevron-left"
              onClick="backBtnClick" xid="backBtn"> 
              <i class="icon-ios7-arrow-left icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified tb-tabs" tabbed="true" xid="buttonGroup2" style="font-size:0.36rem;line-height:48px;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label active" label="商品" xid="detailsBtn" target="detailsContent" onClick="detailsBtnClick" style="height:48px;">
    <i xid="i14"></i>
    <span xid="span31">商品</span></a> 
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="详情" xid="spxqDetail" onClick="spxqDetailClick" style="height:48px;">
    <i xid="i15"></i>
    <span xid="span33">详情</span></a></div></div>  
          <div class="x-titlebar-right reverse top-right"><img src="$UI/zhixin/img/shop/more.png" alt="" xid="image4" style="width:0.6rem;display:none"></img></div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1" style="bottom:0.98rem;"><div xid="div6pop" style="display:none;z-index:5;height:100%;width:100%;background-color:rgba(0, 0, 0, 0.16);position:absolute;"></div><div xid="div12gg" class="tpop" style="background-color:#ffffff;display:none;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="goodsInfo" style="height:2.3rem;border-bottom:1px solid #eeeeee;border-top:1px solid #eeeeee;">
   <div class="x-col x-col-fixed" xid="col37" style="position:relative;width:2.25rem;margin-left:0.3rem;"><div xid="div11" style="width:2.25rem;height:2.3removerflow:hidden;position:absolute;top:-0.6rem;left:0;"><img src="$UI/zhixin/img/error.png" alt="" xid="image6" bind-attr-src=' $model.detailData.val("goods_image")' style="width:100%;"></img></div></div>
   <div class="x-col" xid="col38" style="margin-left:0.35rem;padding-top:0.36rem;"><p xid="p25" style="color:#ff3333;font-weight:bold;font-size:0.3rem;margin:0;" bind-text="ggmoney"><![CDATA[￥105]]></p><p xid="p26" style="color:#666666;font-size:0.26rem;margin-top:0.1rem;"><![CDATA[选择商品和数量]]></p></div>
   <div class="x-col" xid="col39" style="position:relative;"><img src="$UI/zhixin/img/shop/close.png" alt="" xid="image9closedetail" style="position: absolute;width:0.44rem;right: 0.4rem;top:0.2rem;" bind-click="image9Click"></img></div></div><p xid="p29guige" class="nav" style="margin-top:0.35rem;margin-bottom:0.2rem;font-size:0.26rem;color:#333333;padding-left:0.4rem;"><![CDATA[规格]]></p><div component="$UI/system/components/justep/row/row" class="x-row" xid="row4guige" style="margin-top:0.2rem;padding:0 0.4rem;">
   <div class="x-col" xid="col42"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list3" data="guigeData">
   <ul class="x-list-template" xid="listTemplateUl3">
    <li xid="li3ggColor" style="margin:0 0.2rem 0.35rem 0;float:left;text-align:center;border-radius:5px;width:2.8rem;" bind-css="{'xzgg': val(&quot;state&quot;) =='1','wxzgg': val(&quot;state&quot;) =='0'}" bind-click="li3Click"><span xid="span16" bind-text='val("goods_spec")'><![CDATA[12]]></span></li></ul> </div></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row15" style="align-items:center;margin-top:0.4rem;">
   <div class="x-col x-col-fixed" xid="col13" style="width:auto;margin-right:0.45rem;"><p xid="p32" class="nav" style="display:inline-block;float: left;font-size:0.26rem;padding-left:0.4rem;"><![CDATA[数量]]></p></div>
   <div class="x-col" xid="col15"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row12" style="float:right;">
   <div class="x-col" xid="col11"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list6" data="countData" limit="1">
   <ul class="x-list-template" xid="listTemplateUl6">
    <li xid="li6" style="float:left"><div class="tb-numberOperation" xid="div4" style="margin-top:4px;">
   
   <a component="$UI/system/components/justep/button/button" class="btn x-gray  btn-only-icon pull-left" label="button" xid="button1" icon="icon-android-remove" onClick="reductionBtnClick" style="background-color:#ffffff;line-height:0.5rem;padding:0 0.1rem;">
    <i xid="i7" class="icon-android-remove"></i>
    <span xid="span19"></span></a><span bind-text='val("num")' class="pull-left" xid="span20count" style="line-height:0.5rem;border-top: 1px solid;border-bottom: 1px solid;border-color: rgb(204, 204, 204);min-width:0.88rem;text-align:center"><![CDATA[0]]></span><a component="$UI/system/components/justep/button/button" class="btn x-gray btn-sm btn-only-icon pull-left" label="button" xid="button2" icon="icon-android-add" onClick="addBtnClick" style="background-color:#ffffff;line-height:0.5rem;padding:0 0.1rem;">
    <i xid="i6" class="icon-android-add"></i>
    <span xid="span29"></span></a> 
   
    </div></li></ul> </div></div></div></div></div></div><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents" swipe="false" wrap="false">
   <div class="x-contents-content" xid="detailsContent" style="height:100%;width:100%;background-color:#f0f0f0;display:block;">
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panelImg" style="text-align: -webkit-center;background-color:#fff;border-radius:0;margin-bottom:0;border-top:1px solid #eeeeee;border-bottom:1px solid #eeeeee;height:7.5rem;overflow:hidden;">
   <img src="$UI/zhixin/img/loading.gif" alt="" xid="image1" style="max-width:100%;max-height:100%;" bind-attr-src=' $model.detailData.val("goods_image")'></img></div>
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel2" style="background-color:#fff;border-radius:0;margin-bottom:0.2rem;padding:0.2rem 0.3rem 0.1rem 0.3rem;box-shadow:none;">
   <p xid="p1" style="font-weight:bold;font-size:0.30rem;color:#333;" bind-text=' $model.detailData.val("goods_name")'><![CDATA[商品名称]]></p><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="height:0.55rem;align-items:center;">
   <div class="x-col x-col-fixed" xid="col4" style="padding:0;width:auto;"><span xid="span3" style="font-size:0.26rem;color:#ff3333;vertical-align:middle;"><![CDATA[商城现价：]]></span><span xid="span2" style="font-size:0.22rem;color:#ff3333;font-weight:bold;vertical-align:middle;"><![CDATA[￥]]></span><span xid="span8" bind-text=' $model.detailData.val("goods_price")' style="color:#ff3333;font-weight:bold;font-size:0.36rem;"><![CDATA[00]]></span>
  
  </div>
   <div class="x-col" xid="col6"><img src="$UI/zhixin/img/shop/jsd.png" alt="" xid="image3" style="float:right;width:0.74rem;" bind-visible="$model.detailData.val(&quot;is_in_time&quot;) =='1'"></img>
  </div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="font-size:0.24rem;color:#999999;height:0.55rem;align-items:center;">
   <div class="x-col" xid="col9" style="font-size:0.24rem;text-decoration:line-through;letter-space:0;word-space:0;"><span xid="span9" style="font-size:0.24rem;"><![CDATA[市场价：￥]]></span>
  <span xid="span11" bind-text=' $model.detailData.val("goods_marketprice")'><![CDATA[00]]></span></div>
   <div class="x-col" xid="col12"><p xid="p7" style="float:right;"><![CDATA[]]><span xid="span26" style="font-size:0.24rem;margin-right:0.14rem;"><![CDATA[已售]]></span><span xid="span27" bind-text='$model.detailData.val("goods_salenum")' style="font-size:0.24rem;"></span></p>
  
  </div>
   </div></div>
  <div xid="youhui" style="background-color:#ffffff;padding-left:0.3rem"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row8" style="height:1rem;align-items:center;border-bottom:1px solid #eeeeee;">
   
   <div class="x-col" xid="col20" style="font-size:0.28rem;">
    <span xid="span20" style="color:#666666;height:auto;display:inline-block"><![CDATA[优惠]]></span><div component="$UI/system/components/justep/output/output" class="x-output pull-right" xid="outputdingdanhao" bind-ref="cuxiao" style="display:inline-block;padding:0;margin-right:0.14rem;font-size:0.28rem;"></div>
  </div> 
  <div class="x-col x-col-fixed" xid="col22" style="padding-right:0.3rem;width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right" label="button" xid="button4" icon="icon-ios7-arrow-right" style="font-size:0.4rem;color:#666666;">
   <i xid="i3" class="icon-ios7-arrow-right"></i>
   <span xid="span21"></span></a></div></div></div><div xid="guige" style="background-color:#ffffff;padding-left:0.3rem;display:block;" align="right">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10" style="height:1rem;align-items:center;border:none;">
    <div class="x-col" xid="col24" style="font-size:0.28rem;word-space:0;">
     <span xid="span23" style="color:#666666;font-size:0.28rem;height:auto;display:inline-block;float:left">已选</span>
     <div component="$UI/system/components/justep/output/output" class="x-output pull-right" xid="output5" bind-ref="yxgg" style="display:inline-block;padding:0;margin-right:0.14rem;font-size:0.28rem;"></div></div> 
    <div class="x-col x-col-fixed" xid="col23" style="padding-right:0.3rem;width:auto;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right" label="button" xid="button5" icon="icon-ios7-arrow-right" style="font-size:0.4rem;color:#666666;">
      <i xid="i12" class="icon-ios7-arrow-right"></i>
      <span xid="span22"></span></a> </div> </div> </div><div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel4" style="background-color:#f0f0f0;line-height:1rem;border-radius:0;margin-bottom:0;border-top:1px solid #ffffff;height:1rem;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row11">
   <div class="x-col x-col-fixed" xid="col30" style="width:auto;margin-right:0.2rem"><span xid="span24" style="width:0.3rem;height:0.36rem;display:inline-block;background-color:#7bc83e;margin-top:0.3rem;"></span></div>
   <div class="x-col" xid="col31"><span xid="span25" style="font-size:0.32rem;color:#666;"><![CDATA[为您推荐]]></span></div></div></div>
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="paneltuijian" style="border-radius:0;margin-bottom:0;min-height: 3.74rem;padding:0.14rem 0.2rem 0.2rem 0.2rem;box-shadow:none;">
   <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="tuijianData" style="width:100%;">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" style="width:2.3rem;" bind-click="li1Click" class="goods-margin"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col7" style="padding:0;"><div xid="div1" style="height:2.3rem;overflow:hidden;"><img src="$UI/zhixin/img/error.png" alt="" xid="image18" style="max-width:100%;max-height:100%;" bind-attr-src=' val("image_url")'></img></div><p xid="p12" style="margin-left:0.05rem;overflow: hidden;color:#666666;text-align: -webkit-left;min-height:1em;line-height:0.32rem;margin-top:0.14rem;text-overflow: ellipsis;font-size:0.22rem;height:0.64rem;" bind-text=' val("goods_name")'><![CDATA[商品名称/规格]]></p>
  <p xid="p13" style="margin-left:0.05px;color:red;text-align: -webkit-left;font-weight:bold;font-size:0.32rem;" bind-text=" '￥'+val(&quot;goods_price&quot;)">￥35.5</p>
  </div>
   </div></li>
  </ul> </div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9" style="height:1.5rem;padding:0 0.3rem;">
    <div class="x-col x-col-center" xid="col17">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="上拉查看商品图文信息" xid="button7" style="border-radius: 10px;border: 1px solid #e5e5e5;font-size:0.26rem;color:#999999;line-height:0.8rem;">
      <i xid="i5"></i>
      <span xid="span6">上拉查看商品图文信息</span></a> </div> 
    </div><div xid="div2" bind-html=' $model.detailData.val("mobile_body")' style="width:100%;" class="xqbox"></div><div xid="tips" style="background-color:#ffffff;padding-left:0.3rem;">
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row13" style="height:1rem;align-items:center;border-bottom:1px solid #eeeeee;color:#666666;padding-right:0.3rem;">
   <div class="x-col x-col-fixed" xid="col33" style="padding-right:0.3rem;width:auto;">
    <p xid="p20" style="font-size:0.28rem;"><![CDATA[售后]]></p></div><div class="x-col" xid="col34" style="font-size:0.28rem;">
    <p xid="p21" style="font-size:0.28rem;float:right;"><![CDATA[该商品不支持7天无理由退货]]></p></div> 
    </div></div>
  <div xid="peisong" style="background-color:#ffffff;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row14" style="height:1rem;align-items:center;border-bottom:1px solid #eeeeee;padding-left:0.3rem;padding-right:0.3rem;">
   <div class="x-col x-col-fixed" xid="col36" style="padding-right:0.3rem;width:auto;">
    <p xid="p23" style="font-size:0.28rem;color:#666;"><![CDATA[配送]]></p></div> 
   <div class="x-col" xid="col35" style="font-size:0.28rem;">
    <p xid="p22" style="font-size:0.28rem;float:right;"><![CDATA[该商品支持限时配送]]></p></div> </div></div>
  </div>
  <div class="x-contents-content" xid="spxqDetailcontent"></div></div>
  </div>
  <div class="x-panel-bottom" xid="bottom1" style="height:0.98rem;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row19" style="height:100%;border-top:1px solid #eeeeee">
    <div class="x-col" xid="col25" style="padding:0;">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   <div class="x-col" xid="col16"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top btn-block" label="客服" xid="button12" style="color:#666666;padding: 0;border: none;padding-top:0.1rem;" icon="img:$UI/zhixin/img/shop/kefu.png|" onClick="button12Click">
   <i xid="i10"></i>
   <img src="$UI/zhixin/img/shop/kefu.png" xid="image7" style="width:0.4rem"></img><span xid="span13" style="font-size:0.22rem;">客服</span></a></div>
   <div class="x-col" xid="col18" style="position:relative;" bind-click="button13Click"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top btn-block" label="购物车" xid="button13" onClick="button13Click" style="color:#666666;padding: 0;border: none;padding-top:0.1rem;">
   <i xid="i11"></i>
   <img src="$UI/zhixin/img/shop/gwcw.png" alt="" xid="image2" style="position:relative;width:0.4rem"><span xid="span15" class="tts" bind-text='$model.carCount.val("cart_count")' bind-visible='$model.carCount.val("cart_count") &gt;0' style="position:absolute;top:0.05rem;font-weight:normal;font-size:0.18rem;text-align:center;vertical-align:middle;padding:0 0.1rem;height:0.2rem;"><![CDATA[11]]></span></img><span xid="span14" style="font-size:0.22rem;">购物车</span></a>
  
  </div></div></div> 
    <div class="x-col" xid="col26" style="padding:0;">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="加入购物车" xid="buttonzaicigoumai" style="color:white;background-color:#7bc83e;line-height:0.98rem;" onClick="buttonzaicigoumaiClick" target="detailsContent">
      <i xid="i2"></i>
      <span xid="span10" style="font-size:0.32rem;">加入购物车</span></a></div> 
    <div class="x-col" xid="col27">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="立即购买" xid="buttonqueren" style="color:white;background-color:#ff9933;font-size:0.32rem;line-height:0.98rem;" onClick="buttonquerenClick">
      <i xid="i1"></i>
      <span xid="span5">立即购买</span></a></div> </div> </div></div> 
<div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="livelineOver" dismissible="false">
   <div class="x-popOver-overlay" xid="div3"></div>
   <div class="x-popOver-content" xid="div5" style="margin-left:-150px;margin-top:-150px;">
    <img src="$UI/zhixin/img/gameover.png" alt="" xid="image5" style="width:300px;"></img>
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="position: absolute;bottom:10px;">
     <div class="x-col" xid="col8">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="确定" xid="button3" style="font-size:16px;color:white;background-color:#7bc93d;margin-left: auto;margin-right: auto;width:50%;border-radius: 8px;    border-color: #57AD14;" onClick="denglu">
       <i xid="i8"></i>
       <span xid="span7">确定</span></a> </div> </div> </div> </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="left-bottom" xid="loadpopOver" opacity="1" style="display:none;">
   <div class="x-popOver-overlay" xid="div14" style="background-color:white;"></div>
   <div class="x-popOver-content" xid="div13" style="margin-left:-100px;margin-top:-80px;">
    <img src="$UI/zhixin/img/loading.gif" alt="" xid="image15" style="width:200px;"></img></div> </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="Overlineerrordetail" dismissible="false">
   <div class="x-popOver-overlay" xid="div15"></div>
   <div class="x-popOver-content" xid="div16" style="margin-left:-150px;margin-top:-150px;">
    <img src="$UI/zhixin/img/error.png" alt="" xid="image17" style="width:300px;"></img>
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row17" style="position: absolute;bottom:10px;">
     <div class="x-col" xid="col28">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="确定" xid="button9" style="font-size:16px;color:white;background-color:#7bc93d;margin-left: auto;margin-right: auto;width:50%;border-radius: 8px;    border-color: #57AD14;" onClick="denglu">
       <i xid="i9"></i>
       <span xid="span1">确定</span></a> </div> </div> </div> </div></div>