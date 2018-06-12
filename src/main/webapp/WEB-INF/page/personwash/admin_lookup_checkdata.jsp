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
            </form>
        </div>

    </div>


</div>

