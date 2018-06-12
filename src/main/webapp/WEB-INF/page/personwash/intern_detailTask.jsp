<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<style type="text/css">
    th {
        font-weight:bold;
        color:darkcyan;
        font-size:12px;
    }
    #detail-table-info th, #detail-table-info td {
        white-space: nowrap;
        font-size:12px;
    }
    #taskDetailDg td{
        white-space: nowrap;
        font-size: 12px;
    }
    #mainDetailTaskDiv .fixed-table-body{
        max-height:300px;
    }
    input::-ms-clear{display:none;}
</style>

<div style="background-color:#FFFFFF;">

    <div>
        <div style="display: none;">
            <input type="hidden" id="dtask-id" value="${task.id}" />
        </div>
        <table class="table table-bordered table-striped" id="detail-table-info">
            <tr>
                <th>分配任务</th>
                <td style="color:darkseagreen;">${task.taskName}</td>
                <th>分配时间</th>
                <fmt:formatDate value="${task.createTime}" pattern="yyyy-MM-dd HH:mm:ss" var="dtaskCreateTime" />
                <td>${dtaskCreateTime}</td>
            </tr>
            <tr>
                <th>任务状态</th>
                <td>
                    <c:if test="${task.taskStatus != 2 && task.taskStatus != 5}"><span style="color:darkred;">进行中</span></c:if>
                    <c:if test="${task.taskStatus == 2 || task.taskStatus == 5}"><span style="color:darkgreen;">结束</span></c:if>
                </td>
                <th>要求反馈时间</th>
                <fmt:formatDate value="${task.virtualFeedbackTime}" pattern="yyyy-MM-dd HH:mm:ss" var="dtaskVirtualFeedbackTime" />
                <td>${dtaskVirtualFeedbackTime}</td>
            </tr>
            <tr>
                <th>查询次数</th>
                <td id="the-check-times-th">${task.checkTimes}</td>
                <th>查询状态</th>
                <td>
                    <c:if test='${task.taskStatus == "0"}'><span style="color:darkred;">查询中</span></c:if>
                    <c:if test='${task.taskStatus == "1"}'><span style="color:darkred;">待验证</span></c:if>
                    <c:if test='${task.taskStatus == "2"}'><span style="color:darkgreen;">验证通过</span></c:if>
                    <c:if test='${task.taskStatus == "3"}'><span style="color:darkred;">验证退回</span></c:if>
                    <c:if test='${task.taskStatus == "4"}'><span style="color:red;">任务被放弃</span></c:if>
                    <c:if test='${task.taskStatus == "5"}'><span style="color:red;">放弃后已处理</span></c:if>
                </td>
            </tr>
        </table>
    </div>

    <div>
            <div>
                <div id="taskDetailDgToolbar">
                    <c:if test="${task.taskStatus == 0 || task.taskStatus == 3}">
                    <button id="btn_endTask" type="button" class="btn btn-primary" onclick="internCommitTask(${task.id});">
                        <span class="glyphicon glyphicon-circle-arrow-up" aria-hidden="true"></span>
                        <span>提交任务</span>
                    </button>
                    <button id="btn_giveupTask" type="button" class="btn btn-danger" style="margin-left:10px;" onclick="internGiveupTask(${task.id});">
                        <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                        <span>放弃任务</span>
                    </button>
                    </c:if>
                    <div style="margin-left:150px;float:right;">
                        <form role="form" class="form-inline">
                            <div class="form-group">
                                <label class="" for="the-check-data-modify-status">修改状态：</label>
                                <select class="form-control" id="the-check-data-modify-status" name="taskStatus" onchange="queryDatasByModifiedStatus(this);">
                                    <option value="" selected>所有</option>
                                    <option value="0">未修改</option>
                                    <option value="1">已保存</option>
                                    <option value="2">已临时保存</option>
                                </select>
                            </div>
                        </form>
                    </div>
                </div>
                <table id="taskDetailDg" style="background:rgb(255,255,255);" class="table table-hover"></table>
            </div>
    </div>


</div>


<script type="text/javascript">

    var columns2 = [
        {
            field: "irSid",
            title: "ID",
            align: 'center'
        },
        {
            field: "irUrltitle",
            title: "网页引用标题",
            width: 280,
            formatter: function(value,row,index){
                return "<span style='display:inline-block;width:260px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;' title='"+ value +"'>"+ value +"</span>";
            }
        },
        {
            field: "clCount",
            title: "项数",
            align: 'center',
            formatter:function (value,row,index){
                return '<span class="badge" style="background-color:#abc;">'+ value +'</span>';
            }
        },
        {
            title: '修改状态',
            formatter:function (value,row,index) {
                var tt = "未修改";
                switch (parseInt(row.clWorkStatus)){
                    case 0 : tt = "未修改";break;
                    case 1 : tt = "<span style='color:green;'>已保存</span>";break;
                    case 2 : tt = "<span style='color:red;'>已临时保存</span>";break;
                }
                return tt;
            },
            align: 'center'
        },
        {
            title: '操作',
            formatter: function (value, row, index) {

                var options = $("#taskDetailDg").bootstrapTable("getOptions");
                var startNo = (options.pageNumber-1) * (options.pageSize);
                var recordIndex = startNo + index;

                var theTaskStatus = parseInt("${task.taskStatus}");
                if(0 == theTaskStatus || theTaskStatus == 3){
                    return "<a href='javascript:void(0);' dynamaicfields = '${dynamaicFields}' onclick='popUpdateCheckDataDialog("+ row.id + "," + row.clCount + "," + recordIndex + ");' onmouseover='$(this).css(\"color\",\"green\");' onmouseout='$(this).css(\"color\",\"#337ab7\");'>修改</a>";
                } else {
                    return '<span onclick="popLookupCheckDataDialog('+ row.id +','+ row.clCount +');"  style="cursor:pointer;color:cornflowerblue;">'+ '查看' +'</span>';
                }
            },
            align: 'center'
        }
    ];

    $(function () {
        // 初始化表
        var tableInit2 = getDefaultDataGrid({
            id: 'taskDetailDg',
            url: '/personWashIntern/findByPageCheckDataByTask.do?taskId=${task.id}',
            columns: columns2,
            toolbar: 'taskDetailDgToolbar',
            height: 'auto',
            queryParams: function(params) {
                var temp = {
                    limit: params.limit,
                    page: Math.floor(params.offset / params.limit) + 1,
                    clWorkStatus: $("#the-check-data-modify-status").val()
                };
                return temp;
            }
        });
        tableInit2.Init();
    });


    function popUpdateCheckDataDialog(checkId, clCount,recordIndex) {
        var recordTotal = $("#taskDetailDg").bootstrapTable('getOptions').totalRows;
        var title = '修改数据（项数：<span class="badge" style="background-color:#abc;font-weight:bold;">'+ clCount +'</span>）';
        title += "<span style='font-size:12px;float:right;margin-right:20px;'>（总记录数：<span id='pop-title-total-record'>"+ recordTotal +"</span>, 当前第<span  id='pop-title-record-index'>"+ (recordIndex + 1) +"</span>条）</span>";
        showModalDialog({
            title : title,
            id : 'myModal',
            btnHide: true,
            url: '/personWashIntern/popUpdateCheckDataDialog.do?id=' + checkId + "&recordIndex=" + recordIndex + "&recordTotal=" + recordTotal + "&taskId=" + ${task.id}
        });
        $("#myModal").on("hidden.bs.modal", function () {
            $("#taskDetailDg").bootstrapTable("refresh");
        });
    }


    function internCommitTask(taskId) {
        $("body").mLoading("show");
        var checkTimes = parseInt($.trim($("#the-check-times-th").html()));
        $.get('/personWashIntern/commitTask.do',{taskId: taskId,checkTimes: checkTimes},function (data) {
            if(data.flag){
                $("#left a[data-id='"+ taskId +"']").click();
                $("#mainDg").bootstrapTable("refresh");
            }
            $("body").mLoading("hide");
            myalert(null, data.msg);
        },'json');
    }

    
    function queryDatasByModifiedStatus(select) {
        $("#taskDetailDg").bootstrapTable("refresh",{
            query : {
                clWorkStatus: $(select).val()
            },
            pageNumber : 1
        });
    }



    function  internGiveupTask(taskId) {
        var b = confirm("您确定要放弃任务吗？");
        if(b){
            $("body").mLoading("show");
            var checkTimes = parseInt($.trim($("#the-check-times-th").html()));
            $.get("/personWashIntern/internGiveupTask.do?taskId=" + taskId,{checkTimes: checkTimes},function (data) {
                $("#left a[data-id='"+ taskId +"']").click();
                $("#mainDg").bootstrapTable("refresh");
                $("body").mLoading("hide");
            },'json');
        }
    }


    function popLookupCheckDataDialog(checkId, clCount) {
        showModalDialog({
            title : '待查数据（项数：<span class="badge" style="background-color:#abc;font-weight:bold;">'+ clCount +'</span>）',
            id : 'myModal',
            btnHide: true,
            url: '/personWashIntern/popLookupCheckDataDialog.do?id=' + checkId
        });
    }
    
</script>