<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>工作量统计</title>
    <meta charset="UTF-8">
    <link href="../../js/bootstrap/css/bootstrap.css" rel="stylesheet"  type="text/css"/>
    <link href="../../js/bootstrap-table/bootstrap-table.css" rel="stylesheet"  type="text/css"/>
    <link href="../../js/bootstrap3-editable/css/bootstrap-editable.css" rel="stylesheet"  type="text/css" />
    <link href="../../js/bootstrapValidator/bootstrapValidator.min.css" rel="stylesheet"  type="text/css" />

    <link href="../../js/plupload-2.0.0/js/jquery.ui.plupload/css/jquery.ui.plupload.css" rel="stylesheet"  type="text/css" />

    <link href="../../js/bootstrap-datetimepicker-master/css/bootstrap-datetimepicker.css" rel="stylesheet"  type="text/css"/>
    <link href="../../js/bootstrap-select/css/bootstrap-select.css" rel="stylesheet"  type="text/css"/>

    <link href="../../js/mloading/jquery.mloading.css" rel="stylesheet"  type="text/css" />



    <style type="text/css">


        .fixed-table-header{
            background-color: #bee7f3;
        }

    </style>

</head>
<body style="width:100%;margin:0 auto; padding: 5px;">

<div id="top-div">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">条件过滤</h3>
        </div>
        <div class="panel-body" style="padding-bottom:0px;">
            <form class="form-horizontal" role="form" id="form-of-filter">
                <div class="form-group">
                    <label for="multiInternFilter" class="col-sm-1 control-label">姓名</label>
                    <div class="col-sm-3" id="wcr">
                        <select id="multiInternFilter" class="form-control selectpicker" >
                            <option value="">请选择...</option>　　
                            <c:if test="${not empty internList}">
                                <c:forEach items="${internList}" var="intern" varStatus="status">
                                    <option value="${intern.loginName}">${intern.loginName}</option>
                                </c:forEach>
                            </c:if>
                        </select>
                    </div>

                </div>
            </form>
        </div>
    </div>
</div>
    <div style="background-color:#FFFFFF;">
        <div style="margin-bottom:0;">
            <div id="toolbar">

                <div style="margin-top:10px;">
                    <button class="btn btn-primary" onclick="exportExcel();">
                        <span class="glyphicon glyphicon-export"></span>
                        <span>导出Excel</span>
                    </button>
                </div>

            </div>
            <table id="mainDg" style="background:rgb(255,255,255);" class="table table-hover"></table>
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

    <script type="text/javascript" src="../../js/plupload-2.0.0/js/plupload.full.min.js"></script>
    <script type="text/javascript" src="../../js/plupload-2.0.0/js/i18n/zh_CN.js"></script>

    <script type="text/javascript" src="../../js/bootstrap-datetimepicker-master/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
    <script type="text/javascript" src="../../js/bootstrap-datetimepicker-master/js/locales/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>

    <script type="text/javascript" src="../../js/bootstrap-select/js/bootstrap-select.js" charset="UTF-8"></script>
    <script type="text/javascript" src="../../js/bootstrap-select/js/i18n/defaults-zh_CN.js" charset="UTF-8"></script>

    <script type="text/javascript" src="../../js/mloading/jquery.mloading.js"></script>

    <script type="text/javascript" src="../../js/common/common.js"></script>

<script type="text/javascript">

    $(function () {

// 初始化表
var tableInit = getDefaultDataGrid({
    id: 'mainDg',
    url: '/personWashCountWork/findByPage.do',
    columns: [
        {
            field: "taskName",
            title: "分配任务",
            align: 'center'
        },
        {
            field: "checkIntern",
            title: "姓名"
        },
        {
            field: "itemCount",
            title: "分配数据量(项)",
            align: 'center'
        },
        {
            field: "realQueryItemCount",
            title: "实际查询数据量(项)",
            align: 'center'
        },
        {
            field: "checkTimes",
            title: "查询次数",
            align: 'center'
        },
        {
            field: "realFinishedItemCount",
            title: "实际完成数据量(项)",
            align: 'center'
        },
        {
            field: "workLoad",
            title: "工作量",
            align: 'center'
        }
    ],
    queryParams: function(params) {

        var ass = $('#multiInternFilter').selectpicker('val');

        var realvalue = "";

        if(ass!=""){
            realvalue = "'"+ass+"'";
        }
        var temp = {
            limit: params.limit,
            page: Math.floor(params.offset / params.limit) + 1,
            multiInternFilter: realvalue
        };
        return temp;
    }
});
tableInit.Init();

// select
        $('#multiInternFilter').on('hidden.bs.select', function (e) {

            var ass = $('#multiInternFilter').selectpicker('val');

            var realvalue = "";

            if(ass!=""){
                realvalue = "'"+ass+"'";
            }



            $("#mainDg").bootstrapTable("refresh",{
                query : {
                    multiInternFilter: realvalue
                },
                pageNumber : 1
            });

        });

});


    function exportExcel() {

        var url = "/personWashCountWork/exportExcel.do";
        window.open(url);

    }

</script>

</body>
</html>
