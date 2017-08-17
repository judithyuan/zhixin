<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:20px;left:207px;height:auto;" onLoad="modelLoad" onActive="modelActive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="msgData" idColumn="id"><column name="addr" type="String" xid="xid1"></column>
  <column name="area" type="String" xid="xid2"></column>
  <column name="id" type="String" xid="xid3"></column>
  <column name="name" type="String" xid="xid4"></column>
  <column name="telphone" type="String" xid="xid5"></column>
  <column name="user_id" type="String" xid="xid6"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="adrDta" onCustomRefresh="adrDtaCustomRefresh" idColumn="address"><column name="address" type="String" xid="xid7"></column>
  <column name="area_info" type="String" xid="xid8"></column>
  <column name="loupan_id" type="String" xid="xid9"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar top" title="添加地址">
          <div class="x-titlebar-left top-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon left-btn" icon="icon-ios7-arrow-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-ios7-arrow-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title" style="font-weight:normal;">添加地址</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1" style="background-color:#eeeeee" bind-blur="phoneBlur"><div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel2" style="margin-bottom:0;margin-top:0.2rem;background-color:#fff;padding-left:0.3rem;box-shadow:none;">
   
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1" style="height:1rem;border-bottom:1px solid #eee;">
   <label class="x-label" xid="label1" style="font-size:0.3rem;padding:0;text-align:left;"><![CDATA[收件人姓名]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="name" style="min-width:5rem;font-size:0.3rem;" onBlur="nameBlur" placeHolder="请输入收件人姓名" bind-keyup="btnChange" maxLength="30"></input></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4" style="height:1rem;border-bottom:1px solid #eee;">
   <label class="x-label" xid="label4" style="font-size:0.3rem;padding:0;text-align:left;"><![CDATA[联系电话]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="phone" style="min-width:5rem;font-size:0.3rem;" placeHolder="请输入收货人联系电话" bind-keyup="btnChange" onBlur="phoneBlur"></input></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6" style="height:1rem;border-bottom:1px solid #eee;display:none;">
   <label class="x-label" xid="label6" style="font-size:0.3rem;padding:0;text-align:left;"><![CDATA[所在地区]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="addr" style="min-width:5rem;font-size:0.3rem;" onBlur="nameBlur" placeHolder="请输入收货人所在地址"></input></div><div xid="div1" style="background-color:#fff;min-height:1rem;"><select component="$UI/system/components/justep/select/select" bind-optionsCaption="省份" class="form-control province" xid="province" style="width:33%;float: left;" onChange="btnChange"></select>
  <select component="$UI/system/components/justep/select/select" bind-optionsCaption="城市" class="form-control city" xid="city" style="width:33%;float: left;" onChange="btnChange"></select>
  <select component="$UI/system/components/justep/select/select" bind-optionsCaption="地级市" class="form-control districtAndCounty" xid="districtAndCounty" style="width:33%;" onChange="btnChange"></select>
  </div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit7" style="height:1rem;">
   <label class="x-label" xid="label7" style="font-size:0.3rem;padding:0;text-align:left;"><![CDATA[详细地址]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input1addrdz" style="min-width:5rem;font-size:0.3rem;" onBlur="phoneBlur" placeHolder="请输入收货地址" bind-keyup="btnChange" maxLength="140"></input><select component="$UI/system/components/justep/select/select" bind-optionsCaption="请选择..." class="form-control x-edit" xid="select1" style="min-width:5rem;font-size:0.3rem;display:none;" bind-options="adrDta" bind-optionsValue="address" bind-optionsLabel="address"></select></div></div>
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel3" style="margin-bottom:0;margin-top:0.2rem;background-color:#fff;">
   </div>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default center-block" label="提交" xid="registerBtn" style="height:0.8rem;line-height:0.8rem;margin: 0.4rem;background-color:#7bc83e;color:white;font-size:0.36rem;font-weight:6rem;padding:0;border:none;background-color:#e3e3e3;" onClick="registerBtnClick" disabled="true">
   <i xid="i8"></i>
   <span xid="span2" style="font-size:0.36rem;">提交</span></a>
  
  </div>
  </div> 
</div>