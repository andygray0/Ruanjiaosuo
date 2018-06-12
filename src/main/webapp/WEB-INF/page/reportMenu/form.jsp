<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<head>
    <meta charset="UTF-8"/>
</head>


<div>
    <div class="modal-main-content-div" style="min-height: 200px;max-height: 400px;overflow-y:auto;">
        <form class="form-horizontal" role="form" id="addMenuForm" style="width:95%;">
            <input type="hidden" name="id" id="id" value="${menu.id}" >
            <input type="hidden" name="pid" id="pid" value="${menu.pid}" >
            <input type="hidden" name="menuLevel" id="menuLevel" value="${menu.menuLevel}" >
            <div class="form-group">
                <label for="name" class="col-sm-2 control-label">菜单名称</label>
                <div class="col-sm-10">
                    <input value="${menu.name}"  type="text" data-oldValue="1" class="form-control" id="name" name="name" placeholder="请输入菜单名称">
                </div>
            </div>
            <div class="form-group">
                <label for="url" class="col-sm-2 control-label">访问路径</label>
                <div class="col-sm-10">
                    <input type="text" value="${menu.url}"  maxlength="200" data-oldValue="2" class="form-control" id="url" name="url" placeholder="请输入访问路径">
                </div>
            </div>
            <div class="form-group">
                <label for="order" class="col-sm-2 control-label">排序值</label>
                <div class="col-sm-10">
                    <input type="number" value="${menu.order}"  data-oldValue="3" class="form-control" id="order" name="order" placeholder="请输入排序值">
                </div>
            </div>
        </form>
    </div>
</div>