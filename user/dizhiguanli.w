<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:23px;left:192px;height:auto;" onActive="modelActive" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="addressData" idColumn="address" onCustomRefresh="addressDataCustomRefresh" confirmRefresh="false" confirmDelete="false"><column name="address" type="String" xid="xid1"></column>
  <column label="" name="address_id" type="String" xid="xid2"></column>
  <column label="" name="area_id" type="String" xid="xid3"></column>
  <column label="" name="area_info" type="String" xid="xid4"></column>
  <column name="city_id" type="String" xid="xid5"></column>
  <data xid="default1">[{&quot;id&quot;:&quot;1&quot;,&quot;name&quot;:&quot;张三&quot;,&quot;phone&quot;:&quot;13155454681&quot;,&quot;address&quot;:&quot;四川省 成都市 锦江区 置信家园 一栋一单元101号&quot;,&quot;moren&quot;:&quot;1&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;name&quot;:&quot;某某&quot;,&quot;phone&quot;:&quot;18484856211&quot;,&quot;address&quot;:&quot;四川省 成都市 锦江区 置信家园 一栋一单元101号&quot;,&quot;moren&quot;:&quot;0&quot;}]</data>
  <column name="dlyp_id" type="String" xid="xid6"></column>
  <column name="state" type="String" xid="xid7"></column>
  <column name="is_default" type="String" xid="xid8"></column>
  <column name="loupan_id" type="String" xid="xid9"></column>
  <column name="loupan_info" type="String" xid="xid10"></column>
  <column name="member_id" type="String" xid="xid11"></column>
  <column name="mob_phone" type="String" xid="xid12"></column>
  <column name="tel_phone" type="String" xid="xid13"></column>
  <column name="true_name" type="String" xid="xid14"></column>
  <column name="delete_type" type="String" xid="xid15"></column></div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="地址管理"
          class="x-titlebar top">
          <div class="x-titlebar-left top-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon left-btn" icon="icon-ios7-arrow-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-ios7-arrow-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">地址管理</div>  
          <div class="x-titlebar-right reverse" style="padding-right:0.3rem;"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label right-btn" label="添加" xid="button1" style="display:none;" onClick="button1Click">
   <i xid="i1"></i>
   <span xid="span1" style="font-size:0.26rem;">添加</span></a></div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1" style="background-color:#f0f0f0;"><div xid="div7" style="height:0.2rem;background-color:#f0f0f0;border-top:1px solid #eee;border-bottom:1px solid #eee;"></div><div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel3" style="background-color:#f0f0f0;border-bottom:0;    box-shadow: 0 1px 1px rgba(255, 255, 255, 0);">
   
   <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1dizhiguanli" data="addressData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" style="background-color:white;margin-bottom:0.2rem;" bind-visible="val('address')!=undefined"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="padding:0.34rem 0.3rem 0;font-size:0.3rem;color:#333;">
   <div class="x-col x-col-fixed" xid="col1" style="width:auto;"><span xid="span2" bind-text='val("true_name")'><![CDATA[姓名]]></span></div>
   <div class="x-col" xid="col2"></div>
   <div class="x-col" xid="col3" style="text-align:right;"><span xid="span3" bind-text="val(&quot;mob_phone&quot;)==undefined?'':val(&quot;mob_phone&quot;).replace(/^(\d{3})\d{4}(\d{4})$/, &quot;$1****$2&quot;)" style="text-align:right;"><![CDATA[电话]]></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="padding:0.25rem 0.3rem 0.34rem;font-size:0.26rem;color:#999;">
   <div class="x-col" xid="col5">
  
  
  <span xid="span7" style="word-break:normal;width:auto;display:block;word-wrap:break-word;overflow:hidden;"><span xid="span8" bind-text='val("address")' style="display: inline-block;height:0.45rem;line-height:0.45rem;margin-right:0.2rem;"><![CDATA[地址]]></span><span xid="span10" style="color:#f46d4b;border:1px solid #f46d4b;padding:0.01rem 0.1rem;border-radius:10px;font-size:0.24rem;width:100%;" bind-visible="val(&quot;loupan_id&quot;)&gt;10&amp;&amp;justep.Shell.user.get().lid==val(&quot;loupan_id&quot;)&amp;&amp;localStorage.getItem('intime_count')&gt;0"><![CDATA[支持及时达]]></span></span></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="height:0.8rem;border-top:1px solid #eee;padding:0 0.3rem;">
   <div class="x-col x-col-50" xid="col7" bind-click="col7Click"><span xid="span4" bind-visible=' val("is_default") ==0' class="nochoose" style="vertical-align:middle;"><![CDATA[]]></span><img src="$UI/zhixin/img/user/right.png" alt="" xid="image3" style="width:0.4rem;margin-top:-0.05rem;" bind-visible=' val("is_default") ==1'></img><span component="$UI/system/components/justep/button/radio" class="x-radio" xid="radio2" style="display:none;width:0.4rem;" checked="false" name="num" bind-value='ref("state")' bind-checked=' val("moren") ==1 '></span><span xid="span5" style="font-size:0.28rem;margin-left:0.14rem;line-height:0.8rem;"><![CDATA[默认地址]]></span>
  </div>
   <div class="x-col" xid="col8"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left pull-right center-block" label="编辑" xid="btnEdt" style="color:#999;font-size:0.28rem;line-height:0.8rem;" onClick="col8Click">
   <i xid="i4" class="icon-compose" style="padding-right:0;font-size:0.4rem;"></i>
   <span xid="span13">编辑</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left pull-right center-block" label="删除" xid="btnDel" style="color:#999;font-size:0.28rem;line-height:0.8rem;margin-right:0.3rem;" bind-visible=' val("delete_type") =="1"' onClick="col9Click">
   <i xid="i3" class="round round-music" style="padding-right:0;font-size:0.4rem;"></i>
   <span xid="span12">删除</span></a>
  </div>
   </div>
  </li></ul> </div><div xid="div2" style="margin-top:0.4rem;padding:0 0.3rem;"><span xid="span6" class="pull-left" style="color:#999;font-size:0.24rem;"><![CDATA[温馨提示：暂无任何地址信息]]></span></div></div>
  </div>
  <div class="x-panel-bottom" xid="bottom1" style="padding:0 0.3rem;border-top:1px solid #eee;background-color:#7bc83e;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block center-block" xid="button2" style="height:100%;line-height:48px;color:#fff;font-size:0.36rem;background-color:#7bc83e;" label="新增收货地址" onClick="button1Click">
   <i xid="i2"></i>
   <span xid="span9">新增收货地址</span></a></div></div> 
</div>