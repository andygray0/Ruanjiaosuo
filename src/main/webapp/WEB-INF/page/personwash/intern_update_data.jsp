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
                        <div <c:if test="${block.saved}">style="font-weight:bold;color:green;"</c:if>
                             <c:if test="${!block.saved}">style="font-weight:bold;color:red;"</c:if>
                        >第<span style="">${status.index + 1}</span>项：</div>
                        <div
                             <c:if test="${block.saved}">class="form-group has-success"</c:if>
                             <c:if test="${!block.saved}">class="form-group has-error"</c:if>
                        >
                            <label class="col-sm-3">${block.title}：</label>
                            <div class="col-sm-9">
                                <c:if test="${block.tableField.fieldType == 'INT'}">
                                    <input class="form-control"
                                           <c:if test="${!block.saved}">onkeyup="checkInputIsChanged(this);"</c:if>
                                            type = "number" onkeypress='return(/[\d]/.test(String.fromCharCode(event.keyCode) ) );'
                                           oninput="if(value.length > 9)value=value.slice(0,9)"
                                           data-oldvalue="${block.value}" name="${block.property}" value="${block.value}" />
                                </c:if>
                                <c:if test="${block.tableField.fieldType != 'INT'}">
                                    <input class="form-control"
                                           <c:if test="${block.tableField.fieldType == 'VARCHAR'}">
                                               maxlength="${block.tableField.fieldLength}"
                                           </c:if>
                                           <c:if test="${!block.saved}">onkeyup="checkInputIsChanged(this);"</c:if>
                                           data-oldvalue="${block.value}" name="${block.property}" value="${block.value}" />
                                </c:if>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                <div class="form-group" style="width:95%;margin-left:20px;">
                    <label>备注：</label>
                    <input class="form-control" name="clRemark" maxlength="100" value="${check.clRemark}"  />
                </div>
            </form>
        </div>

    </div>

    <div id="bottom-toolbar" style="margin-top:20px;">
        <button class="btn btn-primary" onclick="saveDatas(1);" >
            <span class="glyphicon glyphicon-saved" aria-hidden="true"></span>
            <span>保存</span>
        </button>
        <button class="btn btn-danger" style="margin-left:15px;" onclick="saveDatas(2);">
            <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
            <span>临时保存</span>
        </button>
        <button class="btn btn-default" style="margin-left:15px;float:right;margin-right:30px;" onclick="updateNext();">
            <span>下一条</span>
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        </button>
        <button class="btn btn-default"  style="margin-left:15px;float:right;"  onclick="updatePrev();" >
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span>上一条</span>
        </button>
        <span style="margin-left:20px;"><span style="font-weight:bold;">修改状态：</span><span id="pop-dialog-span-status">
            <c:if test="${check.clWorkStatus == 0}">未修改</c:if>
            <c:if test="${check.clWorkStatus == 1}"><span style='color:green;'>已保存</span></c:if>
            <c:if test="${check.clWorkStatus == 2}"><span style='color:red;'>已临时保存</span></c:if>
        </span></span>
    </div>

</div>


<script type="text/javascript">

    function checkInputIsChanged(input) {
        var oldvalue = $.trim($(input).data("oldvalue"));
        var value = $.trim($(input).val());
        var $groupdiv = $(input).parent().parent();
        if(oldvalue != value){ // 数据变化
            $groupdiv.removeClass("has-error");
            $groupdiv.addClass("has-success");
            $groupdiv.prev().css("color","green");
            $groupdiv.next().find("div span").css("color","green");
        } else {
            // 数据未变化
            $groupdiv.removeClass("has-success");
            $groupdiv.addClass("has-error");
            $groupdiv.prev().css("color","red");
            $groupdiv.next().find("div span").css("color","red");
        }
    }

    function saveDatas(clWorkStatus){

        var saved = undefined;

       if(1 == clWorkStatus){
           var $groupHasErrorDiv = $("#update-wait-check-data-form div div.has-error");
           if($groupHasErrorDiv.length > 0){ // 有未修改的项
               var cfm = confirm("有未修改的项，是否确认保存？");
               if(!cfm) return false;
           }
       }

        $("body").mLoading("show");

        var $groupDiv = $("#update-wait-check-data-form div div.has-success");
        $.each($groupDiv, function (index, item) {
            if(undefined == saved){
                saved = '';
            }
            saved += "," + $(item).find("input").attr("name");
        });

        saved = undefined == saved ? "" : saved.substr(1);

        var params = $("#update-wait-check-data-form").serialize();
        params += "&irSid=" + ${check.irSid};
        params += "&saved=" + saved;
        params += "&clWorkStatus=" + clWorkStatus;
        params += "&id=" + ${check.id};

        $.post("/personWashIntern/saveAfterUpdate.do",params,function(data){
            $("#pop-dialog-span-status").html(clWorkStatus == 1 ? "<span style='color:green;'>已保存</span>" : "<span style='color:red;'>已临时保存</span>");
            $("body").mLoading("hide");
        },'json');
    }

    
    function updateNext() {
        $("body").mLoading("show");
        var saveText = $.trim($("#pop-dialog-span-status span").html());
        if(saveText != "已保存"){
            saveDatas(2);
        }
        var clWorkStatus = $("#the-check-data-modify-status").val();
        var recordIndex = ${recordIndex};
        if((recordIndex + 1 ) >= ${recordTotal}){
            recordIndex = recordIndex - ${recordTotal};
        }
        var url = '/personWashIntern/popUpdateCheckDataDialog.do?id=' + "" + "&recordIndex=" + ( recordIndex + 1 ) + "&recordTotal=" + ${recordTotal} + "&taskId=" + ${taskId} + "&clWorkStatus=" + clWorkStatus;
        $("#myModal").find(".modal-body").load(url,{},function(data){
            $("#pop-title-record-index").html(recordIndex + 2);
            $("body").mLoading("hide");
        });
    }
    
    
    
    function updatePrev() {
        $("body").mLoading("show");
        var saveText = $.trim($("#pop-dialog-span-status span").html());
        if(saveText != "已保存"){
            saveDatas(2);
        }
        var clWorkStatus = $("#the-check-data-modify-status").val();
        var recordIndex = ${recordIndex};
        if(recordIndex < 1){
            recordIndex =  ${recordTotal} - recordIndex;
        }
        var url = '/personWashIntern/popUpdateCheckDataDialog.do?id=' + "" + "&recordIndex=" + ( recordIndex - 1 ) + "&recordTotal=" + ${recordTotal} + "&taskId=" + ${taskId}+ "&clWorkStatus=" + clWorkStatus;
        $("#myModal").find(".modal-body").load(url,{},function(data){
            $("#pop-title-record-index").html(recordIndex);
            $("body").mLoading("hide");
        });
    }

</script>