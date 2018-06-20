<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>登陆日志管理</title>
    <meta charset="UTF-8">

    <link href="../../js/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="../../js/bootstrap-table/bootstrap-table.css" rel="stylesheet" type="text/css"/>
    <link href="../../js/bootstrap3-editable/css/bootstrap-editable.css" rel="stylesheet" type="text/css"/>
    <link href="../../js/bootstrapValidator/bootstrapValidator.min.css" rel="stylesheet" type="text/css"/>
    <link href="../../js/bootstrap-datetimepicker-master/css/bootstrap-datetimepicker.css" rel="stylesheet"  type="text/css"/>



    <style type="text/css">
        #filterDiv form .form-group {
            margin-left:10px;
        }
        .fixed-table-header{
            background-color: #bee7f3;
        }
    </style>

</head>
<body>

<h3>登陆日志管理</h3>

<div>
    <table id="mainDg" style="background:rgb(255,255,255);" class="table table-hover"></table>
</div>

<div id="toolbar">
    <div id="filterDiv" style="margin-left:1px;">
        <form class="form-inline" role="form">
            <div class="form-group">
                <label for="userName">用户名</label>
                <input type="text" class="form-control" id="userName" name="userName" placeholder="请输入用户名">
            </div>
            <div class="form-group" id="logintime-form-group">
                <label for="startTime">登陆时间范围</label>
                <div class="input-group">
                    <input type="text" readonly class="form-control date form_datetime" id="startTime" name="startTime" placeholder="请输入开始时间">
                    <span class="input-group-addon" style="cursor:pointer;" onclick="$(this).prev('input').val('');">x</span>
                </div>
                <span>~</span>
                <div class="input-group">
                    <input type="text" readonly class="form-control date form_datetime" id="endTime" name="endTime" placeholder="请输入结束时间">
                    <span class="input-group-addon" style="cursor:pointer;" onclick="$(this).prev('input').val('');">x</span>
                </div>
            </div>
            <div class="form-group">
                <button type="button" class="btn btn-success" onclick="searchByFilter();">
                    <span class="glyphicon glyphicon-search"></span>
                    <b>查询</b>
                </button>
            </div>
            <div class="form-group" style="margin-left:20px;">
                <button type="button" class="btn btn-primary" onclick="$(this).closest('form').get(0).reset();">重置</button>
            </div>
        </form>
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
<script type="text/javascript" src="../../js/bootstrap-datetimepicker-master/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="../../js/bootstrap-datetimepicker-master/js/locales/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>


<script type="text/javascript" src="../../js/common/common.js"></script>


<script type="text/javascript">

    $(function () {
        tableInit.Init();
        $('#logintime-form-group .form_datetime').datetimepicker({
            format:'yyyy-mm-dd hh:ii',
            language:  'zh-CN',
            weekStart: 1,
            todayBtn:  1,
            autoclose: 1,
            todayHighlight: 1,
            startView: 2,
            forceParse: 0,
            showMeridian: 1
        }).on("changeDate", function (ev) {
            var startTime = $("#logintime-form-group #startTime").val();
            var endTime = $("#logintime-form-group #endTime").val();

            if('' != startTime && '' != endTime){
                if(startTime > endTime){ // 开始时间大于结束时间
                    $(this).val('');
                    alert("结束时间必须大于或等于开始时间！");
                }
            }
        });
    });

    var tableInit = getDefaultDataGrid({
        id: 'mainDg',
        url: '/loginLog/getByPage.do',
        queryParams : function (params) {
            var temp = {
                limit: params.limit,
                page: Math.floor(params.offset/params.limit)+1,
                userName : $.trim($("#userName").val()),
                loginTimeStartTime : $("#logintime-form-group #startTime").val(),
                loginTimeEndTime : $("#logintime-form-group #endTime").val()
            };
            return temp;
        },
        columns: [
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
                field: "loginTime",
                title: "登陆时间",
                formatter : function (value, row, index) {
                    return timestampToDate(value);
                }
            }, {
                field: "ip",
                title: "ip地址"
            },  {
                field: "logoutTime",
                title: "退出时间",
                formatter : function (value, row, index) {
                    return timestampToDate(value);
                }
            }
        ]
    });


    function searchByFilter() {

        $("#mainDg").bootstrapTable("refresh",{
            query : {
                userName : $.trim($("#userName").val()),
                loginTimeStartTime : $("#logintime-form-group #startTime").val(),
                loginTimeEndTime : $("#logintime-form-group #endTime").val()
            },
            pageNumber : 1
        });

    }


</script>

</body>
</html>
