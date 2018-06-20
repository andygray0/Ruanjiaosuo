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
    .fixed-table-header{
        background-color: #bee7f3;
    }
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
                <th>查询人</th>
                <td>${task.checkIntern}</td>
                <th>数据量（项）</th>
                <td>${task.itemCount}</td>
            </tr>
            <tr>
                <th>查询次数</th>
                <td>${task.checkTimes}</td>
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
            <tr>
                <th>实际查询反馈时间</th>
                <fmt:formatDate value="${task.realFeedbackTime}" pattern="yyyy-MM-dd HH:mm:ss" var="dtaskRealFeedbackTime" />
                <td>${dtaskRealFeedbackTime}</td>
                <th>验证时间</th>
                <fmt:formatDate value="${task.validateTime}" pattern="yyyy-MM-dd HH:mm:ss" var="dtaskValidateTime" />
                <td>${dtaskValidateTime}</td>
            </tr>
            <tr>
                <th>待检查的记录数（条）</th>
                <td>${task.recordCount}</td>
                <th>已验证比率</th>
                <td id="the-valid-rate-td">${validRate}</td>
            </tr>
            <tr>
                <th colspan="4" style="vertical-align: middle;border-right:none;">
                    <span style="float:left;margin-right:30px;margin-top:7px;">抽查验证百分比</span>
                    <div class="input-group" style="width:130px;float:left;margin-right:30px;" >
                        <input class="form-control" id="random-check-rate-input" <c:if test="${task.taskStatus == 2 || task.taskStatus == 5 || task.taskStatus == 4}">readonly</c:if>  value="${task.randomCheckRate}" type="number" min="5" max="100" oninput="if(value.length>3)value=value.slice(0,3);"  onkeypress='return(/[\d]/.test(String.fromCharCode(event.keyCode) ) );' />
                        <span class="input-group-addon" style="color:darkcyan;font-weight:bold;">%</span>
                    </div>
                    <c:if test="${task.taskStatus != 2 && task.taskStatus != 5 && task.taskStatus != 4 }">
                    <button id="btn_setPercent" type="button" class="btn btn-primary" onclick="setRandomCheckRate(${task.id});">
                        <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
                        <span>设置百分比</span>
                    </button>
                    </c:if>
                </th>
            </tr>
        </table>
    </div>

    <div>
            <div>
                <div id="taskDetailDgToolbar">
                    <c:if test="${task.taskStatus == 1}">
                    <button id="btn_endTask" type="button" class="btn btn-primary" onclick="endupTask(${task.id});">
                        <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
                        <span>结束任务</span>
                    </button>
                    <button id="btn_sendbackTask" type="button" class="btn btn-danger" style="margin-left:15px;" onclick="sendbackTask(${task.id});">
                        <span class="glyphicon glyphicon-share-alt" aria-hidden="true"></span>
                        <span>退回任务</span>
                    </button>
                    </c:if>

                    <c:if test="${task.taskStatus == 4}">
                        <button id="btn_handTheGiveUpTask" style="margin-left:20px;" type="button" class="btn btn-danger" onclick="handTheGiveUpTask(${task.id});">
                            <span class="glyphicon glyphicon-dashboard" aria-hidden="true"></span>
                            <span>数据处理</span>
                        </button>
                    </c:if>
                    <div style="margin-left:15px;float:right;">
                        <form role="form" class="form-inline">
                            <c:if test="${task.taskStatus == 4}">
                            <div class="form-group" style="margin-left:20px;">
                                <select class="form-control" id="the-check-data-modify-status" name="taskStatus" onchange="queryDatasBy2Status();">
                                    <option value="" selected>修改状态</option>
                                    <option value="0">未修改</option>
                                    <option value="1" selected>已保存</option>
                                    <option value="2">已临时保存</option>
                                </select>
                            </div>
                            </c:if>
                            <div class="form-group" style="">
                                <select class="form-control" id="the-check-data-valid-status" name="taskStatus" onchange="queryDatasBy2Status();">
                                    <option value="" selected>校验状态</option>
                                    <option value="0">未校验</option>
                                    <option value="1">已通过</option>
                                    <option value="2">未通过</option>
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
            width: 320,
            formatter: function(value,row,index){
                return "<span style='display:inline-block;width:300px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;' title='"+ value +"'>"+ value +"</span>";
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
            align: 'center',
            visible: '${task.taskStatus}' == '4'
        },
        {
            title: '校验状态',
            formatter:function (value,row,index) {
                var tt = isNaN(parseInt(row.clReviewStatus)) ? 0 : parseInt(row.clReviewStatus);
                if(tt == 0) return "未校验";
                if(tt == 1) return "<span style='color:green;'>已通过</span>";
                if(tt == 2) return "<span style='color:red;'>未通过</span>";
            },
            align: 'center'
        },
        {
            title: '操作',
            formatter: function (value, row, index) {
                var theTaskStatus = parseInt("${task.taskStatus}");
                if(theTaskStatus == 1 || 4 == theTaskStatus) {
                    var kkk = parseInt(row.clWorkStatus);
                    if(kkk == 1){
                        return "<a href='javascript:void(0);'  onclick='popUpdateCheckDataDialog(" + row.id + "," + row.clCount + ");'  onmouseover='$(this).css(\"color\",\"green\");' onmouseout='$(this).css(\"color\",\"#337ab7\");'>验证</a>";
                    } else{
                        return '<span onclick="popLookupCheckDataDialog('+ row.id +','+ row.clCount +');"  style="cursor:pointer;color:cornflowerblue;">'+ '查看' +'</span>';
                    }
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
            url: '/personWashTask/findByPageCheckDataByTask.do?taskId=${task.id}',
            columns: columns2,
            toolbar: 'taskDetailDgToolbar',
            height: 'auto',
            queryParams: function(params) {
                var temp = {
                    limit: params.limit,
                    page: Math.floor(params.offset / params.limit) + 1,
                    clReviewStatus: $("#the-check-data-valid-status").val(),
                    clWorkStatus: $("#the-check-data-modify-status").val()
                };
                return temp;
            }
        });
        tableInit2.Init();
    });

    
    function setRandomCheckRate(taskId) {
        var rate =  parseInt($.trim($("#random-check-rate-input").val()));
        if(isNaN(rate) || rate < 5 || rate > 100){
            alert("请输入正整数！范围为[5,100]");
            return false;
        } else {
            var url = "/personWashTask/updateRandomCheckRate.do";
            $.ajax({
                type: "GET",
                dataType: "json",
                url: url,
                data: {
                    rate: rate,
                    taskId: taskId
                },
                success: function(result) {
                    alert(result == 1 ? "修改成功！" : "修改失败！");
                },
                error: function() {
                    alert("异常！");
                }
            });
        }
    }


    function popUpdateCheckDataDialog(checkId, clCount) {
        showModalDialog({
            title : '验证数据（项数：<span class="badge" style="background-color:#abc;font-weight:bold;">'+ clCount +'</span>）',
            id : 'myModal',
            btnHide: true,
            url: '/personWashTask/popUpdateCheckDataDialog.do?id=' + checkId
        });
        $("#myModal").on("hidden.bs.modal", function () {
            // $("#left a[data-id='"+ ${task.id} +"']").click();
            $("#taskDetailDg").bootstrapTable("refresh");
            $.get("/personWashTask/getValidRate.do?taskId=" + ${task.id},{}, function (data) {
                $("#the-valid-rate-td").html(data);
            },'json');
        });
    }

    function endupTask(taskId) {
        $("body").mLoading("show");
        var alreadyValid = $.trim($("#the-valid-rate-td").html().replace("%",""));
        $.get("/personWashTask/endupTask.do",{taskId: taskId,alreadyValid:alreadyValid},function (data) {
            if(data.flag){
                $("#left a[data-id='"+ taskId +"']").click();
                $("#mainDg").bootstrapTable("refresh");
            } else {
                myalert(null, data.msg);
            }
            $("body").mLoading("hide");
        },"json");
    }


    function sendbackTask(taskId) {
        $("body").mLoading("show");
        $.get("/personWashTask/sendbackTask.do",{taskId: taskId},function (data) {
            $("#left a[data-id='"+ taskId +"']").click();
            $("#mainDg").bootstrapTable("refresh");
            $("body").mLoading("hide");
        },"json");
    }


    function queryDatasBy2Status() {
        $("#taskDetailDg").bootstrapTable("refresh",{
            query : {
                clReviewStatus: $("#the-check-data-valid-status").val(),
                clWorkStatus: $("#the-check-data-modify-status").val()
            },
            pageNumber : 1
        });
    }
    
    function handTheGiveUpTask(taskId) {
        $("body").mLoading("show");
        $.get("/personWashTask/handTheGiveUpTask.do?taskId=" + taskId,{},function (data) {
            $("#left a[data-id='"+ taskId +"']").click();
            $("#mainDg").bootstrapTable("refresh");
            $("body").mLoading("hide");
        },'json');
    }


    function popLookupCheckDataDialog(checkId, clCount) {
        showModalDialog({
            title : '待查数据（项数：<span class="badge" style="background-color:#abc;font-weight:bold;">'+ clCount +'</span>）',
            id : 'myModal',
            btnHide: true,
            url: '/personWashTask/popLookupCheckDataDialog.do?id=' + checkId
        });
    }

</script>