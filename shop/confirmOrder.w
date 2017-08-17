<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:307px;left:343px;" onLoad="modelLoad" onParamsReceive="modelParamsReceive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="detialData" idColumn="id">
   <column name="id" type="String" xid="xid1"></column>
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
  <column label="订单状态" name="typedingdan" type="String" xid="xid18"></column>
  <data xid="default1">[{&quot;id&quot;:&quot;0&quot;,&quot;dingdanhao&quot;:&quot;201702025554554&quot;,&quot;xinxi&quot;:&quot;感谢您在熊猫e家购买&quot;,&quot;wuliu&quot;:&quot;顺通物流&quot;,&quot;danhao&quot;:&quot;20555154488612212&quot;,&quot;fahuo&quot;:&quot;2017-7-7&quot;,&quot;shouhuo&quot;:&quot;2017-8-8&quot;,&quot;addr&quot;:&quot;成都大街上-高新区-大接&quot;,&quot;gongsi&quot;:&quot;附加镜公司&quot;,&quot;mobile&quot;:&quot;85552222&quot;,&quot;way&quot;:&quot;余额支付&quot;,&quot;jine&quot;:&quot;100.20&quot;,&quot;yunfei&quot;:&quot;10&quot;,&quot;youhui&quot;:&quot;10&quot;,&quot;sum&quot;:&quot;100.20&quot;,&quot;name&quot;:&quot;张三&quot;,&quot;phone&quot;:&quot;159****4544&quot;,&quot;time&quot;:&quot;2017-02-02&quot;,&quot;typedingdan&quot;:&quot;待支付&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="wpData" idColumn="id">
   <column name="id" type="String" xid="column1"></column>
   <column label="图片" name="img" type="String" xid="xid19"></column>
   <column label="标题" name="title" type="String" xid="xid20"></column>
   <column label="数量" name="sum" type="String" xid="xid21"></column>
   <column label="价格" name="money" type="String" xid="xid22"></column>
   <data xid="default2">[{&quot;id&quot;:&quot;0&quot;,&quot;img&quot;:&quot;../img/shop/dp.png&quot;,&quot;title&quot;:&quot;抽屉非计算机放沙发啊&quot;,&quot;sum&quot;:&quot;数量1&quot;,&quot;money&quot;:&quot;12.8&quot;},{&quot;id&quot;:&quot;1&quot;,&quot;img&quot;:&quot;../img/shop/dp.png&quot;,&quot;title&quot;:&quot;抽3213放沙发啊&quot;,&quot;sum&quot;:&quot;数量2&quot;,&quot;money&quot;:&quot;123&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="orderList" onCustomRefresh="orderListCustomRefresh"></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="订单详情"
          class="x-titlebar" style="background-color:#F9F9F9;color:#333333;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">订单详情</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="quxiao" style="background-color:#eeeeee;border-radius:0;margin-bottom:0;border-top:1px solid #eeeeee;border-bottom:1px solid #eeeeee;height:3.8em;">
   <div xid="div1" style="height:2em;margin:0.9em;background-color: #E0E0E0;border-radius: 25px;line-height: 2em;text-align: center;"><span xid="span1" style="font-size:12px;"><![CDATA[改订单将于]]></span>
  <span xid="span2" style="font-size:12px;color:#ff5656;"><![CDATA[2017-04-14 12:12:12 ]]></span>
  <span xid="span3" style="font-size:12px;"><![CDATA[关闭 ]]></span></div></div>
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="paneldingdan" style="background-color:#fff;border-radius:0;margin-bottom:0;height:2.8em;border-top:1px solid #eeeeee;border-bottom:1px solid #eeeeee;">
   <p xid="p1" style="line-height: 2.5em;margin:0 0 0 15px;font-size:14px;float:left;color:#999999;">订单号：</p>
   <div component="$UI/system/components/justep/output/output" class="x-output" xid="outputdingdanhao" style="line-height: 2.5em;margin:0 0 0 15px;font-size:14px;float:left;color:#333333;padding:0;max-height:2em;" bind-ref='$model.detialData.ref("dingdanhao")'></div><div component="$UI/system/components/justep/output/output" class="x-output" xid="outputtype" style="line-height: 3em;margin:0 15px 0 0;font-size:12px;float:right;color:#333333;padding:0;max-height:2em;" bind-ref='$model.detialData.ref("typedingdan")'></div></div>
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="paneladdr" style="background-color:#fff;border-radius:0;margin-bottom:0;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="padding:0;">
    <div class="x-col" xid="col10" style="padding:0;">
     <div component="$UI/system/components/justep/output/output" class="x-output" xid="outputname" style="line-height: 2em;margin:0 0 0 15px;font-size:14px;float:left;color:#333333;padding:0;max-height:2em;" bind-ref='$model.detialData.ref("name")'></div></div> 
    <div class="x-col" xid="col11" style="padding:0;text-align: right;margin-right: 2em;">
     <span xid="spanphone" bind-text='$model.detialData.ref("phone")' style="line-height: 2em;"></span></div> </div> 
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7" style="padding:0;margin-top: 2px;margin-bottom: 5px;">
    <div class="x-col" xid="col8" style="padding:0;">
     <p xid="p9" style="line-height: 2em;margin:0 0 0 15px;font-size:12px;float:left;color:#999999;">
      <img src="$UI/zhixin/img/shop/dw.png" alt="" xid="image1" style="width:100%;max-width:1.3em;float:left;"></img>
      <div component="$UI/system/components/justep/output/output" class="x-output" xid="outputaddr" style="line-height: 2em;margin:0 0 0 15px;font-size:12px;float:left;color:#999999;padding:0;max-height:2em;" bind-ref='$model.detialData.ref("addr")'></div></p> </div> 
    <div class="x-col x-col-fixed" xid="col12" style="padding:0;width:2em;">
     <img src="$UI/zhixin/img/shop/iconfh.png" alt="" xid="image2" style="float:left;height:1.3em;margin-left: 0.8em;"></img></div> </div> 
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="padding:0;">
    <div class="x-col" xid="col9" style="padding:0;">
     <img src="$UI/zhixin/img/shop/bac.png" alt="" xid="image3" style="max-height: 0.25em;width:100%;position: absolute;"></img></div> </div> </div>
  <div component="$UI/system/components/justep/panel/panel" class="panel panel-default x-card" xid="panel7" style="margin-bottom:0;border-top: 1px solid #F0F0F0;border-bottom: 0px solid #e6e6e6;padding-bottom:10px;background-color:#f0f0f0;"></div>
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panelgongsidzf" style="background-color:#fff;border-radius:0;margin-bottom:0;border-top:1px solid #eeeeee;border-bottom:1px solid #eeeeee;height:2em;">
   <p xid="p14" style="line-height: 2em;margin:0 0 0 15px;font-size:12px;float:left;color:#999999;">
    <img src="$UI/zhixin/img/shop/dp.png" alt="" xid="image4" style="width:100%;max-width:1.3em;float:left;margin-top:0.5em;"></img>
    <div component="$UI/system/components/justep/output/output" class="x-output" xid="output13" style="line-height: 2em;margin:0 0 0 15px;font-size:14px;float:left;color:#333333;padding:0;max-height:2em;" bind-ref='$model.detialData.ref("gongsi")'></div></p> </div>
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panelspss" style="background-color:#fff;border-radius:0;margin-bottom:0;border:none;">
   <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="wpData">
    <ul class="x-list-template" xid="listTemplateUl1">
     <li xid="li1">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9" style="padding:0;border-bottom: 1px solid #eeeeee;padding: 5px 0;">
       <div class="x-col x-col-fixed" xid="col13" style="padding:0;width:auto;">
        <img src="$UI/zhixin/img/loading.gif" alt="" xid="image6" style="height: 4em;margin: 0.6em;" bind-attr-src=' val("img")'></img></div> 
       <div class="x-col" xid="col14" style="padding:0;">
        <p xid="p16" style="line-height: 2em;margin:0;font-size:14px;color:#333333;" bind-text=' val("title")'>dsadada</p>
        <p xid="p17" style="line-height: 2em;margin:0;font-size:12px;float:left;color:#999999;" bind-text=' val("sum")'>dsadada</p></div> 
       <div class="x-col x-col-20" xid="col15" style="padding:0;">
        <p xid="p18" style="line-height: 2em;font-size:14px;color:#333333;float:left;margin:0;">￥</p>
        <p xid="p20" style="line-height: 2em;font-size:14px;color:#333333;margin:0;" bind-text=' val("money")'>20</p>
        <img src="$UI/zhixin/img/shop/iconfont-cart.png" alt="" xid="image8" style="max-width:1.5em;margin-left: 0.5em;"></img></div> </div> </li> </ul> </div> </div>
  <div component="$UI/system/components/justep/panel/panel" class="panel panel-default x-card" xid="panel10" style="margin-bottom:0;border-top: 1px solid #F0F0F0;border-bottom: 0px solid #e6e6e6;padding-bottom:10px;background-color:#f0f0f0;"></div>
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="paneldianhuadzf" style="text-align:center;background-color:#fff;border-radius:0;margin-bottom:0;height:2.8em;border-top:1px solid #eeeeee;border-bottom:1px solid #eeeeee;">
   <img src="$UI/zhixin/img/main/phone.png" alt="" xid="image9" style="height:1.2em;"></img>
   <span xid="span4" style="line-height: 3em;color:#333333;">联系熊猫e家客服</span></div>
  <div component="$UI/system/components/justep/panel/panel" class="panel panel-default x-card" xid="panel11" style="margin-bottom:0;border-top: 1px solid #F0F0F0;border-bottom: 0px solid #e6e6e6;padding-bottom:10px;background-color:#f0f0f0;"></div>
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panelzhifudzf" style="background-color:#fff;border-radius:0;margin-bottom:0;height:2.8em;border-top:1px solid #eeeeee;border-bottom:1px solid #eeeeee;">
   <p xid="p22" style="line-height: 2.5em;margin:0 0 0 15px;font-size:14px;float:left;color:#999999;">支付方式</p>
   <p xid="p23" style="line-height: 2.5em;margin:0 15px 0 0;font-size:14px;float:right;color:#999999;" bind-text=' $model.detialData.val("way")'>支付方式</p></div>
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panelneridzf" style="background-color:#fff;border-radius:0;margin-bottom:0;margin-bottom:0;border-bottom:1px solid #eeeeee;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10jine" style="padding:0;">
    <div class="x-col" xid="col19" style="padding:0;">
     <p xid="p24" style="line-height: 2em;margin:0 0 0 15px;font-size:12px;float:left;color:#999999;">商品金额</p>
     <div component="$UI/system/components/justep/output/output" class="x-output" xid="output18" style="line-height: 2em;margin:0 15px 0 0;font-size:12px;float:right;color:#ff5858;padding:0;" bind-ref='$model.detialData.ref("jine")'></div></div> </div> 
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="rowyunf" style="padding:0;">
    <div class="x-col" xid="col20" style="padding:0;">
     <p xid="p28" style="line-height: 2em;margin:0 0 0 15px;font-size:12px;float:left;color:#999999;">运费</p>
     <div component="$UI/system/components/justep/output/output" class="x-output" xid="output22" style="line-height: 2em;margin:0 15px 0 0;font-size:12px;float:right;color:#ff5858;padding:0;" bind-ref='$model.detialData.ref("yunfei")'></div></div> </div> 
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="rowyouhui" style="padding:0;">
    <div class="x-col" xid="col21" style="padding:0;">
     <p xid="p29" style="line-height: 2em;margin:0 0 0 15px;font-size:12px;float:left;color:#999999;">商品金额</p>
     <div component="$UI/system/components/justep/output/output" class="x-output" xid="outputyunf" style="line-height: 2em;margin:0 15px 0 0;font-size:12px;float:right;color:#ff5858;padding:0;" bind-ref='$model.detialData.ref("youhui")'></div></div> </div> </div>
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panelbotdzf" style="background-color:#fff;border-radius:0;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row18" style="padding:0;">
    <div class="x-col" xid="col22" style="padding:0;">
     <div component="$UI/system/components/justep/output/output" class="x-output" xid="output24" style="line-height: 2em;margin:0 15px 0 0;font-size:12px;float:right;color:#ff5858;padding:0;" bind-ref='$model.detialData.ref("sum")'></div>
     <p xid="p33" style="line-height: 2em;margin:0 0 0 15px;font-size:12px;float:right;color:#999999;">实付款：</p></div> </div> 
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row16" style="padding:0;">
    <div class="x-col" xid="col24" style="padding:0;">
     <div component="$UI/system/components/justep/output/output" class="x-output" xid="output25" style="line-height: 2em;margin:0 15px 0 0;font-size:12px;float:right;color:#999999;padding:0;" bind-ref="'下单时间:'+$model.detialData.val(&quot;time&quot;)"></div></div> </div> </div>
  <div component="$UI/system/components/justep/panel/panel" class="panel panel-default x-card" xid="panel16" style="margin-bottom:0;border-top: 1px solid #F0F0F0;border-bottom: 0px solid #e6e6e6;padding-bottom:10px;background-color:#f0f0f0;"></div></div>
  <div class="x-panel-bottom" xid="bottom1">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row19" style="padding:0;height:100%;">
    <div class="x-col" xid="col25" style="padding:0;">
     <p xid="p34" style="font-size:0.25em;margin:0;margin-left:0.5em;margin-top:0.5em;">自动收货时间：</p>
     <span id="timeIddzf" xid="spantime" style="font-size:0.25em;margin-left:0.5em;"></span></div> 
    <div class="x-col" xid="col26" style="padding:0;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="确认收货" xid="buttonqueren" style="color:white;background-color:#7bc93d;line-height:30px;">
      <i xid="i1"></i>
      <span xid="span5">确认收货</span></a> </div> 
    </div> </div></div> 
<div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="livelineOver" dismissible="false">
   <div class="x-popOver-overlay" xid="div2"></div>
   <div class="x-popOver-content" xid="div5" style="margin-left:-150px;margin-top:-150px;">
    <img src="$UI/zhixin/img/gameover.png" alt="" xid="image5" style="width:300px;"></img>
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="position: absolute;bottom:10px;">
     <div class="x-col" xid="col17">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="确定" xid="button5" style="font-size:16px;color:white;background-color:#7bc93d;margin-left: auto;margin-right: auto;width:50%;border-radius: 8px;    border-color: #57AD14;" onClick="denglu">
       <i xid="i3"></i>
       <span xid="span7">确定</span></a> </div> </div> </div> </div>
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