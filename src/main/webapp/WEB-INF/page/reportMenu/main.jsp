<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<head>
    <meta charset="UTF-8"/>
</head>


<div>

    <h1>报表菜单</h1>
    <ul>


        <c:if test="${not empty reportMenuList}">
            <c:forEach items="${reportMenuList}" var="menu" varStatus="status">
                <c:set var="menuurl" value="${menu.url}" scope="request" />
                <%
                    String prefix = "";
                    String frm = "";
                    try{
                        String url = (String) request.getAttribute("menuurl");
                        int index = url.indexOf("/", 1);
                        prefix = url.substring(1, index);
                        frm = url.substring(index + 1);
                    } catch (Exception e){}
                %>
                <li style="height: 50px;line-height:50px;"><a style="text-decoration:none;" href="/yearSeason_<%=prefix%>/load.do?frm=<%=frm%>" target="_blank">${menu.name}</a></li>
            </c:forEach>
        </c:if>

    </ul>

</div>