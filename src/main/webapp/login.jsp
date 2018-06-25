<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><script type="text/javascript" src="login_files/jquery-1.10.2.min.js" charset="UTF-8" language="javascript"></script>
<script type="text/javascript" src="login_files/jquery.ui.js" charset="UTF-8" language="javascript"></script>
    <script type="text/javascript" src="js/ui/jquery.form.js"></script>
<script type="text/javascript" src="login_files/CommonFunction.js" charset="UTF-8" language="javascript"></script>
<script type="text/javascript" src="login_files/zDialog.js" charset="UTF-8" language="javascript"></script>
<script type="text/javascript" src="login_files/zDrag.js" charset="UTF-8" language="javascript"></script>
<script type="text/javascript" src="login_files/json2.js" charset="UTF-8" language="javascript"></script>
<script type="text/javascript" src="login_files/customerfunction.js" charset="UTF-8" language="javascript"></script>
<link href="./login_files/Main.css" rel="stylesheet">
<link href="./login_files/Css.css" rel="stylesheet">
<link id="skinCss" href="./login_files/Css(1).css" rel="stylesheet">
<title>
	登录
</title><meta http-equiv="Content-Language" content="zh-cn"><link href="./login_files/login_TP.css" rel="stylesheet">
    <script type="text/javascript" src="login_files/conver.js"></script>
    <script type="text/javascript" src="login_files/IEWarning.js"></script>
    <link href="./login_files/IEWarning.css" rel="stylesheet">
<script src="login_files/WebResource.axd" type="text/javascript" sourcecontrol="EpointCommon"></script>
<script type="text/javascript" defer="defer"> var $$ = function (id) { return (typeof (id) == 'object') ? id : document.getElementById(id); }
var ErrorMsg = "CA类型不在支持范围内"; 
var SignSn = ""; 
var EncSn = ""; 
var _Break = "true"; 
function NoThisCa() {alert(ErrorMsg);throw (new Error(-1, ErrorMsg));}
function ThrowEx(Msg) {if(_Break){alert(Msg);throw (new Error(-1, Msg));}else{}}
function EpCaObj(NeedInitializtion,NeedBreak) {if(NeedBreak != undefined){_Break=NeedBreak;} if (NeedInitializtion) {if (!this.InitClientCert()) {ThrowEx("CA证书读取异常,请先插好CA锁!");}}}
EpCaObj.prototype.CAType = '61';
EpCaObj.prototype.MacAddress = function (type) {return $$('iWebOA').GetMac(type);}
EpCaObj.prototype.IP = function () {return $$('iWebOA').GetIP();}
EpCaObj.prototype.HostName = function () {return $$('iWebOA').GetPcName();}
EpCaObj.prototype.HardID = function () {return $$('iWebOA').GetHardDeskID();}
var CertID = '';var EnCertID = '';
function GetCertID() {try{var strContainerName1=$$('oSeccom').SOF_GetUserList();var i=strContainerName1.indexOf('&&&');var strOption=strContainerName1.substring(0,i);return strContainerName=strOption.substring(strOption.indexOf('||')+2,strOption.length);}catch(ex){ThrowEx('读取锁信息出错！');}}
EpCaObj.prototype.InitClientCert = function () {return true;}
EpCaObj.prototype.ClientSignCertSN = function () {try{ var strCert=$$('oSeccom').SOF_ExportUserCert(GetCertID());if(strCert==''){alert('获取用户证书错误！')}return $$('oSeccom').SOF_GetCertInfo(strCert,2);}catch(ex){ThrowEx('读取证书序列号信息出现异常，请检查锁是否插好!');}}
EpCaObj.prototype.ClientSignCertCN = function () {try{ var strCert=$$('oSeccom').SOF_ExportUserCert(GetCertID()); return $$('oSeccom').SOF_GetCertInfo(strCert, 17)}catch(ex){ThrowEx('读取使用者信息出现异常，请检查锁是否插好!');}}
EpCaObj.prototype.SignCert = function () {try{return $$('oSeccom').SOF_ExportUserCert(GetCertID());}catch(ex){ThrowEx('读取签名证书出现异常，请检查锁是否插好!');}}
EpCaObj.prototype.EncCert = function(){try{return $$('oSeccom').SOF_ExportExChangeUserCert(GetCertID());}catch(ex){ThrowEx('读取加密证书信息出现异常，请检查锁是否插好!')}}
EpCaObj.prototype.DeviceNum = function () {try{ return $$('DJAx').GetValue('GET_KEY_SERIALNUMBER');}catch(ex){ThrowEx('读取设备唯一标识符信息出现异常，请检查锁是否插好!');}}
EpCaObj.prototype.CertSubjectKeyID = function () {return '';}
EpCaObj.prototype.QianZhangInfo =function (xh) {try{ return $$('DJAx').GetValueEx('GET_SEAL_PREDEFBMP',xh,'gif',0,'')}catch(ex){ThrowEx('读取签章信息出现异常，请检查锁是否插好!');}}
EpCaObj.prototype.CertYouXiaoQi = function () {try{var strCert=$$('oSeccom').SOF_ExportUserCert(GetCertID()); var vardate =$$('oSeccom').SOF_GetCertInfo(strCert, 12);var year = vardate.substring(0,4);var month = vardate.substring(4,6);var date =vardate.substring(6,8);return year+'-'+month+'-'+date;}catch(ex){ThrowEx('读取有效期信息出现异常，请检查锁是否插好!');}}
EpCaObj.prototype.SignData = function (OrgData) {try{ return $$('oSeccom').SOF_SignData(GetCertID(),OrgData);}catch(ex){ThrowEx('数据签名出现异常，请检查锁是否插好!')}}
EpCaObj.prototype.VerifyData = function (OrgData, SingCerInfo, SinInfo) {try{return $$('oSeccom').SOF_VerifySignedData(SingCerInfo, OrgData, SinInfo) == '1';}catch(ex){ThrowEx('数据验签出现异常!');}}
EpCaObj.prototype.SignFile = function (FilePath) {try{ var hashValue = $$('iWebOA').HashFile(FilePath);$$('oSeccom').SOF_SignData(GetCertID(),hashValue);}catch(ex){ThrowEx('数据签名出现异常，请检查锁是否插好!')}}
EpCaObj.prototype.VerifyFile = function (FilePath, SingCerInfo, SignInfo) {try{var hashValue = $$('iWebOA').HashFile(FilePath);return $$('oSeccom').SOF_VerifySignedData(SingCerInfo, hashValue, SignInfo) == '1';}catch(ex){ThrowEx('文件验签出现异常!');}}
EpCaObj.prototype.Encrypt = function (OrgData) {try{var certContent = $$('oSeccom').SOF_ExportExChangeUserCert(GetCertID());return $$('oSeccom').SOF_EncryptData(certContent,OrgData);}catch(ex){ThrowEx('加密出现异常，请检查锁是否插好!');}}
EpCaObj.prototype.Decrypt = function (JiaMiData) {try{ var rtn = $$('oSeccom').SOF_DecryptData(GetCertID(),JiaMiData); if(rtn=='') {alert('解密失败！！！');} else return rtn;}catch(ex){ThrowEx('解密过程出现异常，可能的原因：'+ex.description)}}
EpCaObj.prototype.Bfjg = function () {return 'CN = BJCA,OU = BJCA,O = BJCA,C = CN';}
EpCaObj.prototype.CheckPin = function (pwd) {return $$('iWebOA').CheckUserPin(11, pwd, '');}
EpCaObj.prototype.TimeRequest = function (OrgData) { return $$('TT').CreateTSRequest(OrgData, 0);}
EpCaObj.prototype.CreateTime = function (OrgData) { return $$('TT').CreateTS(OrgData);}
EpCaObj.prototype.VerifyTime = function (OrgData,OrgData1) { return $$('TT').VerifyTS(OrgData,OrgData1)=='0';}
EpCaObj.prototype.analysisTime = function (OrgData) { return $$('TT').GetTSInfo(OrgData,1);}
EpCaObj.prototype.analysisOrgData = function (OrgData) { return $$('TT').GetTSInfo(OrgData,2);}
 </script> 
<script src="login_files/WebResource(1).axd" type="text/javascript" sourcecontrol="EpointTextBox"></script>
</head>
<body leftmargin="0" topmargin="0" style="overflow: hidden;">
<%
    //    session.setAttribute("name","loginName");
    String usersession = (String) session.getAttribute("usersession");
%>
<%--欢迎您：<%=usersession%>--%>
<script type="text/javascript">
        $(function () {
            if("<%=usersession%>" != "null" ){
                location.href = '/admin/toHome.do';
            }
            init();
            $("#password").keypress(function (e) {
                var c = e.keyCode || e.which;
                var s = e.shiftKey;
                if (((c >= 65 && c <= 90) && !s) || ((c >= 97 && c <= 122) && s)) {
                    $('#login_password_error').css("display", "block");
                    $('#login_password_error').html($("#capslockopen").html());
                }
                else {
                    $('#login_password_error').css("display", "none");
                }
            });
        });

        function hideInfo() {
            $('#login_password_error').css("display", "none");
        }

        function init() {
            $(".LoginMain").height($(document).height());
            $("#UpdatePanel2").height('100%');
            $(window).resize(function () {
                $(".LoginMain").height($(document).height());
            });

            $(".logininfo").click(function () {
                $(this).next().find("INPUT").focus();
            });
            $(".input").find("INPUT")
                .focus(function () {
//                    $(this).parent().prev().hide();
                })
                .keypress(function () {
                    $(this).parent().prev().hide();
                })
                .blur(function () {
                    if ($(this).val().trim() == "") {
                        $(this).val("").parent().prev().show();
                    }
                    else
                        $(this).parent().prev().hide();
                })
            setTimeout(function () { _checkInput(); }, 500);

            function _checkInput() {
                $(".input").find("INPUT").each(function () {
                    if ($(this).val().trim() == "")
                        $(this).val("").prev().show();
                    else
                        $(this).prev().hide();
                })
            }

            $(".LoginType").children().click(function () {
                document.getElementById("usbkeycode").value = "";
                var choseindex = $(this).index();
                $(".LoginType").children().each(function () {
                    if ($(this).index() == choseindex) {
                        $(this).removeClass("UnActiveTab");
                        $(this).addClass("ActiveTab");
                    }
                    else {
                        $(this).removeClass("ActiveTab");
                        $(this).addClass("UnActiveTab");
                    }
                });

                if ($(this).index() == 0) {
                    $(".loginid").show();
                    $("#Container").height(290);
                    if ($("#password").value != "") {
                        $("#password").focus();
                    }
                    else {
                        $("#username").focus();
                    }
                }
                else {
                    var obj = new EpCaObj(true);
                    $("#username").val(obj.ClientSignCertCN())
                    $("#Container").height(220);
                    $("#username").focus();
                }
            });
            }
    </script>



<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['Form1'];
if (!theForm) {
    theForm = document.Form1;
}

//]]>
</script>


<script src="login_files/WebResource(2).axd" type="text/javascript"></script>

<script src="login_files/ScriptResource.axd" type="text/javascript"></script>
<script src="login_files/ScriptResource(1).axd" type="text/javascript"></script>
<script src="login_files/MicrosoftAjax4.js" type="text/javascript"></script>
<script src="login_files/MicrosoftAjaxWebForms4.js" type="text/javascript"></script>
<script type="text/javascript">
//<![CDATA[

//]]>
</script>

<div>

	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAAtA10dapb8Gpunmb/tRXrvwEVY5u54TgWwyd97xcy3QiqUyVhErd+Q+WA5NmkAG8aG7uf+mGOLRGpOtBg7mGmNnr/mBQWjGf8X+aqb387iRrn+It9Ifo1lfmzwOIIGaW1nkXVs84NlnabZFTCCWmioAgPPljozsGPwprDBn4pNMpmN6ZYJNGAQHn0c9zMgZU3Az0pbtemMeEG4g1PnXXStToB1sXhjFVfRWXiyFQITYSNQbP6YqxU2tEFbSK4JToex1sKhI">
</div>
        <script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('ScriptManager1', 'Form1', ['tUpdatePanel2',''], [], [], 90, '');
//]]>
</script>

        <div id="UpdatePanel2" style="height: 100%;">
	
                <div style="display: none">

                    <span id="EpCa1"><div><object classid="clsid:219D9F1F-DE00-4C5C-82E9-E8CBAA79CB6D" width="0" height="0" id="iWebOA" codebase=""></object><object classid="clsid:FF1FE7A0-0578-4FEE-A34E-FB21B277D561" height="0" width="0" id="DJAx"></object>
<object classid="clsid:3F367B74-92D9-4C5E-AB93-234F8A91D5E6" height="0" width="0" id="oSeccom"></object>
<object classid="clsid:9EB69914-8BCD-49F0-A3BB-F1A33B41FD79" height="0" width="0" id="TT"></object>
<script type="text/javascript">
            function ReadBlueKey(){
                try {
                    var aObject = new ActiveXObject('Syunew3A.s_simnew3');
                    var DevicePath = aObject.FindPort(0);
                    if (aObject.LastError != '') {
                        epoint.dialog.alert('未发现加密锁(或加密锁驱动未安装)，请插入加密锁或重新安装驱动!');
                        return '';
                    }
                    var a = aObject.GetID_1(DevicePath);
                    var b = aObject.GetID_2(DevicePath);
                    return hex(a) + hex(b);
                } catch (ex) {
                    epoint.dialog.alert('读取加密锁报错：' + ex.message + '（可能是未安装加密锁驱动）');
                    return '';
                }
            }
            //模拟vbscript中的hex算法
            function hex(number) {
                if (number < 0) {
                    number = 0xFFFFFFFF + number + 1;
                }
                return number.toString(16).toUpperCase();
            }
            </script></div></span>
                </div>
                <div class="LoginMain" style="height: 710px;">
                    <div id="divLoginCenter" class="LoginCenter">
                        <div class="body">
                            <div class="SystemName"></div>
                            <div class="LoginWrapper" id="LoginWrapper">
                                <div class="LoginContainer" id="Container">
                                    <div id="divLoginType" class="LoginType">
                                        <div class="ActiveTab Pos1" id="userLogin">
                                            用户名登录
                                        </div>
                                    </div>
                                    <div class="AutoHeight" id="AutoHeight">
                                        <div class="input">
                                            <form name="Form1"  id="Form1" action="/admin/login.do" method="post" >

                                            <div class="loginid">
                                                <div class="logininfo">请输入用户名</div>
                                                <div class="TextboxContainer">
		<input name="username" type="text" id="username" tabindex="1" class="inputtxt"><div class="clearboth">

		</div>
	</div>
                                            </div>
                                            <div class="password">
                                                <div class="logininfo" style="display: block;">请输入密码</div>
                                                <div class="TextboxContainer">
		<input name="password" type="password" id="password" tabindex="2" class="inputtxt" ><div class="clearboth">

		</div>
	</div>
                                                <span class="error" id="login_password_error" style="display: none"></span>
                                                <span id="capslockopen" class="error" style="display: none;">
                                                    <b>大写锁定已打开</b></span>
                                            </div>

                                                <div class="loginid">
                                                    <div class="logininfo">验证码</div>
                                                    <div class="TextboxContainer">
                                                        <input name="validcode" maxlength="6" type="text" id="validcode" tabindex="1" class="inputtxt" style="width:100px;">
                                                        <img id="validImg" style="height: 40px;width:150px;margin-top:10px;cursor:pointer;" alt="验证码" src="/noAuthority/getValidCode.do" onclick="validCodeImageChanged(this);" />
                                                        <div class="clearboth"></div>
                                                    </div>
                                                </div>
                                            </form>
                                            <div class="button">
                                                <input class="EpointButton" type="submit" name="Imagebutton1" value="" onclick="return checkMes();" id="Imagebutton1" tabindex="3" onfocus="if(this.blur)this.blur();" mouseoverclass="button-over" validationgroup="" adwc="true"></div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="bottom">
                            <div class="Support1">
                                版权所有北京软件和信息服务交易所 京ICP证XXXXXX 京公网安备 110108020XXXXX号
                            </div>
                            <div class="Support2">
                                Copyright©2017 Beijing Software and Information Services Exchange Co.,Ltd All Rights Resrved
                            </div>
                            <div class="Support3">
                            </div>
                        </div>
                    </div>
                </div>
                </div>
            

    

<script type="text/javascript">
//<![CDATA[
TextBoxParams["username"]={Id:"username"};TextBoxParams["password"]={Id:"password"};Init_Button('Imagebutton1','normal',true,'');//]]>
</script>
</form>
    <script type="text/javascript" defer="defer">
        function checkMes() {
            var obj = '';
//            document.getElementById("txtClientTime").value = bzb.DateTime.GetCurrentTime();

            try {
                if ($("#userLogin").hasClass("ActiveTab")) {
                    obj = new EpCaObj(false);
                    var uname = document.getElementById("username").value;
                    if (uname == '') {
                        epoint.dialog.warn('系统不能完成您的登录请求，请输入用户名!');
                        return false;
                    }
                }

                var pwd = document.getElementById("password").value;
                if (pwd == '') {
                    epoint.dialog.warn('系统不能完成您的登录请求，请输入密码!');
                    return false;
                }
                var options = {
                    url: '/admin/login.do',
                    type: 'POST',
                    dataType: 'script',
                    resetForm: false,
                    success: function(msg) {
                        if (msg == '2') {
                            if(window.parent != null){
                                window.parent.location.href = '/admin/toHome.do';}
                        }
                       else if (msg == '1') {
                            epoint.dialog.warn('用户名或密码或验证码输入错误！');
                        }
                        /* else if (msg == '3') {
                          alert('验证码输入错误！');
                          $("#img").attr("src", '../servlet/GetImgNumber?s=' + Math.random());
                        } */
                        else if(msg == '3'){
                            epoint.dialog.warn('用户名或密码或验证码输入错误！');
                        }
                        else {
                            epoint.dialog.warn('用户名或密码或验证码输入错误！');
                        }

                        validCodeImageChanged($("#validImg").get(0));

                    },
                    error: function () {
                        epoint.dialog.warn('用户名或密码或验证码输入错误！');
                        validCodeImageChanged($("#validImg").get(0));
                    }
                };
                $('#Form1').ajaxSubmit(options);
            }
            catch (ex) {
            }
            return true;
        }
    </script>
    <script type="text/javascript">
        function focus() {
            if (document.getElementById("username") != "") {
                document.getElementById("password").focus();
            }
            else {
                document.getElementById("username").focus();
            }
        }
        focus();


        function validCodeImageChanged(img){
            var newImg = "/noAuthority/getValidCode.do" + "?t=" + new Date().getTime();
            $(img).attr("src", newImg);
        }


    </script>


</body></html>