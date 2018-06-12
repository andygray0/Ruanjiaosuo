<%--
  Created by IntelliJ IDEA.
  User: zhaoao
  Date: 2018/1/4
  Time: 17:41
  To change this template use File | Settings | File Templates.
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
    String contextPath = request.getContextPath();
%>
<%
    String fn = request.getParameter("fn");
    if (fn == null) {
        fn = "";
    }
%>
<%
    String logid = request.getParameter("logid");
    if (logid == null) {
        logid = "";
    }
%>
<%
String totable = request.getParameter("totable");
if (totable == null) {
fn = "";
}
%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width" />
    <title>结果展示</title>
    <link href="../js/bootstrap/css/bootstrap.css" rel="stylesheet"  type="text/css"/>
    <link href="../js/bootstrap-table/bootstrap-table.css" rel="stylesheet"  type="text/css"/>
    <link href="../js/mloading/jquery.mloading.css" rel="stylesheet"  type="text/css"/>
<style type="text/css">
        th,td{
            white-space: nowrap;
        }
        #tb_departments{
            background-color: #fff;
            padding: 15px;
        }
        .tb_dep_content{
            background-color: #fff;
            margin: 0 15px 15px 15px;
            padding: 2px;
            border-radius: 3px;
        }
        .tb_dep_content .bootstrap-table{
            height: 80%;
        }
    </style>

</head>
<body>

<div class="panel-body" id="testtest" style="padding-bottom:0px;">
    <div class="panel panel-default">
        <div class="panel-body">
            <button type="button" style="margin-left:50px" id="btn_insert" class="btn btn-primary" >确定导入</button>
        </div>
    </div>
    <table id="tb_departments" class="table table-hover"></table>
</div>

<script type="text/javascript" src="../js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="../js/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="../js/bootstrap-table/bootstrap-table.js"></script>
<script type="text/javascript" src="../js/bootstrap-table-export.js"></script>
<script type="text/javascript" src="../js/bootstrap-table/locale/bootstrap-table-zh-CN.js"></script>
<script  src="../js/pdfmake.min.js"></script>
<script  src="../js/jspdf.min.js"></script>
<script  src="../js/jspdf.plugin.autotable.js"></script>
<script  src="../js/vfs_fonts.js"></script>
<script type="text/javascript" src="../js/html2canvas.min.js"></script>
<script type="text/javascript" src="../js/FileSaver.min.js"></script>
<script type="text/javascript" src="../js/tableExport.js"></script>
<script type="text/javascript" src="../js/xlsx.core.min.js"></script>
<script type="text/javascript" src="../js/moment.js"></script>
<script type="text/javascript" src="../js/bootbox.min.js"></script>
<script type="text/javascript" src="../js/mloading/jquery.mloading.js"></script>
<script type="text/javascript">
    var i = 0;
    var showall = function(){
        i++;
        if(i%2==1){
            $(".dropdown-menu>li").find("input").each(function(){
                if(!$(this).get(0).checked){
                    $(this).click();
                }
            });
        }else{
            $(".dropdown-menu>li").find("input").each(function(){
                if($(this).get(0).checked){
                    $(this).click();
                }
            });
        }
    };
    $("#btn_insert").click(function () {
        var data = {
            fn:'<%=fn%>',
            totable:'<%=totable%>',
            id:'<%=logid%>'
        };
        $("body").mLoading("show");
        $.ajax({
            url: "/insertresult.do",
            type: "get",
            dataType: "json",
            data: data,
            success: function (result) {
                $("body").mLoading("hide");
                $("#btn_insert").remove();
                if(result.success){
                    bootbox.alert("导入成功:" + result.msg);
                }
                else {
                    bootbox.alert("导入失败:" + result.msg)
                }
            },
            error: function () {
                $("body").mLoading("hide");
                $("#btn_insert").remove();
                bootbox.alert("导入失败！");
            }
        });
    });
    $(function () {

        //1.初始化Table
        var oTable = new TableInit();
        oTable.Init();

        //2.初始化Button的点击事件
        var oButtonInit = new ButtonInit();
        oButtonInit.Init();


    });



    var TableInit = function () {
        var oTableInit = new Object();
        //初始化Table
        var columns = [];
        $.ajax({
            url: '/datamanage/getColumn.do',
            type: 'post',
            dataType: "json",
            async: true,
            success: function (returnValue) {
                var arr = returnValue.fields;
                var t = 1;
                $.each(arr, function (i, item) {
                    if(t==1||t==2){
                        t=t+1;
                    }
                    else if (t < 11) {
                        if (item.type == "java.util.Date") {
                            columns.push({
                                "field": item.name.replace(/([A-Z])/g, "_$1").toUpperCase(),
                                "title": item.name.replace(/([A-Z])/g, "_$1").toUpperCase(),
                                "visible": true,
                                "formatter": function (value) {
                                    return moment(value, "x").format("YYYY-MM-DD HH:mm:ss")
                                }
                            });
                        }
                        else {
                            columns.push({
                                "field": item.name.replace(/([A-Z])/g, "_$1").toUpperCase(),
                                "title": item.name.replace(/([A-Z])/g, "_$1").toUpperCase(),
                                "visible": true
                            });
                        }
                        t = t + 1;
                    }
                    else  {
                        if (item.type == "java.util.Date") {
                            columns.push({
                                "field": item.name.replace(/([A-Z])/g, "_$1").toUpperCase(),
                                "title": item.name.replace(/([A-Z])/g, "_$1").toUpperCase(),
                                "visible": false,
                                "formatter": function (value) {
                                    return moment(value, "x").format("YYYY-MM-DD HH:mm:ss")
                                }
                            });
                        }
                        else {
                            columns.push({
                                "field": item.name.replace(/([A-Z])/g, "_$1").toUpperCase(),
                                "title": item.name.replace(/([A-Z])/g, "_$1").toUpperCase(),
                                "visible": false
                            });
                        }
                        t = t + 1;
                    }
                });
                $('#tb_departments').bootstrapTable(
                    "refreshOptions",
                    {
                        url : '/getexcel.do?fn=<%=fn%>'+'.xlsx', // 获取数据的地址
                        columns : columns,

                    }
                );

                $(".dropdown-menu>li").first().prepend("<button onclick=\"showall();\">全选/全不选</button>");

            }
        });
        oTableInit.Init = function () {
            $('#tb_departments').bootstrapTable({
                <%--url: '/getexcel.do?fn=<%=fn%>'+'.xlsx',         //请求后台的URL（*）--%>
                method: 'post',                      //请求方式（*）
                toolbar: '#toolbar',                //工具按钮用哪个容器
                striped: true,                      //是否显示行间隔色
                cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
                pagination: true,                   //是否显示分页（*）
                sortable: false,                     //是否启用排序
                sortOrder: "asc",                   //排序方式
                queryParams: oTableInit.queryParams,//传递参数（*）
                sidePagination: "client",           //分页方式：client客户端分页，server服务端分页（*）
                pageNumber:1,                       //初始化加载第一页，默认第一页
                pageSize: 10,                       //每页的记录行数（*）
                pageList: [10, 25, 50, 100,1000],        //可供选择的每页的行数（*）
                search: false,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
                strictSearch: false,
                showColumns: true,                  //是否显示所有的列
                showRefresh: true,                  //是否显示刷新按钮
                minimumCountColumns: 2,             //最少允许的列数
                clickToSelect: true,                //是否启用点击选中行
                // height: 500,                        //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
                uniqueId: "ID",                     //每一行的唯一标识，一般为主键列
                showToggle:false,                    //是否显示详细视图和列表视图的切换按钮
                cardView: false,                    //是否显示详细视图
                detailView: false,                   //是否显示父子表
                showExport: false,
//                    exportDataType: 'all',
                exportTypes:[ 'csv', 'json', 'sql', 'xml','doc', 'excel', 'xlsx'],
                exportDataType:"all",
//                    rowStyle: function (row, index) {
//                    //这里有5个取值代表5中颜色['active', 'success', 'info', 'warning', 'danger'];
//                    var strclass = "";
//                if ( index%2 == 0) {
//                    strclass = 'info';//还有一个active
//                }
//                else {
//                    return {};
//                }
//                return { classes: strclass }
//            },
                columns: columns
            });
        };

        //得到查询的参数
        oTableInit.queryParams = function (params) {
            var temp = {   //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的

            };
            return temp;
        };
        return oTableInit;
    };



    var ButtonInit = function () {
        var oInit = new Object();
        var postdata = {};

        oInit.Init = function () {
            //初始化页面上面的按钮事件
        };

        return oInit;
    };

</script>
</body>
</html>