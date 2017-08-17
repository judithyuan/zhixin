<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:-8px;left:369px;" onLoad="modelLoad" onParamsReceive="modelParamsReceive" onModelConstructDone="modelModelConstructDone"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="detialData" idColumn="id"><column name="id" type="String" xid="xid1"></column>
  <column label="订单号" name="dingdanhao" type="String" xid="xid2"></column>
  <column label="信息" name="xinxi" type="String" xid="xid3"></column>
  <column label="物流公司" name="wuliu" type="String" xid="xid4"></column>
  <column label="物流单号" name="danhao" type="String" xid="xid5"></column>
  <column label="发货时间" name="fahuo" type="String" xid="xid6"></column>
  <column label="收货时间" name="shouhuo" type="String" xid="xid7"></column>
  <column label="地址" name="addr" type="String" xid="xid8"></column>
  <column label="公司" name="gongsi" type="String" xid="xid9"></column>
  <column label="电话" name="mobile" type="String" xid="xid10"></column>
  <column label="方式" name="way" type="String" xid="xid11"></column>
  <column label="金额" name="jine" type="String" xid="xid12"></column>
  <column label="运费" name="yunfei" type="String" xid="xid13"></column>
  <column label="优惠" name="youhui" type="String" xid="xid14"></column>
  <column label="实付款" name="sum" type="String" xid="xid15"></column>
  <column name="name" type="String" xid="xid16"></column>
  <column name="phone" type="String" xid="xid17"></column>
  <column label="下单时间" name="time" type="String" xid="xid23"></column>
  <data xid="default1">[{&quot;id&quot;:&quot;0&quot;,&quot;dingdanhao&quot;:&quot;201702025554554&quot;,&quot;xinxi&quot;:&quot;感谢您在熊猫e家购买&quot;,&quot;wuliu&quot;:&quot;顺通物流&quot;,&quot;danhao&quot;:&quot;20555154488612212&quot;,&quot;fahuo&quot;:&quot;2017-7-7&quot;,&quot;shouhuo&quot;:&quot;2017-8-8&quot;,&quot;addr&quot;:&quot;成都大街上-高新区-大接&quot;,&quot;gongsi&quot;:&quot;附加镜公司&quot;,&quot;mobile&quot;:&quot;85552222&quot;,&quot;way&quot;:&quot;余额支付&quot;,&quot;jine&quot;:&quot;100.20&quot;,&quot;yunfei&quot;:&quot;10&quot;,&quot;youhui&quot;:&quot;10&quot;,&quot;sum&quot;:&quot;100.20&quot;,&quot;name&quot;:&quot;张三&quot;,&quot;phone&quot;:&quot;159****4544&quot;,&quot;time&quot;:&quot;2017-02-02&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="wpData" idColumn="id"><column name="id" type="String" xid="xid18"></column>
  <column label="图片" name="img" type="String" xid="xid19"></column>
  <column label="标题" name="title" type="String" xid="xid20"></column>
  <column label="数量" name="sum" type="String" xid="xid21"></column>
  <column label="价格" name="money" type="String" xid="xid22"></column>
  <data xid="default2">[{&quot;id&quot;:&quot;0&quot;,&quot;img&quot;:&quot;../img/shop/dp.png&quot;,&quot;title&quot;:&quot;抽屉非计算机放沙发啊&quot;,&quot;sum&quot;:&quot;数量1&quot;,&quot;money&quot;:&quot;12.8&quot;},{&quot;id&quot;:&quot;1&quot;,&quot;img&quot;:&quot;../img/shop/dp.png&quot;,&quot;title&quot;:&quot;抽3213放沙发啊&quot;,&quot;sum&quot;:&quot;数量2&quot;,&quot;money&quot;:&quot;123&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="goodsData" idColumn="goods_id"><column name="goods_id" type="String" xid="xid24"></column>
  <column name="goods_name" type="String" xid="xid25"></column>
  <column name="image_url" type="String" xid="xid26"></column>
  <column name="goods_num" type="String" xid="xid27"></column>
  <column name="goods_pay_price" type="String" xid="xid28"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="订单详情"
          class="x-titlebar top">
          <div class="x-titlebar-left top-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon left-btn" icon="icon-ios7-arrow-left"
              onClick="backBtnClick" xid="backBtn"> 
              <i class="icon-ios7-arrow-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title" style="font-size:0.36rem;font-weight:normal">订单详情</div>  
          <div class="x-titlebar-right reverse top-right"> 
          <div class="x-col" xid="div3">
   <span xid="span9" class="pull-right" bind-click="span9Click" style="position:relative;">
    <img src="$UI/zhixin/img/bellh.png" alt="" xid="image13" style="width:0.4rem;"></img>
    <span xid="span99" class="ts" id="span99" style="display:none;"></span></span> </div></div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1order" style="background-color:#f0f0f0;bottom:0.98rem;"><div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="quxiaoWZF" style="background-color:#f0f0f0;border-radius:0;margin-bottom:0;border-top:1px solid #eeeeee;border-bottom:1px solid #eeeeee;height:1rem;display:flex;align-items:center;padding:0 0.3rem;" bind-visible="pay_snState !='待付款'">
   <div xid="div1" style="max-height:0.62rem;background-color: #ecebeb;border-radius: 25px;line-height: 2em;text-align: center;width:100%; font-size:0.24rem;line-height:0.62rem;">
    <span xid="span1"><![CDATA[该订单将于]]></span>
    <span xid="span2" style="color:#ff3333;" bind-text="pay_snCloseTime">2017-04-14 12:12:12</span>
    <span xid="span3">关闭</span></div> </div><div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panelwuyefuwu" style="background-color:#fff;border-radius:0;border-bottom:1px solid #eeeeee;height:1rem;font-size:0.3rem;padding:0 0.3rem;color:#333;line-height:1rem;">
   <p xid="p1" style="display:inline-block;"><![CDATA[订单号：]]>
  </p><div component="$UI/system/components/justep/output/output" class="x-output" xid="outputdingdanhao" bind-ref='pay_sn' style="display:inline-block;font-size:0.3rem;"></div><div component="$UI/system/components/justep/output/output" class="x-output pull-right" xid="outputtype" style="color:#333333;display:inline-block;line-height:1rem;font-size:0.3rem;" bind-ref="pay_snState" bind-style="{ color: pay_snState !='待付款' ? '#ff6633' : '#333333' }"></div>
  </div>
  <div xid="peisongxinxiYZF" bind-visible="pay_snState !='代付款'" style="margin-top:0.2rem;"><div class="panel panel-default clearfix" component="$UI/system/components/bootstrap/panel/panel" xid="panelpeisongxinxi" style="background-color:#fff;border-radius:0;height:0.8rem;line-height:0.8rem;border-top:1px solid #eeeeee;border-bottom:1px solid #eeeeee;padding:0 0.3rem;">
   <p xid="p3" style="color:#666;display:inline-block;font-size:0.26rem;margin-right:0.14rem;"><![CDATA[配送信息]]></p>
   <div component="$UI/system/components/justep/output/output" class="x-output" xid="outputxinxi" style="color:#666;padding:0;display:inline-block;font-size:0.26rem;" bind-ref='$model.detialData.val("xinxi")'></div></div><div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel3" style="background-color:#fff;border-radius:0;padding:0.2rem 0.3rem;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="line-height:0.4rem;">
   <div class="x-col" xid="col1"><p xid="p4" style="color:#999;display:inline-block;font-size:0.26rem;"><![CDATA[物流公司：]]></p><div component="$UI/system/components/justep/output/output" class="x-output" xid="output3" style="color:#999;display:inline-block;font-size:0.26rem;" bind-ref='pay_snLogisticsName'></div></div>
   </div>
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="line-height:0.4rem;">
   <div class="x-col" xid="col4">
    <p xid="p5" style="color:#999;display:inline-block;font-size:0.26rem;"><![CDATA[物流单号：]]></p>
    <div component="$UI/system/components/justep/output/output" class="x-output" xid="output4" style="color:#999;display:inline-block;font-size:0.26rem;" bind-ref='pay_snLogisticsNum'></div></div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="line-height:0.4rem;">
   <div class="x-col" xid="col5">
    <p xid="p6" style="color:#999;display:inline-block;font-size:0.26rem;"><![CDATA[发货时间：]]></p>
    <div component="$UI/system/components/justep/output/output" class="x-output" xid="output5" style="color:#999;display:inline-block;font-size:0.26rem;" bind-ref='pay_snLogisticsStart'></div></div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row4detailshouhuoshijian" style="line-height:0.4rem;">
   <div class="x-col" xid="col6">
    <p xid="p7" style="color:#999;display:inline-block;font-size:0.26rem;"><![CDATA[收货时间：]]></p>
    <div component="$UI/system/components/justep/output/output" class="x-output" xid="output6" style="color:#999;display:inline-block;font-size:0.26rem;" bind-ref='pay_snLogisticsEnd' bind-style="{color:pay_snLogisticsEnd!='等待确认收货'?'#ff3333':'#999999'}"></div></div> </div></div></div>
  
  
  
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="paneladdr" style="background-color:#fff;border-radius:0;margin-bottom:0;margin-top:0.2rem;padding:0.2rem 0.3rem;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
    <div class="x-col" xid="col10">
     <div component="$UI/system/components/justep/output/output" class="x-output" xid="outputname" style="color:#333333;display:inline-block;font-size:0.3rem;line-height:0.5rem;" bind-ref='pay_snName'></div></div> 
  <div class="x-col" xid="col11" style="text-align: right;">
   <span xid="spanphone" bind-text='pay_snMobile' style="color:#333333;display:inline-block;font-size:0.3rem;line-height:0.5rem;"></span></div></div> 
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7" style="padding:0;margin-top: 2px;margin-bottom: 5px;">
    <div class="x-col" xid="col8" style="overflow: hidden;">
     <p xid="p9"><![CDATA[]]>
  <img src="$UI/zhixin/img/shop/dw.png" alt="" xid="image1" style="width:0.28rem;margin-right:0.12rem;margin-top:0.1rem;" class="pull-left"></img><div component="$UI/system/components/justep/output/output" class="x-output" xid="outputaddr" style="color:#999;display:inline-block;font-size:0.3rem;vertical-align:middle;overflow: hidden;white-space: nowrap;text-overflow: ellipsis;margin-top:0.1rem;width:6.2rem;overflow:hidden;" bind-ref='pay_snAdress'></div></p>
     </div> 
  <div class="x-col x-col-fixed" xid="col12" style="padding:0;width:2em;display:none;">
   <img src="$UI/zhixin/img/shop/iconfh.png" alt="" xid="image2" style="float:left;height:1.3em;margin-left: 0.8em;"></img></div></div> 
    
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="width:100%;">
    <div class="x-col" xid="col9" style="overflow:hidden;">
     <img src="$UI/zhixin/img/shop/bac.png" alt="" xid="image3" style="height:0.12rem;"></img></div> </div><div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panelgongsi" style="background-color:#fff;border-radius:0;margin-bottom:0;border-top:1px solid #eeeeee;border-bottom:1px solid #eeeeee;margin-top:0.2rem;padding:0 0.3rem;height:1rem;line-height:1rem;">
   <p xid="p14">
   <img src="$UI/zhixin/img/shop/dp.png" alt="" xid="image4" style="width:0.3rem;margin-right:0.14rem;margin-top:0.32rem;" class="pull-left"></img>
   <div component="$UI/system/components/justep/output/output" class="x-output" xid="output13" bind-ref='pay_snHose' style="color:#333333;display:inline-block;font-size:0.3rem;vertical-align:middle;"></div>
  </p></div>
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panelsp" style="background-color:#fff;border-radius:0;margin-bottom:0;border:none;padding:0 0.3rem;">
   <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="goodsData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row9" style="border-bottom: 1px solid #eeeeee;padding:0.24rem 0 0.2rem 0;position:relative;">
   <div class="x-col x-col-fixed" xid="col13" style="width:1rem;overflow:hidden;margin-right:0.14rem;height:1rem;"><img src="$UI/zhixin/img/loading.gif" alt="" xid="image6" style="width:100%;" bind-attr-src=' val("image_url")'></img></div>
   <div class="x-col x-col-fixed" xid="col14" style="overflow: hidden;white-space: nowrap;text-overflow: ellipsis;width:5rem;"><p xid="p16" bind-text=' val("goods_name")' style="font-size:0.28rem;line-height:1;overflow: hidden;white-space: nowrap;text-overflow: ellipsis;color:333;"><![CDATA[商品说明]]></p>
  <p xid="p17" bind-text="'数量'+val(&quot;goods_num&quot;)" style="font-size:0.28rem;color:#999999;margin-top:0.1rem;"><![CDATA[商品规格/数量]]></p></div>
   <div class="x-col x-col-fixed" xid="col15" style="text-align:right;width:auto;"><p xid="p20" bind-text=" '￥'+val(&quot;goods_pay_price&quot;)" style="font-size:0.3rem;font-weight:bold;"><![CDATA[￥0.00]]></p>
  <img src="$UI/zhixin/img/shop/iconfont-cart.png" alt="" xid="image8" style="width:0.5rem;position:absolute;bottom:0.2rem;right:0;"></img></div></div></li></ul> </div></div>
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="paneldianhua" style="text-align:center;background-color:#fff;border-radius:0;margin-bottom:0;border-top:1px solid #eeeeee;border-bottom:1px solid #eeeeee;height:1rem;line-height:1rem;margin-top:0.2rem;" bind-click="paneldianhuaClick">
   <img src="$UI/zhixin/img/main/phone.png" alt="" xid="image9" style="height:0.5rem;margin-right:0.14rem;"></img><span xid="span4" style="color:#333333;font-size:0.3rem;vertical-align:middle;"><![CDATA[联系熊猫e家客服]]></span></div><div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panelzhifu" style="background-color:#fff;border-radius:0;margin-bottom:0;height:1rem;border-top:1px solid #eeeeee;border-bottom:1px solid #eeeeee;margin-top:0.2rem;padding:0 0.3rem;line-height:1rem;">
   
   <p xid="p23" style="color:#999999;font-size:0.3rem;display:inline-block;" bind-text='payment_name'>支付方式</p><p xid="p22" style="color:#999999;font-size:0.3rem;display:inline-block;float:right;"><![CDATA[支付方式]]></p></div>
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panelneri" style="background-color:#fff;border-radius:0;margin-bottom:0;border-bottom:1px solid #eeeeee;padding:0.2rem 0.3rem 0 0.3rem;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10jine">
    <div class="x-col x-col-center" xid="col19" style="height:0.6rem;">
     <p xid="p24" style="display:inline-block;font-size:0.28rem;color:#333333;"><![CDATA[商品金额]]></p>
     <div component="$UI/system/components/justep/output/output" class="x-output pull-right" xid="output18" style="display:inline-block;font-size:0.28rem;color:#333333;" bind-ref='pay_snSale'></div>
  <span xid="span12" style="font-size:0.28rem;font-weight:bold;" class="pull-right"><![CDATA[￥]]></span></div> </div> 
   
   
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="rowyunf">
   <div class="x-col x-col-center" xid="col20" style="height:0.6rem;">
    <p xid="p28" style="display:inline-block;font-size:0.28rem;color:#333333;"><![CDATA[运费]]></p>
    <div component="$UI/system/components/justep/output/output" class="x-output pull-right" xid="output22" style="display:inline-block;font-size:0.28rem;display:inline-block;font-size:0.3rem;color:#ff3333;" bind-ref='pay_snLogisticsMoney'></div>
  <span xid="span13" style="font-size:0.28rem;font-weight:bold;color:#ff6633" class="pull-right"><![CDATA[+￥]]></span></div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="rowyouhui">
   <div class="x-col x-col-center" xid="col21" style="height:0.6rem;">
    <p xid="p29" style="display:inline-block;font-size:0.28rem;color:#333333;"><![CDATA[优惠]]></p>
    <div component="$UI/system/components/justep/output/output" class="x-output pull-right" xid="outputyunf" style="display:inline-block;font-size:0.28rem;color:#ff3333;vertical-align:middle;" bind-ref='freeOrder'></div>
  <span xid="span14" style="font-size:0.28rem;font-weight:bold;color:#ff6633" class="pull-right"><![CDATA[-￥]]></span></div> </div></div>
  
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panelbot" style="background-color:#fff;border-radius:0;padding:0.14rem 0.3rem;margin-bottom:0.2rem;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row18" style="padding:0;">
    <div class="x-col" xid="col22" style="text-align:right;font-weight:bold;">
     <p xid="p33" style="display:inline-block;font-size:0.3rem;display:inline-block;font-size:0.3rem;color:#ff3333;"><![CDATA[实付金额：]]></p><span xid="span15" style="font-size:0.28rem;font-weight:bold;color:#ff6633"><![CDATA[￥]]></span><div component="$UI/system/components/justep/output/output" class="x-output" xid="output24" style="display:inline-block;font-size:0.32rem;display:inline-block;font-size:0.3rem;color:#ff3333;" bind-ref='pay_snSmoney'></div>
  </div> </div> 
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row16" style="margin-top:0.1rem;">
     
  <div class="x-col" xid="col24">
   <div component="$UI/system/components/justep/output/output" class="x-output pull-right" xid="output25" bind-ref="pay_snadd_time" style="font-size:0.24rem;color:#999999;"></div>
  <span xid="span10" style="font-size:0.24rem;color:#999999;" class="pull-right"><![CDATA[]]></span></div></div> 
   </div>
  </div>
  <div class="x-panel-bottom" xid="bottom1dingdanxiagnq" style="border-top:1px solid #eee;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row19" style="padding-left:0.3rem;">
   <div class="x-col x-col-center" xid="col25">
  <span xid="span11"><p xid="p34" style="font-size: 0.24rem;margin:0;color:#666666;" bind-text="pay_snfukuanzhaungtai"><![CDATA[自动收货时间：]]></p><span id="timeId" xid="spantime" style="font-size:0.24rem;color:#333333;"></span></span></div>
   <div class="x-col" xid="col26quxiao"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="取消订单" xid="quxiao" style="color:white;background-color:#999999;font-size:0.32rem;line-height:0.98rem;" onClick="quxiaoClick">
   <i xid="i2"></i>
   <span xid="span6">取消订单</span></a></div>
   <div class="x-col" xid="col27"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="确认收货" xid="buttonquerendingdfanxiangq" style="display:none;color:white;background-color:#7bc93d;margin:0;font-size:0.32rem;line-height:0.98rem;" onClick="queren">
   <i xid="i1"></i>
   <span xid="span5">确认收货</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="去支付" xid="quzhifu" style="color:white;background-color:#7bc93d;margin:0;font-size:0.32rem;line-height:0.98rem;" onClick="quzhifuClick">
   <i xid="i3"></i>
   <span xid="span7">去支付</span></a></div></div></div></div> 
<div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="livelineOver" dismissible="false">
   <div class="x-popOver-overlay" xid="div2"></div>
   <div class="x-popOver-content" xid="div5" style="margin-left:-150px;margin-top:-150px;">
    <img src="$UI/zhixin/img/gameover.png" alt="" xid="image5" style="width:300px;"></img>
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8" style="position: absolute;bottom:10px;">
     <div class="x-col" xid="col17">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="确定" xid="button5" style="font-size:16px;color:white;background-color:#7bc93d;margin-left: auto;margin-right: auto;width:50%;border-radius: 8px;    border-color: #57AD14;" onClick="denglu">
       <i xid="i4"></i>
       <span xid="span8">确定</span></a> </div> </div> </div> </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="loadpopOver" opacity="1" style="display:block;">
   <div class="x-popOver-overlay" xid="div14" style="background-color:white;"></div>
   <div class="x-popOver-content" xid="div13" style="margin-left:-100px;margin-top:-80px;">
    <img src="$UI/zhixin/img/loading.gif" alt="" xid="image15" style="width:200px;"></img></div> </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="Overlineerror" dismissible="false">
   <div class="x-popOver-overlay" xid="div15"></div>
   <div class="x-popOver-content" xid="div16" style="margin-left:-150px;margin-top:-150px;">
    <img src="$UI/zhixin/img/error.png" alt="" xid="image17" style="width:300px;"></img>
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row17" style="position: absolute;bottom:10px;">
     <div class="x-col" xid="col23">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="确定" xid="button9" style="font-size:16px;color:white;background-color:#7bc93d;margin-left: auto;margin-right: auto;width:50%;border-radius: 8px;    border-color: #57AD14;" onClick="denglu">
       <i xid="i14"></i>
       <span xid="span17">确定</span></a> </div> </div> </div> </div></div>