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

    <link href="../../js/mloading/jquery.mloading.css" rel="stylesheet"  type="text/css" />



    <style type="text/css">
        #assignForm .form-group span:not(".glyphicon") {
            width: 350px;
        }
        .fixed-table-body{
            max-height:350px;
        }
        th,td{
            white-space:nowrap;
        }
        .tooltip-inner{
            max-width:800px;
            padding: 10px;
            background-color: rgba(0,0,0,.8);
        }
        #startTime,#endTime,.modal-backdrop{
            z-index: 1;
        }
        #mainDg .fixed-table-container{
            height: auto;
            padding-bottom: 0;
        }
        .fixed-table-body {
            /*max-height: 240px;*/
        }
        .fixed-table-header{
            background-color: #bee7f3;
        }

    </style>

</head>
<body style="width:100%;margin:0 auto; padding: 5px;">

    <div style="background-color:#FFFFFF;">

        <div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        <span>数据分配</span>
                        <span>（待查项数总和：<span style="color:darkblue;font-weight:bold;" id="canDistrubteTotalClCount">${clCount}</span> 项）</span>
                    </h3>
                </div>
                <div class="panel-body" style="padding:0px;">
                    <div>
                        <form class="form-inline" role="form" id="assignForm">
                            <div class="form-group" style="border: 1px solid #ccc;width:100%;">

                            </div>
                            <div class="form-group" style="width:100%;display:block;">
                                <div style="margin-left:45px;">
                                    <label>实习生</label>

                                    <select id="myInternSelect" class="selectpicker" multiple data-live-search="true" data-live-search-placeholder="搜索" data-actions-box="true">
                                    　　<c:if test="${not empty internList}">
                                            <c:forEach items="${internList}" var="intern" varStatus="status">
                                                <option value="${intern.loginName}">${intern.loginName}</option>
                                            </c:forEach>
                                        </c:if>
                                    </select>

                                    <label style="margin-left:30px;">要求反馈时间</label>
                                    <fmt:formatDate value="<%=new Date()%>" pattern="yyyy-MM-dd HH:mm" var="nowDateTime" />
                                    <input class="form-control date" value="" readonly id="virtual-feedback-time-input" placeholder="请选择要求反馈时间" />
                                    <button type="button" class="btn btn-primary" onclick="assignTasks();" style="margin:10px;">
                                        <span class="glyphicon glyphicon-send"></span>
                                        <span class="glyphicon">分配</span>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>


        <!-- table -->
        <div style="margin-bottom:0;">

            <div id="toolbar">
                <div>
                    <form class="form-inline" role="form">
                        <div class="form-group" id="collect-data-form-group">
                            <label for="startTime" style="margin-left:45px;">采集日期范围</label>
                            <div class="input-group">
                                <input type="text" readonly class="form-control date form_datetime" id="startTime" name="startTime" placeholder="请输入开始日期">
                                <span class="input-group-addon" style="cursor:pointer;" onclick="$(this).prev('input').val('');$('#queryByCollectTime').click();">x</span>
                            </div>
                            <span>~</span>
                            <div class="input-group">
                                <input type="text" readonly class="form-control date form_datetime" id="endTime" name="endTime" placeholder="请输入结束日期">
                                <span class="input-group-addon" style="cursor:pointer;" onclick="$(this).prev('input').val('');$('#queryByCollectTime').click();">x</span>
                            </div>
                        </div>
                        <div class="form-group" style="margin-left:20px;margin-top:-4px;">
                            <button type="button" id="queryByCollectTime" class="btn btn-success" onclick="searchByFilter();">
                                <span class="glyphicon glyphicon-search"></span>
                                <b>查询</b>
                            </button>
                        </div>
                    </form>
                </div>
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

            $('#myInternSelect').on('hidden.bs.select', function (e) {

                var notSelected = [];
                if(e.target.length > 0){
                    for(var i = 0; i < e.target.length; i++){
                        if(!e.target[i].selected){
                            notSelected.push($(e.target[i]).val());
                        }
                    }
                }

                // do something...
                var ass = $('#myInternSelect').selectpicker('val');

                if(ass && ass.length > 0){

                    $.each(ass, function (index, item) {

                        var sample = "<span id=\""+ "intern-name-" + item +"\" style=\"display:inline-block;margin:10px;\">" +
                            "                                            <label  title=\""+ item +"\" class=\"control-label user-label\"\n" +
                            "                                                    style=\"width:120px;text-align:right;  overflow:hidden;text-overflow:ellipsis;-o-text-overflow:ellipsis;-webkit-text-overflow:ellipsis;-moz-text-overflow:ellipsis;white-space:nowrap;\"\n" +
                            "                                            >"+ item +"</label>\n" +
                            "                                            <input type=\"number\" min=\"0\" value=\"0\" class=\"form-control\" style=\"width:80px;\" onkeypress='return(/[\\d]/.test(String.fromCharCode(event.keyCode) ) );'  />\n" +
                            "                                            <i>项</i>\n" +
                            "                                        </span>";

                        var spanLength =  $("#intern-name-" + item).length;
                        if(0 == spanLength){
                            $("form#assignForm div.form-group:eq(0)").append(sample);
                        }
                    });

                } else{
                    console.log("没有")
                }


                if(notSelected.length > 0){
                    $.each(notSelected, function (index, item) {
                        $("#intern-name-" + item).remove();
                    });
                }



            });

            var columns = [
                {
                    field: "irSid",
                    title: "ID",
                    align: 'center'
                },
                {
                    field: "irUrltitle",
                    title: "网页引用标题",
                    width: 470,
                    formatter: function(value,row,index){
                        return "<span data-toggle='tooltip' class='tooltip-show' style='display:inline-block;width:450px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;' title='"+ value +"'>"+ value +"</span>";
                    }
                },
                {
                    field: "irLasttime",
                    title: "采集日期",
                    formatter : function (value, row, index) {
                        return timestampToDate(value);
                    },
                    align: 'center'
                },
                {
                    field: "clCount",
                    title: "待查项数",
                    align: 'center',
                    formatter:function (value,row,index){
                        return '<span onclick="popLookupCheckDataDialog('+ row.id +','+ value +');" class="badge" style="background-color:#abc;cursor:pointer;">'+ value +'</span>';
                    }
                }
            ];


            // 初始化表
            var tableInit = getDefaultDataGrid({
                id: 'mainDg',
                url: '/personWashAdmin/findByPage.do',
                columns: columns,
                height: "510",
                success: function(row,data){
                    $("[data-toggle='tooltip']").tooltip();
                },
                onColumnSwitch: function(field, checked){
                    $("[data-toggle='tooltip']").tooltip();
                },
                queryParams: function(params) {
                    var temp = {
                        limit: params.limit,
                        page: Math.floor(params.offset / params.limit) + 1,
                        irLasttimestartDate : $("#collect-data-form-group #startTime").val() == "" ? "" : ($("#collect-data-form-group #startTime").val() + ":00" ),
                        irLasttimeendDate : $("#collect-data-form-group #endTime").val() == "" ? "" : ($("#collect-data-form-group #endTime").val() + ":00" )
                    };
                    return temp;
                }
            });
            tableInit.Init();


            $('#virtual-feedback-time-input').datetimepicker({
                format:'yyyy-mm-dd hh:ii',
                language:  'zh-CN',
                weekStart: 1,
                todayBtn:  1,
                autoclose: 1,
                todayHighlight: 1,
                startView: 2,
                forceParse: 0,
                showMeridian: 1,
                startDate: new Date()
            });


        $('#collect-data-form-group .form_datetime').datetimepicker({
            format:'yyyy-mm-dd hh:ii',
            language:  'zh-CN',
            weekStart: 1,
            todayBtn:  1,
            autoclose: 1,
            todayHighlight: 1,
            startView: 2,
            forceParse: 0,
            showMeridian: 1,
            endDate: new Date()
        }).on("changeDate", function (ev) {
            var startTime = $("#collect-data-form-group #startTime").val();
            var endTime = $("#collect-data-form-group #endTime").val();

            if('' != startTime && '' != endTime){
                if(startTime > endTime){ // 开始时间大于结束时间
                    $(this).val('');
                    alert("结束时间必须大于或等于开始时间！");
                }
            }

            $("#queryByCollectTime").click();

        });


        });


        function assignTasks() {

            var ass = $('#myInternSelect').selectpicker('val');
            if(null == ass || ass == undefined || ass.length < 1){
                myalert(null,'没有任何一个实习生被选中，请检查！');
                return false;
            }

            var arr = [];
            var needSum = 0;
            var numberFlag = 0;
            $("#assignForm label.user-label").each(function (index, item) {
                var obj = {};
                obj.username = $(item).text();
                obj.number = parseInt($(item).next("input").val());
                if(isNaN(obj.number)){
                    numberFlag++;
                } else {
                    needSum += obj.number;
                }
                arr.push(obj);
            });

            if(numberFlag > 0){
                myalert(null,'项数必须为正整数，请检查！');
                return false;
            }

            if(needSum == 0){
                myalert(null, "分配的总项数为0，不需要操作，请检查！");
                return false;
            }

            var canDistrubteTotalClCount = parseInt($.trim($("#canDistrubteTotalClCount").html()));
            if(needSum > canDistrubteTotalClCount){
                myalert(null, "可分配的项数总和为：" + canDistrubteTotalClCount + ", 请检查！");
                return false;
            }

            if($.trim($("#virtual-feedback-time-input").val()) == ""){
                myalert(null, "请选择要求反馈时间！");
                return false;
            }

            $("body").mLoading("show");

            var url = '/personWashAdmin/assignTasks.do?t=1';
            url += '&' + 'feedbackTime=' + ($("#virtual-feedback-time-input").val() == '' ? "" : ($("#virtual-feedback-time-input").val() + ":00"));
            url += '&' + 'maxRecord=' + needSum;
            url += '&' + 'irLasttimestartDate=' + ($("#collect-data-form-group #startTime").val() == '' ? "" : ($("#collect-data-form-group #startTime").val() + ":00"));
            url += '&' + 'irLasttimeendDate=' + ($("#collect-data-form-group #endTime").val() == '' ? "" : ($("#collect-data-form-group #endTime").val() + ":00"));

            $.ajax({
                cache: true,
                type: "POST",
                url:  url,
                data: JSON.stringify(arr),
                contentType: 'application/json;charset=utf-8',
                async: true,
                success: function (data) {
                    $("body").mLoading("hide");
                    if(data.assignFlag == 0){
                        myalert(null, "没有找到合适的记录，未创建任务,请检查！");
                    } else {
                        myalert(null, "<span style='color:green;'>创建了" + data.assignFlag + "条任务！</span>");
                        $("#assignForm").get(0).reset();
                        $("#mainDg").bootstrapTable("refresh");
                        $("#canDistrubteTotalClCount").html(data.clCount);
                        $('#myInternSelect').selectpicker('val','');
                    }
                },
                error: function (data) {
                    $("body").mLoading("hide");
                    alert("服务器异常！");
                }
            });


        }


        function searchByFilter() {

            $("#mainDg").bootstrapTable("refresh",{
                query : {
                    irLasttimestartDate : $("#collect-data-form-group #startTime").val() == "" ? "" : ($("#collect-data-form-group #startTime").val() + ":00" ),
                    irLasttimeendDate : $("#collect-data-form-group #endTime").val() == "" ? "" : ($("#collect-data-form-group #endTime").val() + ":00" )
                },
                pageNumber : 1
            });


        }


        function popLookupCheckDataDialog(checkId, clCount) {
            showModalDialog({
                title : '待查数据（项数：<span class="badge" style="background-color:#abc;font-weight:bold;">'+ clCount +'</span>）',
                id : 'myModal',
                btnHide: true,
                url: '/personWashAdmin/popLookupCheckDataDialog.do?id=' + checkId
            });
        }

    </script>

</body>
</html>
