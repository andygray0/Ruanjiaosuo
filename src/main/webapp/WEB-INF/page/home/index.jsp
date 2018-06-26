<%@ page import="com.wine.model.Role" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2018-04-02
  Time: 18:20
  To change this template use File | Settings | File Templates.
--%>
<%
    String ref = request.getParameter("ref");
    if (ref == null) {
        ref = "";
    }
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>

    <title>全国招标采购大数据分析平台首页</title>
    <link rel="stylesheet" href="../../../css/index_nav.css">
    <link rel="stylesheet" href="../../../css/style.css" media="screen" type="text/css">
    <link href="../../../img/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <style>
        iframe{
            border: none;
        }
    </style>
    <script type="text/javascript">
        <%
        String usersession = (String) session.getAttribute("usersession");
        %>
    </script>
    <script type="text/javascript">
        var  jump = function () {
            if("<%=usersession%>" == "null" ){
                $(".login").html("<a>登录</a>");
                $(".login").attr('onclick',"window.open('login.jsp','_self')");
            }
        };

        var logout = function () {
            $.post("/admin/logout.do",{loginName:'<%=usersession%>'},function(){
                location.href = '../../../login.jsp';
            });
        };
    </script>
</head>
<body onload=" jump();">
<div class="menu_out">
    <div class="menu01">
        <div class="menu_bank">
            <div class="menu_bank_logo"><img src="../../../img/menu/pic_logo.png" alt="rjs_logo" width="70%"></div>
        </div>
        <div class="box">
            <ul id="accordion" class="accordion">
                <c:forEach items="${menuListLevel1}" var="level1Menu" varStatus="vs">
                    <li class="meanu_first">
                        <div class="link">${level1Menu.name}<c:if test="${level1Menu.name != '首页'}"><i class="fa fa-chevron-down"></i></c:if></div>

                        <ul class="submenu" style="display: none;">
                            <c:forEach items="${menuListLevel2}" var="level2Menu" varStatus="vs2">
                                <c:if test="${level2Menu.pid == level1Menu.id}">
                                    <li class=' <c:if test='${level1Menu.name != "数据分析报告" && level2Menu.name !="数据监控"}'>urlLoad</c:if>
                                    <c:if test='${level1Menu.name == "数据分析报告" || level2Menu.name =="数据监控"}'>dataReport</c:if>' data-url="${level2Menu.url}">
                                    <a href="javascript:void(0);"><i class="fa fa-caret-right"></i> ${level2Menu.name}</a></li>
                                </c:if>
                            </c:forEach>
                        </ul>
                    </li>
                </c:forEach>
            </ul>

        </div>
    </div>
</div>

<div class="content">
    <div class="topbar">
        <img src="../../../img/menu/pic_name.png" alt="rjs">
        <div class="topbar_right">
            <div class="user">
                <span class="login"> <%=usersession%> </span>
                <i class="fa fa-chevron-down user_ani"></i>
                <div class="user_set in-down">
                    <ul>
                        <li class="welcome" onclick="logout();">退出登录</li>
                    </ul>
                </div>

            </div>
            <div class="topdate">
                <span class="indexWeek"></span>
                <span class="mdate">
                        <span class="indexDate"></span>
                        <span class="indexMonth"></span>
                    </span>
            </div>
            <div class="toptime">
                <span class="apm"></span>
                <span class="timenow"></span>
            </div>
        </div>
    </div>
    <%--<div class="content_html"> </div>--%>
    <iframe class="content_html" src="/admin/indexT.do"></iframe>

</div>



</body>

<script src="../../../js/jquery-1.11.0.min.js"></script>
<script src="../../../js/index.js"></script>



<script>



    //    topbar getTime 时间处理成相应的格式
    function getTime(){
        var timer = null;
        clearInterval(timer);
        String.prototype.fmtWithZero = function(isFmtWithZero){
            if(isFmtWithZero)
                return (this<10?"0"+this:this);
            else return this;
        };
        String.prototype.fmtWithZeroD = function(isFmtWithZero){
            if(isFmtWithZero)
                return (this<10?"00"+this:(this<100?"0"+this:this));
            else return this;
        };


        /**
         *功能:根据输入表达式返回日期字符串
         *参数:dateFmt:字符串,由以下结构组成　　
         *　　　yy:长写年,YY:短写年mm:数字月,MM:英文月,dd:日,hh:时,
         *　　　mi:分,ss秒,ms:毫秒,we:汉字星期,WE:英文星期.
         *　　　isFmtWithZero:是否用0进行格式化,trueorfalse
         *返回:对应日期的中文字符串
         */
        Date.prototype.toString=function(dateFmt,isFmtWithZero){
            dateFmt=(dateFmt==null?"yy-mm-ddhh:mi:ss":dateFmt);
            if(typeof(dateFmt)!="string")
                throw(new Error(-1,'toString()方法的第一个参数为字符串类型!'));
            isFmtWithZero=!!isFmtWithZero;
            var weekArr=[["日","一","二","三","四","五","六"],["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"]];
            var monthArr=["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"];
            var str=dateFmt;
            var o={
                "yy":this.getFullYear(),
                "YY":this.getYear(),
                "mm":this.getMonth()+1,
                "MM":monthArr[this.getMonth()],
                "dd":this.getDate(),
                "hh":this.getHours(),
                "mi":this.getMinutes(),
                "ss":this.getSeconds(),
                "we":"星期"+weekArr[0][this.getDay()],
                "WE":weekArr[1][this.getDay()]
            };
            for(var i in o){
                str=str.replace(new RegExp(i,"g"),o[i].toString().fmtWithZero(isFmtWithZero));
            }
            str = str.replace(/ms/g,this.getMilliseconds().toString().fmtWithZeroD(isFmtWithZero));

            return str;
        };

        function showTime(){
            var myDate = new Date();

            var now = new Date();
            var hours = now.getHours();
            var minutes = now.getMinutes();
            var ndate = myDate.getDate();
            var h = myDate.toString("hh");
            h = (h >= 12 ? "PM " : "AM ");
            hours = (hours >= 12 ? hours - 12 : hours);
//            ndate = (ndate >= 10 ? ndate : ndate+' ');
            minutes = (minutes < 10 ? '0'+minutes : minutes);

            $('.indexWeek').html(myDate.toString("WE"));
//            $('.indexDate').html(myDate.toString(ndate));
            $('.indexDate').html(myDate.toString('dd'));
            $('.indexMonth').html(myDate.toString("MM"));
            $('.apm').html(myDate.toString(h));
            $('.timenow').html(myDate.toString(hours+":"+minutes));
        }
        showTime();
    }

    $(function(){

        getTime();
        timer = setInterval("getTime()",1000);


    });

    $(document).ready(function() {
        // nav 动态获取剩余部分高度 适应不同分辨率滚动
        var boxBottomHeight = $(window).height()-$(".menu_bank").height()-$(".box").height() - 50 ;
        $(".submenu").css("max-height",boxBottomHeight);

        $(".link:first-child").eq(0).click(function () {
            if($(this).text() === '首页' ){
                $('.content_html').attr("src",'/admin/indexT.do');
            }
        });


        $(".urlLoad").click(function () {
            $(".content_html").attr("src",$(this).data('url'));
        });
        $(".dataReport").click(function () {
            window.open($(this).data('url'));
        });

        var xxx = "<%=request.getParameter("ref")%>"
        if(xxx  == "personwash"){
            $('.content_html').attr("src",'/personWashAdmin/toIndex.do');
        }
    });

</script>

</html>
