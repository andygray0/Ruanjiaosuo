<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>操作日志管理</title>
    <meta charset="UTF-8">

    <link href="../../js/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="../../js/bootstrap-table/bootstrap-table.css" rel="stylesheet" type="text/css"/>
    <link href="../../js/bootstrap3-editable/css/bootstrap-editable.css" rel="stylesheet" type="text/css"/>
    <link href="../../js/bootstrapValidator/bootstrapValidator.min.css" rel="stylesheet" type="text/css"/>

    <style type="text/css">
        .fixed-table-body{
            max-height:410px;
        }
        th,td{
            white-space: nowrap;
        }
    </style>

</head>
<body>

<h3>操作日志管理</h3>
<hr/>
<br/>

<div>
    <table id="mainDg" style="background:rgb(255,255,255);" class="table table-hover"></table>
</div>

<div id="toolbar">
    <div class="btn-group">
        <button id="btn_add" type="button" class="btn btn-primary">
            <span onclick="mainDgRefresh();" class="glyphicon glyphicon-refresh" aria-hidden="true">刷新</span>
        </button>
    </div>
</div>

<script type="text/javascript" src="../../js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="../../js/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="../../js/bootstrap-table/bootstrap-table.js"></script>
<script type="text/javascript" src="../../js/bootstrap-table-export.js"></script>
<script type="text/javascript" src="../../js/bootstrap3-editable/js/bootstrap-editable.min.js"></script>
<script type="text/javascript" src="../../js/bootstrap-table/extensions/editable/bootstrap-table-editable.js"></script>
<script type="text/javascript" src="../../js/bootstrap-table/locale/bootstrap-table-zh-CN.js"></script>
<script type="text/javascript" src="../../js/bootstrapValidator/bootstrapValidator.min.js"></script>
<script type="text/javascript" src="../../js/bootstrapValidator/zh_CN.min.js"></script>
<script type="text/javascript" src="../../js/zTree/jquery.ztree.all.min.js"></script>

<script type="text/javascript" src="../../js/common/common.js"></script>


<script type="text/javascript">

    $(function () {
        tableInit.Init();
    });

    var tableInit = getDefaultDataGrid({
        id: 'mainDg',
        url: '/operateLog/getByPage.do',
        columns: [
            {
                checkbox: true
            },
            {
                title: '序号',
                align: 'center',
                valign: 'bottom',
                formatter: function (value, row, index) {
                    var options = $("#mainDg").bootstrapTable("getOptions");
                    var startNo = (options.pageNumber - 1) * (options.pageSize);
                    return startNo + index + 1;
                }
            },
            {
                field: "userName",
                title: "用户名"
            }, {
                field: "operateTime",
                title: "操作时间",
                formatter : function (value, row, index) {
                    return timestampToDate(value);
                }
            }, {
                field: "module",
                title: "模块描述"
            }, {
                field: "method",
                title: "方法描述"
            },
            {
                field: "requestUri",
                title: "请求地址"
            }, {
                field: "requestParams",
                title: "请求参数"
            },
            {
                field: "controller",
                title: "控制器类"
            }, {
                field: "methodName",
                title: "方法名称"
            }
        ]
    });


    function mainDgRefresh() {
        $("#mainDg").bootstrapTable("refresh");
    }


</script>

</body>
</html>
