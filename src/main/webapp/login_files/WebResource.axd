/*---------------------------------------------------------------------------*\
|  Subject:       EpointCommon，控件通用JS函数                                |
|  Version:       1.0                                                         |
|  Author:        徐国春                                                      |
|  FileName:      EpointCommon.js                                             |
|  Created:       2009-01-09                                                  |
|  LastModified:                                                              |
\*---------------------------------------------------------------------------*/

if (typeof (Epoint_DropDownTextBox) != "object")
    var Epoint_DropDownTextBox = [];

var CurDropDownTextBoxID = "";

//根据对象的ID获取对象
function Epoint_getElementById(id) {
    var object = null;
    if (document.layers) {
        object = document.layers[id];
    }
    else if (document.all) {
        object = document.all[id];
    } else if (document.getElementById) {
        object = document.getElementById(id);
    }
    return object;
}

//根据事件获取事件的目标对象
function Epoint_getSrcElement(evnt) {
    if (epoint.browser.isIE && evnt.srcElement)
        return evnt.srcElement;
    else
        return evnt.target;
}

function Epoint_NoContextMenu() {
    event.cancelBubble = true
    event.returnValue = false;

    return false;
}

function Epoint_GetScrollTop(obj) {
    var iScrollTop = 0;
    var p = obj.parentNode;
    while (p != null) {
        if (p.tagName == 'DIV' && p.scrollTop > 0)
            iScrollTop += p.scrollTop;
        p = p.parentNode;
    }
    return iScrollTop;
}

//根据对象，获取对象绝对位置。
function EpointGetAbsoluteLocation(o) {
    return epoint.getAbsoluteLocation(o);
}


function EpointGetRelativeLocation(o) {
    if (arguments.length != 1 || o == null) {
        return null;
    }
    var nLt = 0;
    var nTp = 0;
    var elmt = o;
    var iTop = 0;
    var iLeft = 0;
    while (elmt = elmt.offsetParent) {
        // add this judge 
        try {
            iTop = parseInt(elmt.style.top, 10);
        }
        catch (e) {
            iTop = 0;
        }
        if (iTop > 0)
            break;
        if (elmt.style.position == 'relative') {
            try {
                iTop = parseInt(elmt.style.marginTop, 10);
            }
            catch (e) {
                iTop = 0;
            }
            try {
                iLeft = parseInt(elmt.style.marginLeft, 10);
            }
            catch (e) {
                iLeft = 0;
            }
            if (isNaN(iTop)) iTop = 0;
            nTp += iTop;
            if (isNaN(iLeft)) iLeft = 0;
            nLt += iLeft;
        }
        nTp += elmt.offsetTop;
        nLt += elmt.offsetLeft;
    }
    return {
        absoluteTop: nTp, absoluteLeft: nLt,
        offsetWidth: o.offsetWidth, offsetHeight: o.offsetHeight
    };
}

//通用函数，给对象移除事件
function EpointremoveEventListener(elem, evt, fn) {
    try {
        if (elem && elem.EpointremoveEventListener) {
            elem.EpointremoveEventListener(evt, fn);
            return;
        }
    } catch (ex) { }
    try {
        if (elem && elem.detachEvent)
            elem.detachEvent('on' + evt, fn);
    } catch (ex) { }
}

//通用函数，给对象添加事件
function EpointaddEventListener(elem, evtName, fn, flag) {

    try { if (elem.addEventListener) { elem.addEventListener(evtName, fn, flag == true); return; } } catch (ex) { }
    try { if (elem.attachEvent) { elem.attachEvent("on" + evtName, fn); return; } } catch (ex) { }
    eval("var old=elem.on" + evtName);
    var sF = fn.toString();
    var i = sF.indexOf("(") + 1;
    try {
        if ((typeof old == "function") && i > 10) {
            old = old.toString();
            var args = old.substring(old.indexOf("(") + 1, old.indexOf(")"));
            args = replace(args, " ", "");
            if (args.length > 0) args = args.split(",");

            old = old.substring(old.indexOf("{") + 1, old.lastIndexOf("}"));

            sF = sF.substring(9, i);
            if (old.indexOf(sF) >= 0) return;
            var s = "fn=new Function(";
            for (i = 0; i < args.length; i++) {
                if (i > 0) sF += ",";
                s += "\"" + args[i] + "\",";
                sF += args[i];
            }
            sF += ");" + old;
            eval(s + "sF)");
        }
        //alert(fn.toString());
        eval("elem.on" + evtName + "=fn");
    } catch (ex) { }
}

//根据属性名称查找指定对象内部的所有对象
function Epoint_getElementByAttr(elem, type, attr) {
    var e = elem.getElementsByTagName(type);
    if (e != null && e.length > 0) {
        for (var i = 0; i < e.length; i++)
            if (e[i].getAttribute("EpointType") == attr)
                return e[i];
    }
    return null;
}

////触发验证控件验证此控件的输入是否合法。
//function Epoint_Validator(elem) {
//    if (typeof (ValidatorOnChange) == 'function') {
//        var obj = new Object();
//        obj.srcElement = elem;
//        if (typeof (elem.Validators) == "undefined");
//        ValidatorOnLoad();
//        ValidatorOnChange(obj);
//    }
//}

//格式化日期字符串
function Epoint_FormatDate_Character(sDate, bShowLongDate, sCharacter, sFormatTime) {
    if (sDate.length > 10) {
        switch (sFormatTime) {
            case "HH":
                sDate = sDate + ":00:00";
                break;
            case "HHMM":
                sDate = sDate + ":00";
                break;
            default:
                break;
        }
    }
    sDate = Epoint_FormatDate(sDate, bShowLongDate);
    if (sCharacter == "-") {
        sDate = sDate.replace("/", "-");
        sDate = sDate.replace("/", "-");
    }

    if (sCharacter == "年") {
        sDate = sDate.replace("/", "年");
        sDate = sDate.replace("/", "月");
        if (sDate.indexOf(" ") != -1)
            sDate = sDate.replace(" ", "日 ");
        else
            sDate += "日";
    }

    if ((sDate.length > 10 && sCharacter != "年") || (sDate.length > 11 && sCharacter == "年")) {
        var aDate = sDate.split(' ');
        var aTime = aDate[1].split(':');
        switch (sFormatTime) {
            case "HH":
                return aDate[0] + " " + aTime[0];
            case "HHMM":
                return aDate[0] + " " + aTime[0] + ":" + aTime[1];
            default:
                return sDate;
        }
    }


    return sDate;
}

//格式化日期字符串
function Epoint_FormatDate(sDate, bShowLongDate) {
    while ((sDate.indexOf("-") > -1)) {
        var re = /-/i;
        sDate = sDate.replace(re, "/");
    }

    if ((sDate.indexOf("年") != -1) && (sDate.indexOf("/") == -1)) {
        sDate = sDate.replace("年", "/");
        sDate = sDate.replace("月", "/");
        sDate = sDate.replace("日", "");
    }
    if (sDate.length > 10) {
        var aDate = sDate.split(' ');
        var aDate1 = aDate[0].split('/');
        var aTime = aDate[1].split(':');
        try {
            var dScrap = new Date(parseInt(aDate1[0], 10), parseInt(aDate1[1], 10) - 1, parseInt(aDate1[2], 10), aTime[0], aTime[1], aTime[2]);

            if (dScrap == "NaN") {
                var dNow = new Date();
                return Epoint_FormatLongDate(dNow.getFullYear(), (dNow.getMonth() + 1), dNow.getDate(), bShowLongDate) + " " + Epoint_FormatTime(dNow.getHours(), dNow.getMinutes(), dNow.getSeconds());
            }
            return Epoint_FormatLongDate(dScrap.getFullYear(), (dScrap.getMonth() + 1), dScrap.getDate(), bShowLongDate) + " " + Epoint_FormatTime(dScrap.getHours(), dScrap.getMinutes(), dScrap.getSeconds());
        }
        catch (e) {
            return sScrap;
        }
    }
    else {
        var dScrap = new Date(sDate);
        if (dScrap == "NaN" || dScrap == "Invalid Date") {
            var dNow = new Date();
            return Epoint_FormatLongDate(dNow.getFullYear(), (dNow.getMonth() + 1), dNow.getDate(), bShowLongDate);
        }

        return Epoint_FormatLongDate(dScrap.getFullYear(), (dScrap.getMonth() + 1), dScrap.getDate(), bShowLongDate)
    }
}

function Epoint_FormatLongDate(iYear, iMonth, iDay, bShowLongDate) {
    var sMonth = iMonth;
    var sDay = iDay;
    if (!bShowLongDate)
        return iYear + "/" + sMonth + "/" + sDay;
    if (iMonth < 10)
        sMonth = "0" + sMonth;
    if (iDay < 10)
        sDay = "0" + sDay;
    return iYear + "/" + sMonth + "/" + sDay;
}

function Epoint_FormatTime(iHour, iMinute, iSecond) {
    var sHour = iHour;
    var sMinute = iMinute;
    var sSecond = iSecond;
    if (iHour < 10)
        sHour = "0" + sHour;
    if (iMinute < 10)
        sMinute = "0" + sMinute;
    if (iSecond < 10)
        sSecond = "0" + sSecond;
    return sHour + ":" + sMinute + ":" + sSecond;
}

function Epoint_GetRootPath() {
    try {
        return getRootPath();
    }
    catch (err) {
        var strFullPath = window.document.location.href;
        var strPath = window.document.location.pathname;
        var pos = strFullPath.indexOf(strPath);
        var prePath = strFullPath.substring(0, pos);
        var postPath = strPath.substring(0, strPath.substr(1).indexOf('/') + 1);
        return (prePath + postPath + '/');
    }
}

function Epoint_Extend(destination, source) {
    if (!source) {
        source = destination;
        destination = this;
    };
    for (var property in source) {
        destination[property] = source[property];
    }
    return destination;
};


function Init_Button(id, type, autoDisableWhenClick, validationGroup) {
    $("#" + id)
        .bind("click", function () {
            if ($(this).attr("ADWC") == "true") {
                setTimeout('$("#' + this.id + '").attr("disabled", "disabled");', 10);
                setTimeout('$("#' + this.id + '").removeAttr("disabled");', 2000);
            }
            //if(type=="delete")
            //    return confirm(raiseMsg);
        })
        .attr("validationGroup", validationGroup)
        .attr("ADWC", autoDisableWhenClick)
        .hover(
            function () {
                if (!$(this).hasClass('search'))
                    $(this).addClass($(this).attr("MouseOverClass"));
                else
                    $(this).addClass("search-over");
            },
            function () {
                if (!$(this).hasClass('search'))
                    $(this).removeClass($(this).attr("MouseOverClass"));
                else
                    $(this).removeClass("search-over");
            }
        );
}

function DeleteButton_DoPostPack(id, CausesValidation, ValidationGroup) {
    if (CausesValidation == "True" && typeof WebForm_PostBackOptions == 'function') {
        WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(id, "", CausesValidation, ValidationGroup, "", false, true));
    }
    else
        __doPostBack(id, "");
}

var TextBoxParams = [], DropDownTextboxParams = [], DateTextBoxParams = [];

$(document).ready(function () {
    for (var id in TextBoxParams)
    {
        if (!Array.prototype.hasOwnProperty(id))
        {
            Init_NormalText(TextBoxParams[id]);
        }
    }

    for (var id in DropDownTextboxParams)
    {
        if (!Array.prototype.hasOwnProperty(id)) {
            Epoint_DropDownTextBox[id] = new DropDownTextBox(DropDownTextboxParams[id]);
        }
    }
        

    for (var id in DateTextBoxParams)
    {
        if (!Array.prototype.hasOwnProperty(id)) {
            new DateTextBox(DateTextBoxParams[id]);
        }
    }

    delete TextBoxParams;

    delete DropDownTextboxParams;

    delete DateTextBoxParams;
});