<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>人工清洗，实习生</title>
    <meta charset="UTF-8">

    <link href="../../js/bootstrap/css/bootstrap.css" rel="stylesheet"  type="text/css"/>
    <link href="../../js/bootstrap-table/bootstrap-table.css" rel="stylesheet"  type="text/css"/>
    <link href="../../js/bootstrap3-editable/css/bootstrap-editable.css" rel="stylesheet"  type="text/css" />
    <link href="../../js/bootstrapValidator/bootstrapValidator.min.css" rel="stylesheet"  type="text/css" />

    <link href="../../js/plupload-2.0.0/js/jquery.ui.plupload/css/jquery.ui.plupload.css" rel="stylesheet"  type="text/css" />
    <link href="../../js/mloading/jquery.mloading.css" rel="stylesheet"  type="text/css" />
    <link href="../../css/common.css" rel="stylesheet"  type="text/css"/>

    <style type="text/css">
        div.content_html {
            background-color:#FFFFFF;
        }
        .fixed-table-body{
            max-height:410px;
        }
        .colorOfmintcream{
            background-color:mintcream;
        }
        .fixed-table-header{
            background-color: #bee7f3;
        }
    </style>

</head>
<body style="margin:0 auto;background-color:#FFFFFF;">

    <div style="background-color:#FFFFFF;">



    <div id="left" style="width:30%;float:left;background-color:#FFFFFF;">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">任务列表</h3>
            </div>
            <div class="panel-body">
                <div id="intern-task-toobar">
                    <form role="form" class="form-inline">
                        <div class="form-group">
                            <label class="" for="the-task-status">查询状态：</label>
                            <select class="form-control" id="the-task-status" name="taskStatus" onchange="queryTasksByStatus();">
                                <option value="" selected>所有</option>
                                <option value="0">查询中</option>
                                <option value="1">待验证</option>
                                <option value="2">验证通过</option>
                                <option value="3">验证退回</option>
                                <option value="4">任务被放弃</option>
                                <option value="5">放弃后已处理</option>
                            </select>
                        </div>
                    </form>
                </div>
                <table id="mainDg" style="background:rgb(255,255,255);" class="table table-hover"></table>
            </div>
        </div>
    </div>

    <div id="right" style="width:68%;float:left;margin-left:10px;background-color:#FFFFFF;">
        <div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">任务详情</h3>
                </div>
                <div class="panel-body" style="padding:0px;width:100%;overflow: auto;max-height:85%;">
                    <div id="mainDetailTaskDiv" style="margin-bottom: 50px;"></div>
                </div>
            </div>
        </div>
        <div></div>
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
    <script type="text/javascript" src="../../js/mloading/jquery.mloading.js"></script>

    <script type="text/javascript" src="../../js/common/common.js"></script>

    <script type="text/javascript">

        $(function () {

            var columns = [
                {
                    field: "taskName",
                    formatter: function (value,row,index) {

                        var ts = parseInt(row.taskStatus);
                        var ss = "";
                        switch(ts){
                            case 0 : ss = '查询中';break;
                            case 1 : ss = '待验证';break;
                            case 2 : ss = '验证通过';break;
                            case 3 : ss = '验证退回';break;
                            case 4 : ss = '<span style="color:red;">任务被放弃</span>';break;
                            case 5 : ss = '<span style="color:red;">放弃后已处理</span>';break;
                        }

                        var a =  "<a data-id='"+ row.id +"' href='javascript:void(0);' onclick='taskNameOnClick(this);' style='width: 100%;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;display: inline-block;'>" + value + "</a>";
                        var b = "<div><span style='font-size:8px;font-weight:bold;font-style:italic;'>查询状态：" + ss + "</div>";
                        return "<div>" + a + b + "</div>";
                    }
                }
            ];


            // 初始化表
            var tableInit = getDefaultDataGrid({
                id: 'mainDg',
                url: '/personWashIntern/findByPage.do',
                columns: columns,
                toolbar: 'intern-task-toobar',
                height:500,
                queryParams: function(params) {
                    var temp = {
                        limit: params.limit,
                        page: Math.floor(params.offset / params.limit) + 1,
                        taskStatus: $("#the-task-status").val()
                    };
                    return temp;
                }
            });
            tableInit.Init();


        });


        function taskNameOnClick(alink) {
            $(alink).closest("tbody").find("td").removeClass("colorOfmintcream");
            $(alink).parent("div").closest("td").addClass("colorOfmintcream");
            $("#mainDetailTaskDiv").load("/personWashIntern/getDetailPage.do",{id: $(alink).data('id')},function(){});
        }
        
        function queryTasksByStatus() {
            $("#mainDg").bootstrapTable("refresh",{
                query : {
                    taskStatus: $("#the-task-status").val()
                },
                pageNumber : 1
            });
        }

    </script>

</body>
</html>
