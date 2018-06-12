<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<head>
    <meta charset="UTF-8"/>
</head>

<input type="hidden" value="${roleId}" name="roleId2" id="roleId2">
<h5>角色名称： <span style="color:darkorange;">${roleName}</span></h5>
<hr/>
<div>


    <c:forEach items="${menuListLevel1}" var="level1Menu" varStatus="vs">
        <div class="dropdown open" style="float:left;margin-right:20px;">
            <button type="button" class="btn dropdown-toggle" id="dropdownMenu1${level1Menu.id}" data-toggle="dropdown">
                <span>${level1Menu.name}</span>
                <span class="caret"></span>
            </button>
            <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1${level1Menu.id}">
                <c:forEach items="${menuListLevel2}" var="level2Menu" varStatus="vs2">
                    <c:if test="${level2Menu.pid == level1Menu.id}">
                        <li role="presentation">
                            <a role="menuitem" tabindex="-1" href="#">${level2Menu.name}</a>
                        </li>
                        <li role="presentation" class="divider"></li>
                    </c:if>
                </c:forEach>
            </ul>
        </div>
    </c:forEach>



</div>