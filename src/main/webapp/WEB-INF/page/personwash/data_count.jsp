<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>数据量统计</title>
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

        #wcr div.bootstrap-select {
            width: 700px;
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
                    <label for="year1" class="col-sm-1 control-label">年份</label>
                    <div class="col-sm-3">
                        <input type="text" class="form-control" id="year1" readonly placeholder="请选择年份">
                    </div>
                    <label for="season1" class="col-sm-1 control-label">月份</label>
                    <div class="col-sm-3">
                        <select type="text" class="form-control" id="season1" placeholder="请选择">
                            <option value="">------请选择月份-------</option>
                            <option value="1">一月</option>
                            <option value="2">二月</option>
                            <option value="3">三月</option>
                            <option value="4">四月</option>
                            <option value="5">五月</option>
                            <option value="6">六月</option>
                            <option value="7">七月</option>
                            <option value="8">八月</option>
                            <option value="9">九月</option>
                            <option value="10">十月</option>
                            <option value="11">十一</option>
                            <option value="12">十二</option>
                        </select>
                    </div>
                    <div class="col-md-offset-8">
                        <button style="margin-left:50px;" id="btn_search_report" type="button" class="btn btn-success" onclick="searchReportRecords();" >
                            <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                            <span>查询</span>
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

    <div style="background-color:#FFFFFF;">
        <div style="margin-bottom:0;">
            <div id="toolbar">

            </div>
            <table id="mainDg" style="background:rgb(255,255,255);" class="table table-hover"></table>
        </div>

    </div>

    <!-- 模态框（Modal） -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
        <div class="modal-dialog" style="width:750px;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title" id="myModalLabel2"></h4>
                </div>
                <div class="modal-body" style="max-height:400px;overflow-y:auto;">

                </div>
                <div class="modal-footer">
                    <button type="button" data-operate="" class="btn btn-primary" >保存</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
    

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
    url: '/personWashDataCount/findByPage.do',
    pageSize: 12,
    pageList: [12, 25, 50, 100,1000],
    height: 'auto',
    columns: [
        {
            title: '序号',
            align: 'center',
            formatter: function (value, row, index) {
                var options = $("#mainDg").bootstrapTable("getOptions");
                var startNo = (options.pageNumber - 1) * (options.pageSize);
                return startNo + index + 1;
            }
        },
        {
            field: "year",
            title: "年份",
            align: 'center'
        },
        {
            field: "month",
            title: "月份",
            align: 'center'
        },
        {
            field: "itemRecord",
            title: "总数据量(条数)",
            align: 'center'
        },
        {
            field: "queryRecord",
            title: "查询中(条数)",
            align: 'center'
        },
        {
            field: "validRecord",
            title: "待验证(条数)",
            align: 'center'
        },
        {
            field: "finishRecord",
            title: "已完结(条数)",
            align: 'center'
        }
    ],
    queryParams: function(params) {

        var ass = $('#multiInternFilter').selectpicker('val');

        var realvalue = "";
        if(ass && ass.length > 0){
            $.each(ass, function (index, item) {
                realvalue += "," + "'" + item + "'";
            });
            realvalue = realvalue.substring(1);
        }

        var temp = {
            limit: params.limit,
            page: Math.floor(params.offset / params.limit) + 1,
            year: $("#year1").val(),
            month: $("#season1").val()
        };
        return temp;
    }
});
tableInit.Init();


        $('#year1').datetimepicker({
            language:  'zh-CN',
            todayBtn:  1,
            todayHighlight: 1,
            forceParse: 0,
            showMeridian: 1,
            startView: 'decade',
            minView: 'decade',
            format: 'yyyy',
            autoclose: true
        });

});

    function searchReportRecords() {
        $("#mainDg").bootstrapTable("refresh",{
            query : {
                year: $("#year1").val(),
                month: $("#season1").val()
            },
            pageNumber : 1
        });
    }

</script>

</body>
</html>
