<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<head>
    <meta charset="UTF-8"/>
    <style type="text/css">
        #detail-table tr th {
            width:30%;
        }
    </style>
</head>

<div>

    <div>
        <p><h5 style="display: inline-block;width: 100px;color:green;">节点属性值</h5>
            <button class="btn btn-primary btn-xs" onclick="editMenuInfo(${menu.id},'${menu.name}','${menu.url}',${menu.order});">
                <span class="glyphicon glyphicon-edit"></span>
                <span>修改</span>
            </button>
        </p>

        <table class="table" id="detail-table">
            <tr>
                <th>主键</th>
                <td>${menu.id}</td>
            </tr>
            <tr>
                <th>菜单名称</th>
                <td>${menu.name}</td>
            </tr>
            <tr>
                <th>父级主键</th>
                <td>${menu.pid}</td>
            </tr>
            <tr>
                <th>菜单级别</th>
                <td>${menu.menuLevel}</td>
            </tr>
            <tr>
                <th>url地址</th>
                <td>${menu.url}</td>
            </tr>
            <tr>
                <th>是否为叶子结点</th>
                <td>${menu.leaf}</td>
            </tr>
            <tr>
                <th>排序值</th>
                <td>${menu.order}</td>
            </tr>
        </table>

    </div>

    <br/>

    <div>
        <p><h5 style="color:green;">节点所分配的角色名称</h5></p>
        <ul class="list-group">
            <c:forEach items="${roleList}" var="item" varStatus="vs">
                <li data-roleId="${item.id}" class="list-group-item">${item.name}</li>
            </c:forEach>
            <c:if test="${fn:length(roleList) == 0}">
                <li style="color:red;" class="list-group-item">【一个分配的角色也没有】</li>
            </c:if>
        </ul>
    </div>

</div>

<script type="text/javascript">

    function editMenuInfo(menuId, menuName, url, order){
        showModalDialog({
            title : '修改',
            id : 'myModal',
            div: '',
            operate : 'update',
            btnText : '保存',
            btnClick : 'saveRoleMenu();'
        });

        var url = '/reportMenu/addOrUpdateMenuForm.do?menuId=' + menuId + "&parentMenuName=" + menuName;
        $.get(url, function (page) {
            $("#myModal").find(".modal-body").html(page);
            validateForm();
            $("#addMenuForm").data('bootstrapValidator').validate();
        });
    }

</script>