<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>数据报告模板</title>
    <link rel="stylesheet" type="text/css" href="../../css/normalize.css">
    <link rel="stylesheet" type="text/css" href="../../css/demo.css">
    <!--<link rel="stylesheet" type="text/css" href="./css/icons.css">-->
    <link rel="stylesheet" type="text/css" href="../../css/component.css">
    <link rel="stylesheet" type="text/css" href="../../img/icon/iconfont.css">
    <script src="../../js/jquery-1.11.0.min.js"></script>
    <script src="../../js/template-web.js"></script>

    <style>
        body{margin-right: -15px;overflow-x: hidden;}
        .column {
            position: absolute;
            left: 0;
            top: 0;
        }

        #ld {
            width: 100%;
            height: 100%;
            overflow-y: hidden;
        }

        .icon:before {
            speak: none;
            font-style: normal;
            font-weight: normal;
            font-variant: normal;
            text-transform: none;
            line-height: 1.2;
            display: inline-block;
            /*vertical-align: bottom;*/
            margin-right: 0.3em;
            font-size: 1.2em;
            -webkit-font-smoothing: antialiased;
        }

        iframe{border:none;}

        .st-menu{overflow-y: auto;}
        .navListT li{
            padding: 10px 0 10px 45px;
            font-size: 16px;
            cursor: pointer;
            color: #fff;
            background-color:#1C6373;
            border-bottom: 1px solid rgba(28,99,115,0.8);
        }
        .navListT li:hover{
            background-color: #1d7bb7;
        }
    </style>

</head>

<body>

<div id="st-container" class="st-container">
    <!-- Left nav -->
    <nav class="st-menu st-effect-11" id="menu-11">
        <div id="content"></div>
        <script id="test" type="text/html">
            {{if isAdmin}}

            <span class="title icon iconfont icon-baobiaoguanli">{{title}}</span>

            <ul id="accordion" class="navList accordion">
                {{each lang}}
                <li class="navListOne">
                    <div class="link">
                        <a class="icon iconfont icon-icon" style="cursor: pointer;" data-url="{{$value.url}}">{{$value.name}}</a>
                    </div>

                    <ul class="navListT submenu" style="display: none;" >
                        {{each $value.reportMenu}}
                        <li class="navListTList" data-url="{{$value.urlT}}">{{$value.nameT}}</li>
                        {{/each}}
                    </ul>
                </li>
                {{/each}}
            </ul>

            {{/if}}

        </script>
    </nav>
    <!-- content push wrapper -->
    <div class="st-pusher">
        <div class="st-content">
            <div id="st-trigger-effects" class="column">
                <button class="iconfont icon-baobiao3" data-effect="st-effect-11"></button>
            </div>
            <iframe id="ld" src=" "></iframe>
        </div>
        <!-- /st-content -->
    </div>
    <!-- /st-pusher -->
</div>

<script>

    var tmpLang = [
        <c:if test="${not empty reportMenuList}">
        <c:forEach items="${reportMenuList}" var="menu" varStatus="status">
            <c:if test="${menu.menuLevel == 1}">
             {url: "",name:"${menu.name}", reportMenu:[
                     <c:if test="${not empty reportMenuList}">
                     <c:forEach items="${reportMenuList}" var="menu2" varStatus="status2">
                        <c:if test="${menu2.menuLevel == 2 and menu.id == menu2.pid}">
                            <c:set var="menuurl" value="${menu2.url}" scope="request" />
                                 <%
                            String prefix = "";
                            String frm = "";
                            try{
                                String url = (String) request.getAttribute("menuurl");
                                int index = url.indexOf("/", 1);
                                prefix = url.substring(1, index);
                                frm = url.substring(index + 1);
                            } catch (Exception e){}
                        %>
                            {urlT: "/yearSeason_<%=prefix%>/load.do?frm=<%=frm%>",nameT:"${menu2.name}"},
                        </c:if>
                     </c:forEach>
                     </c:if>
                 ]},
            </c:if>
        </c:forEach>
        </c:if>
    ];



    // 左侧navList 数据渲染模块
    var data = {
        title: '数据分析报告',
        isAdmin: true,
        lang: tmpLang
    };
    var html = template('test', data);
    document.getElementById('content').innerHTML = html;


    // 点击左侧load不同报表
    $(document).ready(function() {
        // $(".navListOne").on('click','a',function () {
        //     // alert($(this).data('url'));
        //     // $("#ld").attr("src",$(this).data('url'));
        // });
        $(".navListTList").click(function () {
            // alert($(this).data('url'));
            $("#ld").attr("src",$(this).data('url'));
        });

        $("#accordion li:eq(0) ul li:eq(0) ").click();

    });




    $(function() {
        var Accordion = function(el, multiple) {
            this.el = el || {};
            this.multiple = multiple || false;

            // Variables privadas
            var links = this.el.find('.link');
            // Evento
            links.on('click', {el: this.el, multiple: this.multiple}, this.dropdown)
        };

        Accordion.prototype.dropdown = function(e) {
            var $el = e.data.el;
            $this = $(this);
            $next = $this.next();

            $next.slideToggle();
            $this.parent().toggleClass('open');

            if (!e.data.multiple) {
                $el.find('.submenu').not($next).slideUp().parent().removeClass('open');
            }
        };

        var accordion = new Accordion($('#accordion'), false);
    });
    </script>
    <script src="../../js/classie.js"></script>
    <script src="../../js/sidebarEffects.js"></script>
</body>

</html>