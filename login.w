<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:60px;left:0px;" onLoad="modelLoad" onActive="modelActive"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="switchDta" idColumn="danyuan_name"><column label="单元名" name="danyuan_name" type="String" xid="xid1"></column>
  <column label="楼层" name="level_no" type="String" xid="xid2"></column>
  <data xid="default1">[{&quot;addr&quot;:&quot;鲜花大院 一栋一单元&quot;,&quot;id&quot;:&quot;1&quot;},{&quot;addr&quot;:&quot;丽都花园内侧 一栋二单元&quot;,&quot;id&quot;:&quot;2&quot;},{&quot;addr&quot;:&quot;天府世家 二栋一单元&quot;,&quot;id&quot;:&quot;3&quot;}]</data>
  <column label="楼盘名" name="luopan_name" type="String" xid="xid3"></column>
  <column name="room_id" type="String" xid="xid4"></column>
  <column label="房间标识" name="room_no" type="String" xid="xid5"></column>
  <column name="state" type="String" xid="xid6"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-card x-full "
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar top" xid="titleBar1" title="登录">
   <div class="x-titlebar-left top-left" xid="left1"><a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon left-btn" icon="icon-ios7-arrow-left" onClick="backBtnClick" xid="backBtn" style="display:none;">
   <i class="icon-ios7-arrow-left" xid="i2"></i>
   <span xid="span5"></span></a></div>
   <div class="x-titlebar-title" xid="title1">登录</div>
   <div class="x-titlebar-right reverse" xid="right1" style="padding-right:0rem;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="注册" xid="button1" style="font-size:0.26rem;height:100%;color:#999;line-height:48px;padding-right:0.4rem;" onClick="button2Click">
   <i xid="i1"></i>
   <span xid="span1">注册</span></a></div></div></div><div xid="content1" class="x-panel-content" style="overflow-x: hidden;"> 
      <div xid="noSwitch"><div xid="div2" style="text-align:center;margin:9.6% 0px 11.9% 0;">
        <img src="$UI/zhixin/img/logoNew.png" alt="" xid="image3" style="height:0.44rem;width:1.9rem;" />
      </div><div id="plant" xid="div3login" style="padding:0 0.4rem;font-size:0.3rem;color:#333;">
        <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label20" xid="labelEdit1login" style="padding:0;margin:0;border-bottom:1px solid #eee;height:1.25rem;"> 
          <label class="x-label" xid="label1" style="color:#333333;padding-right:0.66rem;width:auto;"><![CDATA[手机号码]]></label>  
          <input component="$UI/system/components/justep/input/input" class="form-control x-edit form-controls" xid="mobile" placeHolder="请输入手机号" style="font-size:0.3rem;border:none;"/> 
        </div>
        <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label20" xid="labelEdit7login" style="padding:0;margin:0;border-bottom:1px solid #eee;height:1.25rem;position:relative;"> 
          <label class="x-label" xid="label7" style="color:#333333;padding-right:0.66rem;width:auto;"><![CDATA[登录密码]]></label>  
          <input component="$UI/system/components/justep/input/password" class="form-control x-edit form-controls" xid="password" style="font-size:0.3rem;border:none;" placeHolder="请输入密码" /> 
        <span xid="span10" bind-click="passwordClick" style="padding:0.2rem 0 0.2rem 0.8rem;">
   <img src="$UI/zhixin/img/passwordOpen.png" alt="" xid="image5" style="width:0.36rem;height:0.19rem;display:none;"></img>
   <img src="$UI/zhixin/img/passwordClose.png" alt="" xid="image4" style="width:0.36rem;height:0.19rem;display:block;"></img></span></div> 
      </div><div xid="div1login"> 
        <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="padding:0;height:0.8rem;margin-top:0.7rem;"> 
          <div class="x-col x-col-fixed" xid="col3" style="padding-left:0.4rem;padding-right:0.4rem;height:0.8rem;">
            
          <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label" label="登　录" xid="button6" onClick="loginBtnClick" style="background-color:#e3e3e3;font-size:0.36rem;color:#ffffff;width:100%;height:100%;"> 
                  <i xid="i6" />  
                  <span xid="span6">登　录</span>
                </a></div>  
          </div>  
         
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="margin-top:0.6rem;"> 
          <div class="x-col" xid="col10" style="padding-left:0;padding-right:0.4rem;"> 
            <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="padding:0;"> 
              <div class="x-col" xid="col13" style="padding:0;margin:0">
                <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label" label="游客登录" xid="button2" onClick="touristsLoad" style=";padding:0;padding-left:0.4rem;text-align:-webkit-left;background-color:rgba(123, 201, 61, 0);font-size:0.28rem;color:#999999;width:100%;">
   <i xid="i5"></i>
   <span xid="span4">游客登录</span></a></div>  
              <div class="x-col x-col-fixed" xid="col15" style="padding:0;margin:0;width:1px;background-color: rgba(255, 255, 255, 0.73);" />  
              <div class="x-col" xid="col16" style="padding:0;margin:0">
                <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label" label="忘记密码?" xid="button3" onClick="button1Click" style="padding:0;padding-right:0;text-align: -webkit-right;background-color: rgba(123, 201, 61, 0);font-size:0.28rem;color:#999999;width:100%;"> 
                  <i xid="i3" />  
                  <span xid="span3">忘记密码?</span>
                </a>
              </div>
            </div>
          </div>  
          </div></div></div>
        
       
    
  <div xid="div4" style="padding:0 0.4rem;margin-top:40%;">
   <img src="$UI/zhixin/img/logonbtm.png" alt="" xid="image1" style="width:100%;"></img></div><div xid="switch" style="display:none;"><h5 xid="h51" style="font-size: 15px;margin-bottom: 0px;color:#333;padding: 0px 10px;"><![CDATA[选择楼盘]]></h5><div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="switchDta" style="padding:10px;">
   <ul class="x-list-template" xid="listTemplateUl2" style="margin-bottom:0px;">
    <li xid="li2" style="margin-top:5px;margin-bottom:5px;" bind-click="li2Click" bind-visible=' val("mobile") !=""'>
     <span component="$UI/system/components/justep/button/radio" class="x-radio" xid="radio1" name="num" checked="false" bind-value='ref("state")' checkedValue="1" bind-click="radio1Click"></span>
     <span xid="span2" bind-text="val(&quot;luopan_name&quot;) +'　'+ val(&quot;danyuan_name&quot;) + val(&quot;room_no&quot;)" style="font-size:14px;margin-left:10px;"></span></li> </ul> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="padding:0;">
   <div class="x-col x-col-fixed" xid="col1" style="padding-left:40px;padding-right:40px;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label btn-block center-block" label="确认" xid="confirm"  style="background-color:#bebebe;font-size:20px;color:#ffffff;" onClick="confirmClick">
     <i xid="i4"></i>
     <span xid="span7">确认</span></a> </div> </div>
  </div>
  </div> 
  </div> 
</div>
