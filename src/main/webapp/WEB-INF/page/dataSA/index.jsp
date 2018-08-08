
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>分配者，待查数据分配</title>
    <meta charset="UTF-8">
    <link href="../../js/bootstrap/css/bootstrap.css" rel="stylesheet"  type="text/css"/>
    <link href="../../js/bootstrap-table/bootstrap-table.css" rel="stylesheet"  type="text/css"/>
    <link href="../../js/bootstrap3-editable/css/bootstrap-editable.css" rel="stylesheet"  type="text/css" />
    <link href="../../js/bootstrapValidator/bootstrapValidator.min.css" rel="stylesheet"  type="text/css" />

    <link href="../../js/plupload-2.0.0/js/jquery.ui.plupload/css/jquery.ui.plupload.css" rel="stylesheet"  type="text/css" />

    <link href="../../js/bootstrap-datetimepicker-master/css/bootstrap-datetimepicker.css" rel="stylesheet"  type="text/css"/>
    <link href="../../js/bootstrap-select/css/bootstrap-select.css" rel="stylesheet"  type="text/css"/>
    <link href="../../css/common.css" rel="stylesheet"  type="text/css"/>

    <link href="../../js/mloading/jquery.mloading.css" rel="stylesheet"  type="text/css" />


</head>
<body style="width:100%;margin:0 auto; padding: 5px;">


<div id="main-index-div">

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
                        <label for="season1" class="col-sm-1 control-label">季度</label>
                        <div class="col-sm-3">
                            <select type="text" class="form-control" id="season1" placeholder="请选择季度">
                                <option value="">------请选择季度-------</option>
                                <option value="第一季度">第一季度</option>
                                <option value="第二季度">第二季度</option>
                                <option value="第三季度">第三季度</option>
                                <option value="第四季度">第四季度</option>
                            </select>
                        </div>
                        <div class="col-md-offset-8">
                            <button style="margin-left:50px;" id="btn_search_report" type="button" class="btn btn-success" onclick="searchReportRecords();" >
                                <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                                <span>查询</span>
                            </button>
                        </div>
                    </div>
                    <!--
                    <div class="form-group">
                        <label for="roles1" class="col-sm-1 control-label">角色</label>
                        <div class="col-sm-3">
                            <select id="myroles1Select" id="roles1" class="selectpicker" multiple data-live-search="true" data-live-search-placeholder="搜索" data-actions-box="true">
                                　　<option value="a">a</option>
                                     <option value="b">b</option>
                                     <option value="c">c</option>
                                    <option value="d">d</option>
                            </select>
                        </div>
                        <div class="col-md-offset-5">
                            <button style="margin-left:15px;" id="btn_search_report" type="button" class="btn btn-success" onclick="searchReportRecords();" >
                                <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                                <span>查询</span>
                            </button>
                        </div>
                    </div>
                    -->
                </form>
            </div>
        </div>
    </div>


    <div id="bottom-div">
        <div id="toolbar">
            <button id="btn_endTask" type="button" class="btn btn-primary" onclick="openCreateReportDialog();" >
                <span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
                <span>创建报告</span>
            </button>
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

</body>


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


    $("body").mLoading("show");

    $(function () {

        //
        $("body").mLoading("hide");

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

        // 初始化表
        var tableInit = getDefaultDataGrid({
            id: 'mainDg',
            url: '/dataStatisticsAnalyze/findByPage.do',
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
                    field: "season",
                    title: "季度",
                    align: 'center'
                },
                {
                    field: "createBy",
                    title: "创建人"
                },
                {
                    field: "createTime",
                    title: "创建时间",
                    align: 'center',
                    formatter: function (value, row, index) {
                        return timestampToDate(value);
                    }
                },{
                    title: '操作',
                    align: 'center',
                    formatter: function (value, row, index) {
                        var alink = '<a href="javascript:void(0);" onclick="downloadDocx('+ row.id +')">下载</a>';
                        return  alink;
                    }
                }
            ],
            queryParams: function(params) {
                var temp = {
                    limit: params.limit,
                    page: Math.floor(params.offset / params.limit) + 1,
                    year: $("#year1").val(),
                    season: $("#season1").val()
                };
                return temp;
            }
        });
        tableInit.Init();



    });
    
    
    
    function openCreateReportDialog() {

        showModalDialog({
            id : 'myModal',
            title: '创建报告',
            btnHide: true,
            url: '/dataStatisticsAnalyze/form.do'
        });

    }


    function downloadDocx(id) {
        window.open("/dataStatisticsAnalyze/download.do?id=" + id);
    }


    function searchReportRecords() {
        $("#mainDg").bootstrapTable("refresh",{
            query : {
                year: $("#year1").val(),
                season: $("#season1").val()
            },
            pageNumber : 1
        });
    }

</script>