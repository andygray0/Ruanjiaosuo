if (typeof (Epoint_TextBox) != "object")
    var Epoint_TextBox = [];

var Epoint_A_TextBox = new Array();
var Epoint_A_TextBoxCount = 0;

var Epoint_MessageTimer;
var Epoint_MessageHasShow = false;
var Epoint_IsValidInput = false;
//获取焦点光标所在的位置，1:最后 2 最前 3 字符串全选
var SelectionFocus = 1;


function Init_NormalText(param) {
    var id = param.Id;
    param.Element = Epoint_getElementById(param.Id);
    var textbox = Epoint_TextBox[id] = new TextBox(param);
    Epoint_A_TextBox[Epoint_A_TextBoxCount++] = id;

    // Returns the number of selected characters in 
    // the specified element
    //
    function GetSelectionLength(elem) {
        if (elem.selectionStart == undefined) {
            return document.selection.createRange().text.length;
        }
        else {
            return (elem.selectionEnd - elem.selectionStart);
        }
    }

    if (textbox.MultiLine && textbox.MaxLength > 0) {
        textbox.$Element.bind("keydown", function (evt) {
            var isPermittedKeystroke;
            var enteredKeystroke;
            var currentFieldLength;
            var inputAllowed = true;
            var selectionLength = parseInt(GetSelectionLength(this), 10);
            // Get the current and maximum field length
            currentFieldLength = parseInt(this.value.length, 10);

            // Allow non-printing, arrow and delete keys
            enteredKeystroke = window.event ? evt.keyCode : evt.which;
            isPermittedKeystroke = ((enteredKeystroke < 32)
                         || (enteredKeystroke >= 33 && enteredKeystroke <= 40)
                         || (enteredKeystroke == 46))

            // Decide whether the keystroke is allowed to proceed
            if (!isPermittedKeystroke) {
                if ((currentFieldLength - selectionLength) >= textbox.MaxLength)
                    inputAllowed = false;
            }

            // Force a trim of the textarea contents if necessary
            if (currentFieldLength > textbox.MaxLength)
                this.value = this.value.substring(0, textbox.MaxLength)

            evt.returnValue = inputAllowed;
            return (inputAllowed);
        })
        .bind("paste", function (e) {
            var clipboardText;
            var resultantLength;
            var currentFieldLength;
            var pasteAllowed = true;
            var evt = e.originalEvent;
            var selectionLength = parseInt(GetSelectionLength(this), 10);
            // Get the current and maximum field length
            currentFieldLength = parseInt(this.value.length, 10);
            clipboardText = clipboardData.getData('text');

            //如果当前已经达到最大值，则不允许复制进入
            if (currentFieldLength == textbox.MaxLength)
                return false;

            if (clipboardText.length + currentFieldLength > textbox.MaxLength) {
                var trunckClipboard = clipboardText.substring(0, textbox.MaxLength - currentFieldLength);
                var o = this.document.selection.createRange();
                o.text = trunckClipboard;
                pasteAllowed = false;
            }

            evt.returnValue = pasteAllowed;
            return (pasteAllowed);
        })
        .bind("dragenter", function (e) {
            var clipboardText;
            var resultantLength;
            var currentFieldLength;
            var dragAllowed = true;
            var evt = e.originalEvent;
            var selectionLength = parseInt(GetSelectionLength(this), 10);
            // Get the current and maximum field length
            currentFieldLength = parseInt(this.value.length, 10);
            dragText = evt.dataTransfer.getData('text');
            //如果当前已经达到最大值，则不允许复制进入
            if (currentFieldLength == textbox.MaxLength)
                return false;

            if (dragText.length + currentFieldLength > textbox.MaxLength) {
                evt.dataTransfer.setData('text', dragText.substring(0, textbox.MaxLength - currentFieldLength));
            }
            evt.returnValue = dragAllowed;
            return (dragAllowed);
        });
    }
    else
    {
        //禁止回车提交表单
        if (textbox.MultiLine == false && textbox.IsRespondEnter == false) {
            textbox.$Element.bind("keydown", function (evt) {
                var enteredKeystroke;
                enteredKeystroke = window.event ? evt.keyCode : evt.which;
                if (enteredKeystroke == 13)
                    return false;
            });
        }
    }
}

///构造普通TextBox对象
//id, type, selecttype, msg, elem, allowSBC, allowSBCPoint, allowSBCNum, sForbiddenChar, sNextText
function TextBox(param) {
    param.ToolTipOpt = { tipPos: 3, arrowPos: 2, width: 200, height: 18, offsetX: 0, offsetY: 0 } || param.ToolTipOpt;
    var p = {
        Id: "", Msg: "", Type: "normal", Element: null, SelectType: "Normal", DefaultMask: "",
        AllowNull: true, AllowSBC: true, AllowSBCPoint: true, AllowSBCNum: true, AllowSBCNum: true,
        ForbiddenChar: "", PreText: "", NextText: "", MaxLength: 0, ShowMessageType: 2, MultiLine: false, EnableToolTip: true,
        ToolTipOpt: null, IsInTextTreeView: false,IsRespondEnter:false
    }
    $.extend(this, p, param);
    this.$Element = $(this.Element);
    this.ForbiddenChar = unescape(this.ForbiddenChar);
    this.bindEvent();
    this.InitReqMessage();
    this.InitMask();
}

TextBox.prototype.bindEvent = function () {
    var that = this;
    switch (this.SelectType) {
        case "CaretToBeginning":
            this.$Element.bind("focus", function () {
                var r = this.createTextRange();
                r.moveEnd("character", this.value.length);
                r.collapse(true);
                r.select();
            });
            break;
        case "SelectAll":
            this.$Element.bind("focus", function () {
                if (elem.type == "text") {
                    elem.select();
                }
            });
            break;
        case "CaretToEnd":
            this.$Element.bind("focus", function () {
                var r = this.createTextRange();
                r.moveStart("character", this.value.length);
                r.collapse(true);
                r.select();
            });
            break;
        case "Normal":
            //当获取焦点时，隐藏验证控件
            this.$Element.bind("focus", function () {
                that.$Element.nextAll(".epoint-validator").hide();
            });
            break;
    }

    function FormatFullToHalfChar(strOld) {
        var DBCStr = "";
        //alert('1111');   
        for (var i = 0; i < strOld.length; i++) {
            var c = strOld.charCodeAt(i);
            if (c == 12288) {
                DBCStr += String.fromCharCode(32);
                continue;
            }
            if (c > 65280 && c < 65375) {
                DBCStr += String.fromCharCode(c - 65248);
                continue;
            }
            DBCStr += String.fromCharCode(c);
        }
        return DBCStr;

    }

    function FormatFullToHalfPoint(strOld) {
        strOld = strOld.replaceAll("－", "-");
        strOld = strOld.replaceAll("—", "-");
        strOld = strOld.replaceAll("（", "(");
        strOld = strOld.replaceAll("）", ")");
        strOld = strOld.replaceAll("［", "[");
        strOld = strOld.replaceAll("］", "]");
        strOld = strOld.replaceAll("【", "[");
        strOld = strOld.replaceAll("】", "]");
        return strOld;
    }

    function FormatFullToHalfNum(strOld) {
        strOld = strOld.replaceAll("１", "1");
        strOld = strOld.replaceAll("２", "2");
        strOld = strOld.replaceAll("３", "3");
        strOld = strOld.replaceAll("４", "4");
        strOld = strOld.replaceAll("５", "5");
        strOld = strOld.replaceAll("６", "6");
        strOld = strOld.replaceAll("７", "7");
        strOld = strOld.replaceAll("８", "8");
        strOld = strOld.replaceAll("９", "9");
        strOld = strOld.replaceAll("０", "0");
        return strOld;
    }

    this.$Element.bind("focus", function () {
        var str = this.value;
        if (that.Type == "money") {
            str = str.replace(that.MoneyChar, "")
            str = epoint.math.takeout(str);
        }
        else if (that.Type != "normal")
            str = epoint.math.takeout(str);
        if (str != this.value) {
            this.value = str;
            if (that.SelectType == "Normal") {
                var r = this.createTextRange();
                r.moveStart("character", this.value.length);
                r.collapse(true);
                r.select();
            }
        }
    }).bind("beforepaste", function () {
        var msg = "";
        var str1 = "";
        try {
            str1 = clipboardData.getData('text');
        }
        catch (ex) {
            return;
        }
        if (str1 == null || str1 == "") return;
        if (that.ForbiddenChar != null && that.ForbiddenChar != "") {
            var aForbidden = that.ForbiddenChar.split(';');
            for (var i = 0; i < aForbidden.length; i++)
                if (aForbidden[i] == "\\")
                    aForbidden[i] = "\\" + "\\";
            for (var i = 0; i < aForbidden.length; i++)
                str1 = str1.replaceAll(aForbidden[i], '');
        }

        if (that.ForbiddenChar != null && that.ForbiddenChar != "") {
            var aForbidden = that.ForbiddenChar.split(';');
            for (var i = 0; i < aForbidden.length; i++)
                if (aForbidden[i] == "\\")
                    aForbidden[i] = "\\" + "\\";
            for (var i = 0; i < aForbidden.length; i++)
                str1 = str1.replaceAll(aForbidden[i], '');
        }

        if (that.MaxLength != 0 && str1.length > that.MaxLength) {
            str1 = str1.substring(0, that.MaxLength);
            msg = "最多只能输入" + that.MaxLength + "个字符！";
        }
        clipboardData.setData('text', str1)
        if (msg != "")
            that.showMessage(msg);
    }).bind("blur", function () {
        this.value = this.value.trim();
        if (!that.AllowSBC)
            this.value = FormatFullToHalfChar(this.value);
        else {
            if (!that.AllowSBCPoint)
                this.value = FormatFullToHalfPoint(this.value);
            if (!that.AllowSBCNum)
                this.value = FormatFullToHalfNum(this.value);
        }
        if (!that.AllowNull && this.value == "") {
            that.showMessage("必填！");
            return;
        }
    }).bind("keyup", function () {
        var aForbidden = that.ForbiddenChar.split(';');
        var val = this.value;
        var val1 = this.value;
        for (var i = 0; i < aForbidden.length; i++)
            if (aForbidden[i] == "\\")
                aForbidden[i] = "\\" + "\\";
        for (var i = 0; i < aForbidden.length; i++)
            val = val.replaceAll(aForbidden[i], '');

        if (!that.AllowSBC)
            val = FormatFullToHalfChar(val);
        else {
            if (!that.AllowSBCPoint)
                val = FormatFullToHalfPoint(val);
            if (!that.AllowSBCNum)
                val = FormatFullToHalfNum(val);
        }
        if (val1 != val)
            this.value = val;
    }).bind("change", function () {
        var aForbidden = that.ForbiddenChar.split(';');
        var val = this.value;
        var val1 = this.value;
        for (var i = 0; i < aForbidden.length; i++)
            if (aForbidden[i] == "\\")
                aForbidden[i] = "\\" + "\\";
        for (var i = 0; i < aForbidden.length; i++)
            val = val.replaceAll(aForbidden[i], '');

        if (!that.AllowSBC)
            val = FormatFullToHalfChar(val);
        else {
            if (!that.AllowSBCPoint)
                val = FormatFullToHalfPoint(val);
            if (!that.AllowSBCNum)
                val = FormatFullToHalfNum(val);
        }
        if (val1 != val)
            this.value = val;
    }).bind("keypress", function (e) {
        var aForbidden = that.ForbiddenChar.split(';');
        var code = e.keyCode;
        if (code == null || code == 0)
            code = evt.charCode;
        if (code == 32) { return; }
        if (code == 13) { return; }
        if (code == 27) { return; }
        if (code == 16) { return; }
        if (code == 17) { return; }
        if (code == 18) { return; }
        var realkey = String.fromCharCode(code);
        for (var i = 0; i < aForbidden.length; i++)
            if (aForbidden[i] == "\\")
                aForbidden[i] = "\\" + "\\";
        for (var i = 0; i < aForbidden.length; i++)
            if (aForbidden[i] == realkey)
                event.returnValue = false;
        var val = this.value;
        var val1 = this.value;

        if (!that.AllowSBC)
            val = FormatFullToHalfChar(val);
        else {
            if (!that.AllowSBCPoint)
                val = FormatFullToHalfPoint(val);
            if (!that.AllowSBCNum)
                val = FormatFullToHalfNum(val);
        }

        if (val1 != val)
            this.value = val;
    });
}

TextBox.prototype.InitReqMessage = function () {
    if (this.$Element.nextAll(".epoint-validator").length == 0 ||
        this.$Element.parent().hasClass("DropDown") ||
        this.$Element.parent().hasClass("CalenderInner") ||
        this.IsInTextTreeView)
        return;
    var that = this;
    var isInTable = this.$Element.parent().parent().hasClass("TextboxTable");
    var pw = this.$Element.parent().prev().outerWidth(true);
    var marginL = parseInt(this.$Element.parent().css("margin-left"));
    var t = isInTable ? epoint.browser.ielt8 ? 0 : 5 : this.$Element.css("border-top-width");
    var l = isInTable ? (epoint.browser.ielt8 ? 0 : (epoint.browser.ielt9 ? pw : pw + 1)) : 0;
    if (isInTable && this.$Element[0].style.width != "" && !epoint.browser.ielt8) {
        l += marginL;
        if (epoint.browser.ielt9)
            l++;
    }
    if (isInTable && this.$Element[0].style.width != "" && !epoint.browser.ielt8)
        l += marginL;
    this.$Element.nextAll(".epoint-validator").css({
        top: t,
        left: l,
        width: this.$Element.width() - 2,//(isInTable && epoint.browser.ielt8 && this.$Element[0].style.width != "" ? 7 : 2),
        height: this.$Element.height()
    })
    .click(function (event) { $(this).hide(); that.$Element.focus(); });
}

TextBox.prototype.InitMask = function () {
    if (this.DefaultMask == "") return;
    var that = this;
    var pos = EpointGetAbsoluteLocation(this.Element);
    var that = this;
    var $p = this.$Element
        .bind("blur", function () {
            if (this.value == "")
                that.$defaultMask.show();
        })
        .bind("focus", function () {
            that.$defaultMask.hide();
        })
        .parent();
    var t = 1 + ($p.css("position") == "relative" ? parseInt($p.css("padding-top")) : pos.top);
    var l = 1 + ($p.css("position") == "relative" ? parseInt($p.css("padding-left")) : pos.left);
    this.$defaultMask = $("<div class='defaultMask'></div>").attr("id", this.Id + "_DefaultMask")
        .css({ top: t, left: l, width: this.$Element.width(), height: this.$Element.height() })
        .html(this.DefaultMask)
        .appendTo($p).click(function () {
            that.$Element.focus();
        });

    //修复兼容模式下 获取焦点但defaultMask没有隐藏的问题
    if (this.$Element.val() != "" || this.$Element[0].id == document.activeElement.id)
        this.$defaultMask.hide();
}

TextBox.prototype.showMessage = function (msg) {
    //不提示
    if (this.ShowMessageType == 0)
        return;
    var that = this;
    var $msg = $("#" + this.Id + "_Message");
    var $p = this.$Element.parent();
    //Div
    var pos = EpointGetAbsoluteLocation(this.Element);
    var t = 1 + ($p.css("position") == "relative" ? parseInt($p.css("padding-top")) : pos.top);
    var l = 1 + ($p.css("position") == "relative" ? parseInt($p.css("padding-left")) : pos.left);
    if ($msg.length == 0)
        $msg = $("<div id='" + this.Id + "_Message' class='EpointMessage'>").appendTo($p);
    $msg.html("<div class='EpointMessageContent'><img style='vertical-align:middle;' src='" + epoint.getRootPath() + "images/ErrorInfo.gif' /><span class='EpointMessageInfo'>" + this.Msg.replaceAll("\n", "<br>") + msg + "</span></div>")
        .css({ opacity: 1 });
    $msg.css({ top: t - $msg.height() - 6, left: l - 6 }).show();
    setTimeout(function () {
        $msg.animate({ opacity: 0 }, 2500, function () {
            $msg.hide();
        });
    }, 1000);
    return false;
}


//普通文本框的失去焦点的验证函数
TextBox.prototype.CheckSelf = function () {
    this.Element.value = this.Element.value.trim();
    if (this.MaxLength != 0 && this.Element.value.getLength() > this.MaxLength) {
        alert(this.Msg + "最多只能输入" + this.MaxLength + "个字符！");
        this.Element.focus;
        this.Element.select();
        return false;
    }
    if (!this.AllowNull && this.Element.value == "") {
        alert(this.Msg + "必填！");
        this.Element.focus;
        this.Element.select();
        return false;
    }
    return true;
}

TextBox.prototype.SetText = function (str) {
    this.$Element.nextAll(".epoint-validator").hide();
    this.$Element.val(str);
}

TextBox.prototype.setEnabled = function (enable) {
    if (enable === true)
        this.$Element.attr("disabled", null).parent().removeClass("EpointDisable");
    else {
        var $p = this.$Element.attr("disabled", "true").parent()
        if (!$p.hasClass("EpointDisable"))
            $p.addClass("EpointDisable");
    }
}

///初始化TextBox对象，分为numeric,int,money,rate四种类型
function Init_NumericTextBox(param) {
    var id = param.Id;
    param.Element = Epoint_getElementById(param.Id);
    Epoint_TextBox[id] = new NumericTextBox(param);
    Epoint_A_TextBox[Epoint_A_TextBoxCount++] = id;
}

function NumericTextBox(param) {
    var p = {
        ZeroValue: 0, ShowCharact: true, ShowMoneyChar: false, MoneyChar: "￥",Precision: 0
    };
    $.extend(this, new TextBox(param), p, param);
    this.ForbiddenChar = "";
    var that = this;
    switch (this.Type.toLowerCase()) {
        case "numeric":
        case "money":
            this.$Element.numeric('.');
            break;
        case "int":
            this.$Element.numeric(false, function () {
                that.showMessage("只能输入数字！");
            });
            break;
    }
}

//根据精度，四舍五入,然后加分节符
NumericTextBox.prototype.format = function () {
    function removeAnothZero(elem) {
        //去除多余的0;
        var aValue = elem.value.replace(/,/g, '').split('.');
        if (aValue[0] == "")
            aValue[0] = 0;
        aValue[0] = parseInt(aValue[0], 10);
        if (aValue.length > 1) {
            if (aValue[1] == "")
                aValue[1] = 0;
            while (aValue[1].length > 1 && aValue[1].substr(aValue[1].length - 1) == "0") {
                aValue[1] = aValue[1].substr(0, aValue[1].length - 1);
            }
        }

        //修正 -1到0时的转换成正数的BUG
        if (elem.value < 0 && aValue.join('.') > 0)
            aValue[0] = aValue.join('.') * -1;
        else
            elem.value = aValue.join('.');
    }
    var elem = this.Element;
    if (this.Type != "int")
        removeAnothZero(elem);
    //this.Precision!=0 有效
    if (this.Precision != 0)
        elem.value = epoint.math.round(elem.value, this.Precision);
    switch (this.Type) {
        case "money":
            var val = epoint.math.commafy(elem.value, this.ShowCharact);
            this.MoneyChar, this.ShowMoneyChar,
            elem.value = this.ShowMoneyChar ? this.MoneyChar + val : val;
            break;
        case "numeric":
        case "int":
            elem.value = epoint.math.commafy(elem.value, this.ShowCharact);
            break;
        case "rate":
            elem.value = epoint.math.commafy(elem.value, this.ShowCharact) + "%";
            break;
    }
}


function Init_SpecialTextBox(param) {
    var id = param.Id;
    param.Element = Epoint_getElementById(param.Id);
    Epoint_TextBox[id] = new SpecialTextBox(param);
    Epoint_A_TextBox[Epoint_A_TextBoxCount++] = id;
}

function SpecialTextBox(param) {
    var p = {
        SpecialType: "", MaxLength: null, AllowNull: true, CheckSelf: true, ShowMessageType: 2
    };
    $.extend(this, new TextBox(param), p, param);
    EpointaddEventListener(param.Element, "blur", SpecialTextBlur, true);
    EpointaddEventListener(param.Element, "keypress", CheckIsForbiddenCharKeyPress, true);
}


//SpecialTextBlur 失去焦点时触发的js事件
function SpecialTextBlur(evt) {
    if (evt == null) evt = window.event;
    if (evt != null) {
        var elem = evt.srcElement;
        if (elem == null)
            if ((elem = evt.target) == null)
                elem = this;
        CheckSpecialTextBox(elem.id);
    }
}

///id:文本框ID
function CheckSpecialTextBox(id) {
    var text = Epoint_TextBox[id];
    var elem = text.Element;
    if (elem.value == "") return true;
    elem.value = elem.value.trim();
    var regExp;
    switch (text.SpecialType) {
        case "Email":
            regExp = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/
            if (!elem.value.match(regExp)) {
                text.showMessage('请输入准确的Email地址！');
                return false;
            }
            break;
        case "IdentityCard":
            var info = Epoint_CheckIdcard(elem.value);
            if (info != "") {
                text.showMessage(info);
                return false;
            }
            break;
        case "PassPort":
            regExp = /(P\d{7})|(G\d{8})/;
            if (!elem.value.match(regExp)) {
                text.showMessage('请输入准确的护照号！');
                return false;
            }
            break;
        case "PostCode":
            regExp = /^[1-9]\d{5}$/
            if (!elem.value.match(regExp)) {
                text.showMessage('请输入准确的邮编！');
                return false;
            }
            break;
        case "Mobile":
            var reg0 = /^13\d{9}$/;
            var reg1 = /^15\d{9}$/;
            var reg2 = /^18\d{9}$/;
            var reg3 = /^0\d{10,11}$/;
            var my = false;
            if (reg0.test(elem.value)) my = true;
            if (reg1.test(elem.value)) my = true;
            if (reg2.test(elem.value)) my = true;
            if (reg3.test(elem.value)) my = true;
            if (!my) {
                text.showMessage('请输入准确的手机号码！');
                return false;
            }
            break;
    }
    return true;
}

function ValidateEmail(val, args) {
    var regExp = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
    args.IsValid = args.Value.match(regExp);
}

function ValidateIndentyCard(val, args) {
    args.IsValid = Epoint_CheckIdcard(args.Value) == "";
}

function ValidateMobile(val, args) {
    var mobile = /^1(([3|5|8]\d{9})|([4|7][0|7]\d{8}))$/, phone = /^0\d{2,3}-?\d{7,8}$/, phone2 = /^\d{7,8}$/;
    args.IsValid = mobile.test(args.Value) || phone.test(args.Value) || phone2.test(args.Value);
}

function ValidatePostCode(val, args) {
    var regExp = /^[0-9]\d{5}$/;
    args.IsValid = args.Value.match(regExp);
}

function ValidateOrgCode(val, args) {
    var regExp = /^[A-Z0-9]{8}-[A-Z0-9]$/;
    var regExp2 = /^[A-Z0-9]{9}$/;//三证合一后新的组织机构代码
    args.IsValid = (args.Value.match(regExp) || args.Value.match(regExp2) || ValidateSocialCredit(args.Value));//增加社会信用代码验证
}

//社会信用代码验证
function ValidateSocialCredit(code){
    code = code.toUpperCase().trim();
    var code_array = new Array();
    code_array = code.split("");
    var ou = { "0": 0, "1": 1, "2": 2, "3": 3, "4": 4, "5": 5, "6": 6, "7": 7, "8": 8, "9": 9, "A": 10, "B": 11, "C": 12, "D": 13, "E": 14, "F": 15, "G": 16, "H": 17, "J": 18, "K": 19, "L": 20, "M": 21, "N": 22, "P": 23, "Q": 24, "R": 25, "T": 26, "U": 27, "W": 28, "X": 29, "Y": 30};
    var weight = [1, 3, 9, 27, 19, 26, 16, 17, 20, 29, 25, 13, 8, 24, 10, 30, 28];
    ereg = /^(([1|6|9]([1-3]|9]))|(([2-5]|7|8|[A-G]|Y)1))([A-Z]|[0-9]){16}$/;
    if (ereg.test(code)) {
        var sum = 0;
        //计算校验位
        for (i = 0; i < 17; i++)
        {
            sum += ou[code_array[i]] * weight[i]
        }
     
        var mod = sum % 31;
        //判断校验位
        if ((ou[code_array[17]] == 0 && mod == 0)  || (ou[code_array[17]] == 31 - mod))
            return true;
    }
   
    return false;
}

function ValidatePassPort(val, args) {
    var regExp = /(P\d{7})|(G\d{8})/;
    args.IsValid = args.Value.match(regExp);
}

///验证身份证是否有效
function Epoint_CheckIdcard(idcard) {
    idcard = idcard.trim();
    var Errors = new Array(
    "",
    "身份证号码位数不对!",
    "身份证号码出生日期超出范围或含有非法字符!",
    "身份证号码校验错误!",
    "身份证地区非法!"
    );
    var area = { 11: "北京", 12: "天津", 13: "河北", 14: "山西", 15: "内蒙古", 21: "辽宁", 22: "吉林", 23: "黑龙江", 31: "上海", 32: "江苏", 33: "浙江", 34: "安徽", 35: "福建", 36: "江西", 37: "山东", 41: "河南", 42: "湖北", 43: "湖南", 44: "广东", 45: "广西", 46: "海南", 50: "重庆", 51: "四川", 52: "贵州", 53: "云南", 54: "西藏", 61: "陕西", 62: "甘肃", 63: "青海", 64: "宁夏", 65: "新疆", 71: "台湾", 81: "香港", 82: "澳门", 91: "国外" }

    var Y, JYM;
    var S, M;
    var idcard_array = new Array();
    idcard_array = idcard.split("");
    //地区检验
    if (area[parseInt(idcard.substr(0, 2))] == null)
    {
        if (idcard.length != 10 && idcard.length != 8) {
            return Errors[4];
        }
    }
        
    //身份号码位数及格式检验
    switch (idcard.length) {
        case 8:
            ereg_xg = /^[A-Za-z][0-9]{6}([0-9]|[aA])$/; //香港身份证合法性
            ereg_am = /^[157][0-9]{7}$/; //澳门身份证合法性
            if (ereg_xg.test(idcard)) {
                var area = parseInt(idcard_array[0].toUpperCase().charCodeAt()) - 64;
                S = area * 8
                   + parseInt(idcard_array[1]) * 7
                   + parseInt(idcard_array[2]) * 6
                   + parseInt(idcard_array[3]) * 5
                   + parseInt(idcard_array[4]) * 4
                   + parseInt(idcard_array[5]) * 3
                   + parseInt(idcard_array[6]) * 2;

                M = 11 - (S % 11);
                if ((M == parseInt(idcard_array[7])) || (M == 11 && parseInt(idcard_array[7]) == 0) || (M == 10 && idcard_array[7].toUpperCase() == 'A'))
                {
                    return Errors[0]; //检测ID的校验位
                }
                else
                {
                    return Errors[3];
                }      
            }
            else if (ereg_am.test(idcard)) {
                return Errors[0]; //检测ID的校验位

            }
            else {
                return Errors[3];
            }
            break;
        case 10:
            ereg_tw = /^[A-Za-z][1-2][0-9]{8}$/; //台湾身份证合法性
            ereg_xg = /^[A-Za-z][0-9]{6}\([0-9]|[aA]\)$/; //香港身份证合法性
            ereg_am = /^[157][0-9]{6}\([0-9]\)$/; //澳门身份证合法性
            if (ereg_tw.test(idcard)) {
                //台湾  县市/地区
                var area_tw = { "A": 10, "B": 11, "C": 12, "D": 13, "E": 14, "F": 15, "G": 16, "H": 17, "I": 34, "J": 18, "K": 19, "L": 20, "M": 21, "N": 22, "O": 35, "P": 23, "Q": 24, "R": 25, "S": 26, "T": 27, "U": 28, "V": 29, "W": 32, "X": 30, "Y": 31, "Z": 33 };
                S = parseInt(area_tw[idcard_array[0].toUpperCase()] / 10)
                   + (area_tw[idcard_array[0].toUpperCase()] % 10) * 9
                   + parseInt(idcard_array[1]) * 8
                   + parseInt(idcard_array[2]) * 7
                   + parseInt(idcard_array[3]) * 6
                   + parseInt(idcard_array[4]) * 5
                   + parseInt(idcard_array[5]) * 4
                   + parseInt(idcard_array[6]) * 3
                   + parseInt(idcard_array[7]) * 2
                   + parseInt(idcard_array[8]);

                M = 10 - (S % 10);
                if (M == parseInt(idcard_array[9]) || (M == 10 && parseInt(idcard_array[9]) == 0))
                    return Errors[0]; //检测ID的校验位
                else
                    return Errors[3];
            }
            else if (ereg_xg.test(idcard)) {
                var area = parseInt(idcard_array[0].toUpperCase().charCodeAt()) - 64;
                S = area * 8
                   + parseInt(idcard_array[1]) * 7
                   + parseInt(idcard_array[2]) * 6
                   + parseInt(idcard_array[3]) * 5
                   + parseInt(idcard_array[4]) * 4
                   + parseInt(idcard_array[5]) * 3
                   + parseInt(idcard_array[6]) * 2;

                M = 11 - (S % 11);
                if ((M == parseInt(idcard_array[8])) || (M == 11 && parseInt(idcard_array[8]) == 0) || (M == 10 && idcard_array[8].toUpperCase() == 'A'))
                {
                    return Errors[0]; //检测ID的校验位
                }
                else
                {
                    return Errors[3];
                }
                    
            }
            else if (ereg_am.test(idcard)) {
                    return Errors[0]; //检测ID的校验位

            }
            else {
                return Errors[3];
            }
            break;
        case 15:
            if ((parseInt(idcard.substr(6, 2)) + 1900) % 4 == 0 || ((parseInt(idcard.substr(6, 2)) + 1900) % 100 == 0 && (parseInt(idcard.substr(6, 2)) + 1900) % 4 == 0)) {
                ereg = /^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}$/; //测试出生日期的合法性
            }
            else {
                ereg = /^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}$/; //测试出生日期的合法性
            }
            if (ereg.test(idcard))
                return Errors[0];
            else
                return Errors[2];
            break;
        case 18:
            //18位身份号码检测
            //出生日期的合法性检查 
            //闰年月日:((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))
            //平年月日:((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))
            if (parseInt(idcard.substr(6, 4)) % 4 == 0 || (parseInt(idcard.substr(6, 4)) % 100 == 0 && parseInt(idcard.substr(6, 4)) % 4 == 0)) {
                ereg = /^[1-9][0-9]{5}(19|20)[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}[0-9Xx]$/; //闰年出生日期的合法性正则表达式
            }
            else {
                ereg = /^[1-9][0-9]{5}(19|20)[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}[0-9Xx]$/; //平年出生日期的合法性正则表达式
            }
            if (ereg.test(idcard)) {
                //测试出生日期的合法性
                //计算校验位
                S = (parseInt(idcard_array[0]) + parseInt(idcard_array[10])) * 7
                + (parseInt(idcard_array[1]) + parseInt(idcard_array[11])) * 9
                + (parseInt(idcard_array[2]) + parseInt(idcard_array[12])) * 10
                + (parseInt(idcard_array[3]) + parseInt(idcard_array[13])) * 5
                + (parseInt(idcard_array[4]) + parseInt(idcard_array[14])) * 8
                + (parseInt(idcard_array[5]) + parseInt(idcard_array[15])) * 4
                + (parseInt(idcard_array[6]) + parseInt(idcard_array[16])) * 2
                + parseInt(idcard_array[7]) * 1
                + parseInt(idcard_array[8]) * 6
                + parseInt(idcard_array[9]) * 3;
                Y = S % 11;
                M = "F";
                JYM = "10X98765432";
                M = JYM.substr(Y, 1).toLowerCase(); //判断校验位
                if (M == idcard_array[17].toLowerCase())
                    return Errors[0]; //检测ID的校验位
                else
                    return Errors[3];
            }
            else
                return Errors[2];
            break;
        default:
            return Errors[1];
    }

}

function CheckIsForbiddenCharKeyPress(evt) {
    if (evt == null) evt = window.event;
    if (evt != null) {
        var elem = evt.srcElement;
        if (elem == null)
            if ((elem = evt.target) == null)
                elem = this;
        var text = Epoint_TextBox[elem.id];
        var aForbidden = text.ForbiddenChar.split(';');
        var code = evt.keyCode;
        if (code == null || code == 0)
            code = evt.charCode;
        if (code == 32) { return; }
        if (code == 13) { return; }
        if (code == 27) { return; }
        if (code == 16) { return; }
        if (code == 17) { return; }
        if (code == 18) { return; }
        var realkey = String.fromCharCode(code);
        for (var i = 0; i < aForbidden.length; i++)
            if (aForbidden[i] == "\\")
                aForbidden[i] = "\\" + "\\";
        for (var i = 0; i < aForbidden.length; i++)
            if (aForbidden[i] == realkey)
                event.returnValue = false;
        var val = elem.value;
        var val1 = elem.value;

        if (!text.AllowSBC)
            val = FormatFullToHalfChar(val);
        else {
            if (!text.AllowSBCPoint)
                val = FormatFullToHalfPoint(val);
            if (!text.AllowSBCNum)
                val = FormatFullToHalfNum(val);
        }

        if (val1 != val)
            elem.value = val;
    }

}

//Rate文本框的失去焦点的验证函数
function RateTextBoxCheckSelf() {
    if (NumericTextBoxCheckSelf()) {
        this.Element.value += "%";
    }
    else
        return false;

}

//Special文本框的失去焦点的验证函数
function SpecialTextBoxCheckSelf() {
    this.Element.value = this.Element.value.trim();
    if (this.MaxLength != 0 && this.Element.value.getLength() > this.MaxLength) {
        alert(this.Msg + "最多只能输入" + this.MaxLength + "个字符！");
        this.Element.focus;
        this.Element.select();
        return false;
    }

    if (!this.AllowNull && this.Element.value == "") {
        alert(this.Msg + "必填！");
        this.Element.focus;
        this.Element.select();
        return false;
    }
    return CheckSpecialTextBox(this.Id);
}

//提交前的统一验证函数,用来控制合法性输入
function Epoint_ValidTextBox() {
    //alert(Epoint_IsValidInput);
    if (!Epoint_IsValidInput)
        return true;
    try {
        for (var i = 0; i < Epoint_A_TextBoxCount; i++) {
            var textbox = Epoint_TextBox[Epoint_A_TextBox[i]];
            textbox.hideMessage();
            if (!textbox.CheckSelf()) {
                return false;
            }
        }
    }
    catch (ex) {
        epoint.dialog.error(ex);
        return false;
    }
    return true;
}

/////UpDown使用的函数
var bUpDownRun = false;
function Epoint_UpDown_Stop(id) {
    bUpDownRun = false;
    var text = Epoint_TextBox[id];
    if (typeof (text.Element.onchange) == "function")
        text.Element.onchange();
}

function onUpArrowClick(id, increment) {
    if (bUpDownRun) {
        var text = Epoint_TextBox[id];
        if (text.Element.value == "") {
            if (0 < text.MaxValue)
                text.Element.value = increment;
            else {
                text.Element.value = text.MaxValue;
            }
        }
        else {
            if (parseInt(text.Element.value) < text.MaxValue)
                text.Element.value = parseInt(epoint.math.takeout(text.Element.value, null)) + increment;
        }

        text.Element.value = Epoint_Commafy(text.Element.value, '', false, text.ShowCharact)

        window.setTimeout("onUpArrowClick('" + id + "'," + increment + ")", 200);
    }



}

function onDownArrowClick(id, increment) {
    if (bUpDownRun) {
        var text = Epoint_TextBox[id];
        if (text.Element.value == "") {
            if (0 > text.MinValue)
                text.Element.value = 0 - increment;
            else {
                text.Element.value = text.MinValue;
            }
        }
        else {
            if (parseInt(text.Element.value) > text.MinValue)
                text.Element.value = parseInt(epoint.math.takeout(text.Element.value, null)) - increment;
        }

        text.Element.value = Epoint_Commafy(text.Element.value, '', false, text.ShowCharact)

        window.setTimeout("onUpArrowClick('" + id + "'," + increment + ")", 200);
    }

}


/////UpDown使用的函数
function onUpArrowMouseDown(id, increment) {
    bUpDownRun = true;
    onUpArrowClick(id, increment)
}

function onDownArrowMouseDown(id, increment) {
    bUpDownRun = true;
    onDownArrowClick(id, increment);
}
