<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>用户管理</title>
    <meta charset="UTF-8">

    <link href="../../js/bootstrap/css/bootstrap.css" rel="stylesheet"  type="text/css"/>
    <link href="../../js/bootstrap-table/bootstrap-table.css" rel="stylesheet"  type="text/css"/>
    <link href="../../js/bootstrap3-editable/css/bootstrap-editable.css" rel="stylesheet"  type="text/css" />
    <link href="../../js/bootstrapValidator/bootstrapValidator.min.css" rel="stylesheet"  type="text/css" />

    <style type="text/css">
        #roleDg tr.selected td {
            background-color : linen;
        }
        .fixed-table-header{
            background-color: #bee7f3;
        }
    </style>

</head>
<body>


    <div>

        <div>
            <div class="panel panel-default">
                <div class="panel-heading">用户管理</div>
                <div class="panel-body" style="padding:0px;">
                    <div>
                        <form class="form-inline" role="form" id="assignForm">
                            <div class="form-group" style="width:100%;margin-top:10px;">

                            </div>
                            <div class="form-group" style="width:100%;display:block;">
                                <div style="margin-left:45px;">
                                    <label>用户名称</label>
                                    <input id="loginNameFilter" class="form-control">

                                    <label style="margin-left:30px;">角色名称</label>
                                    <select id="roleIdFilter" class="form-control">
                                        <option value="">---请选择角色名称---</option>
                                        <c:if test="${not empty roleList}">
                                            <c:forEach items="${roleList}" var="item" varStatus="vs">
                                                <option value="${item.id}">${item.name}</option>
                                            </c:forEach>
                                        </c:if>
                                    </select>

                                    <button style="margin-left:50px;" type="button"  class="btn btn-success" onclick="queryUserByFilter();">
                                        <span class="glyphicon glyphicon-search"></span>
                                        <span>查询</span>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>


        <table id="userDg" style="background:rgb(255,255,255);" class="table table-hover"></table>
    </div>

    <div id="toolbar" class="btn-group">
        <button id="btn_add" type="button" class="btn btn-primary">
            <span onclick="popAddDialog();" class="glyphicon glyphicon-plus" aria-hidden="true">新增</span>
        </button>
        <button id="btn_delete" type="button" class="btn btn-default">
            <span onclick="deleteUser();" class="glyphicon glyphicon-remove" aria-hidden="true">删除</span>
        </button>

    </div>



    <!-- 模态框（Modal） -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
        <div class="modal-dialog" style="width:750px;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title" id="myModalLabel2"></h4>
                </div>
                <div class="modal-body">

                </div>
                <div class="modal-footer">
                    <button type="button" data-operate="" class="btn btn-primary" >保存</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->

    <div id="addFormDiv" style="display: none;">
        <div>
            <!-- form -->
            <form class="form-horizontal" role="form" id="mainForm" style="width:95%;">
                <div class="form-group">
                    <label for="loginName" class="col-sm-2 control-label">用户名称</label>
                    <div class="col-sm-10">
                        <input maxlength="20" type="text" class="form-control" id="loginName" name="loginName"
                               placeholder="请输入用户名称">
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-2 control-label">电子邮箱</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="email" name="email" placeholder="请输入电子邮箱">
                    </div>
                </div>
                <div class="form-group">
                    <label for="roleId" class="col-sm-2 control-label">角色名称</label>
                    <div class="col-sm-10">
                        <select class="form-control" id="roleId" name="roleId">
                            <option value="0">---请选择角色名称---</option>
                            <c:forEach items="${roleList}" var="item" varStatus="vs">
                                <option value="${item.id}">${item.name}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
            </form>
            <!-- ./form -->
        </div>
    </div>


    <div id="deleteRoleTipDiv" style="display: none;">
        <h5 style="margin-left:100px;color:darkred;">请至少选择一条记录，再删除！</h5>
    </div>

    <div id="deleteRoleConfirmTipDiv" style="display: none;">
        <h5 style="margin-left:100px;color:darkred;">确定要删除所选择的记录吗？</h5>
    </div>

    <div id="repeatFieldValueDiv" style="display: none;">
        <h5 style="margin-left:100px;color:darkred;">该字段的值具有唯一性，请输入其它值！</h5>
    </div>

    <div id="allotRoleTipDiv" style="display: none;">
        <h5 style="margin-left:100px;color:darkred;">请仅且只选一条记录进行操作！</h5>
    </div>


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
    <script type="text/javascript" src="../../js/common/common.js"></script>


    <script type="text/javascript">

        var ztreeObj;

        $(function () {
            tableInit.Init();
        });

        var tableInit = getDefaultDataGrid({
            id : 'userDg',
            url : '/user/getByPage.do',
            queryParams: function(params) {
                var temp = {
                    limit: params.limit,
                    page: Math.floor(params.offset / params.limit) + 1,
                    loginName : $.trim($("#loginNameFilter").val()),
                    roleId : $("#roleIdFilter").val()
                };
                return temp;
            },
            columns : [
                {
                    checkbox: true
                },
                {
                    title: '序号',
                    align: 'center',
                    valign: 'bottom',
                    formatter: function(value, row, index) {
                        var options = $("#userDg").bootstrapTable("getOptions");
                        var startNo = (options.pageNumber-1) * (options.pageSize);
                        return startNo + index + 1;
                    }
                },
                {
                    field: 'loginName',
                    title: '用户名称',
                    width: 300,
                    editable: {
                        type: 'text',
                        title: '用户名称',
                        validate: function (v) {
                            if (!v || $.trim(v) == "") return '用户名称不能为空';
                            if(v.length > 20) return '字符长度不能超过20个';
                        }
                    }
                },
                {
                    field: 'roleId',
                    title: '角色名称',
                    editable : {
                        type : 'select',
                        title : '角色名称',
                        source: function () {
                            var result = [{value:'',text:'---请选择---'}];
                            $.ajax({
                                url: '/role/findIdAndValue.do',
                                async: false,
                                type: "get",
                                data: {},
                                success: function (data, status) {
                                    $.each(data, function (key, value) {
                                        result.push({ value: value.id, text: value.name });
                                    });
                                }
                            });
                            return result;
                        }
                    }
                },
                {
                    field: 'email',
                    title: '电子邮箱',
                    editable: {
                        type: 'text',
                            title: '电子邮箱',
                            validate: function (v) {
                            if (!v || $.trim(v) == '') return '电子邮箱不能为空';
                            var reg = /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
                            if(!reg.test(v)) return '请输入正确格式的电子邮箱';
                        }
                    }
                }
            ],
            editSave : function(field, row, oldValue, $el){
                if("loginName" == field || "email" == field){
                    $.post("/user/findCountByOneField.do",{
                        id : row["id"],
                        field : field,
                        value : row[field]},
                        function (data) {
                            if(data == 1){
                                $('#userDg').bootstrapTable('refresh');
                                showModalDialog({
                                    title : '提示',
                                    id : 'myModal',
                                    div : 'repeatFieldValueDiv',
                                    btnHide : true
                                });
                            } else if(data == 0){
                                $.post("/user/updateByOneField.do",{
                                    id : row["id"],
                                    field : field,
                                    value : row[field]
                                },function (data) {
                                    $("#userDg").bootstrapTable("resetView");
                                });
                            }
                        },
                        'json'
                    );
                } else if("roleId" == field){ // 修改角色
                    $.post("/role/updateUserRoleRelation.do",{
                        userId : row["id"],
                        roleId : row[field]
                    },function (data) {
                        if(row[field] == 0){
                            $("#userDg").bootstrapTable("refresh");
                        } else {
                            $("#userDg").bootstrapTable("resetView");
                        }
                    });
                }else {
                    $.post("/user/updateByOneField.do",{
                        id : row["id"],
                        field : field,
                        value : row[field]
                    },function (data) {
                        $("#userDg").bootstrapTable("resetView");
                    });
                }

            }
        });
        
        function popAddDialog() {
            showModalDialog({
                title : '新增',
                id : 'myModal',
                div : 'addFormDiv',
                operate : 'insert',
                btnText : '保存',
                btnClick : 'saveUser();'
            });
            validateForm();
        }

        function deleteUser() {

            var rows = $('#userDg').bootstrapTable('getSelections');

            if(rows.length == 0){ // 一条也没选中
                showModalDialog({
                    title : '删除',
                    id : 'myModal',
                    div : 'deleteRoleTipDiv',
                    btnHide : true
                });
            } else { // 提示是否要删除

                var ids = "";
                $.each(rows, function(index, item){
                    ids += "," + item.id;
                });
                ids = ids.substring(1);

                showModalDialog({
                    title : '删除',
                    id : 'myModal',
                    div : 'deleteRoleConfirmTipDiv',
                    operate : 'delete',
                    btnText : '删除',
                    btnClick : "deleteUsers('"+ ids + "');"
                });
            }

        }

        
        function saveUser() {
            var validFlag = $('#'+ "mainForm").data('bootstrapValidator').isValid();

            if(validFlag){
                var formDatas = $("#mainForm").serialize();
                $.post("/user/saveUserWithRole.do",formDatas,function(data){
                    $('#myModal').modal('hide');
                    $('#userDg').bootstrapTable('refresh');
                });
            } else {
                $('#'+ "mainForm").data('bootstrapValidator').validate();
            }

        }


        function deleteUsers(ids) {
            $.post("/user/deleteUsers.do",{ids : ids},function(data){
                $('#myModal').modal('hide');
                $('#userDg').bootstrapTable('refresh');
            });
        }


        function validateForm(){

            $("#mainForm").bootstrapValidator({
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                fields : {
                    loginName: {
                        validators: {
                            notEmpty: {
                                message: '用户名称不能为空'
                            },
                            remote: {////ajax验证。服务器端返回的 result:{"valid" : false} 向服务发送当前input name值，获得一个json数据。例表示正确：{"valid" : true}
                                url: "/user/validUniqueField.do?field=loginName",
                                type:"GET",
                                data: function(validator) {
                                    var x_={
                                        value: validator.getFieldElements('loginName').val()
                                    };
                                    return x_;
                                },
                                message: '用户名称已经存在，请输入其它值'
                            }
                        }
                    },
                    email : {
                        validators: {
                            notEmpty: {
                                message: '电子邮箱不能为空'
                            },
                            regexp : {
                                regexp : /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/,
                                message : '请输入正确格式的电子邮箱'
                            },
                            remote: {////ajax验证。服务器端返回的 result:{"valid" : false} 向服务发送当前input name值，获得一个json数据。例表示正确：{"valid" : true}
                                url: "/user/validUniqueField.do?field=email",
                                type:"GET",
                                data: function(validator) {
                                    var x_={
                                        value: validator.getFieldElements('email').val()
                                    };
                                    return x_;
                                },
                                message: '电子邮箱已经存在，请输入其它值'
                            }
                        }
                    }
                }
            });

        }

        function queryUserByFilter() {
            $("#userDg").bootstrapTable("refresh",{
                query : {
                    loginName : $.trim($("#loginNameFilter").val()),
                    roleId : $("#roleIdFilter").val()
                },
                pageNumber : 1
            });
        }
        
    </script>

</body>
</html>
