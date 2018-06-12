<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<div>

    <div id="update-form" style="max-height:45%;overflow:auto;">

        <div>
            <!--<h3>网页引用标题</h3>-->
            <span style="text-indent: 30px;display:inline-block;margin-right:20px;">
                <a style="color:slateblue;" href="${check.irUrlname}" target="_blank">${check.irUrltitle}</a>
            </span>
        </div>

        <div>
            <form role="form" id="update-wait-check-data-form" class="form-horizontal"  style="width: 90%;margin:0 auto;">
                    <input type="hidden" name="needUpdateFields" value="${needUpdateFields}" />
                <c:forEach items="${coreList}" var="item" varStatus="status">
                    <c:set var="block" value="${coreMap[item]}" scope="page" />
                    <div style="border: 2px solid #ccc;padding: 20px;margin: 20px;">

                        <table class="table" style="margin-bottom:0px;">
                            <tr>
                                <th width="30%">第${status.index + 1}项：</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th width="30%">${block.title}：</th>
                                <td>${block.value}</td>
                            </tr>
                            <tr>
                                <th width="30%">该项待查原因：</th>
                                <td style="color:darkred;">${block.reason}</td>
                            </tr>
                        </table>
                    </div>
                </c:forEach>
                <div class="form-group" style="width:95%;margin-left:20px;">
                    <label>备注：</label>
                    <input class="form-control" value="${check.clRemark}" readonly />
                </div>
            </form>
        </div>

    </div>

    <div id="bottom-toolbar" style="margin-top:20px;">
        <button class="btn btn-primary" onclick="validateOk(${check.id});" >
            <span class="glyphicon glyphicon-ok-circle"></span>
            <span>通过</span>
        </button>
        <button class="btn btn-danger" style="margin-left:15px;" onclick="validateFail(${check.id});">
            <span class="glyphicon glyphicon-remove-circle"></span>
            <span>不通过</span>
        </button>
    </div>

</div>


<script type="text/javascript">

    function sleep(numberMillis) {
        var now = new Date();
        var exitTime = now.getTime() + numberMillis;
        while (true) {
            now = new Date();
            if (now.getTime() > exitTime)
                return;
        }
    }

    function validateOk(checkId) {
        $('body').mLoading("show");
        $.ajax({
            url : '/personWashTask/validateOk.do',
            method: 'get',
            data: {checkId: checkId},
            success: function(data){
                $('body').mLoading('hide');
                $("#myModal").modal('hide');
            },
            error: function (data) {
                sleep(1000);
                $('body').mLoading('hide');
                alert("服务器异常！");
            }
        });
    }
    
    function validateFail(checkId) {
        $('body').mLoading("show");
        $.ajax({
            url : '/personWashTask/validateFail.do',
            method: 'get',
            data: {checkId: checkId},
            success: function(data){
                $('body').mLoading('hide');
                $("#myModal").modal('hide');
            },
            error: function (data) {
                sleep(1000);
                $('body').mLoading('hide');
                alert("服务器异常！");
            }
        });
    }
    
</script>