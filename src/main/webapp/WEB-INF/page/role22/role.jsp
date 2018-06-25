<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>角色管理</title>
    <meta charset="UTF-8">

    <link href="../../js/bootstrap/css/bootstrap.css" rel="stylesheet"  type="text/css"/>
    <link href="../../js/bootstrap-table/bootstrap-table.css" rel="stylesheet"  type="text/css"/>
    <link href="../../js/bootstrap3-editable/css/bootstrap-editable.css" rel="stylesheet"  type="text/css" />
    <link href="../../js/bootstrapValidator/bootstrapValidator.min.css" rel="stylesheet"  type="text/css" />
    <link href="../../js/zTree/css/zTreeStyle/zTreeStyle.css" rel="stylesheet"  type="text/css"/>
    <link href="../../js/zTree/css/bootstrap/bootstrapStyle.css" rel="stylesheet"  type="text/css"/>
    <link href="../../css/common.css" rel="stylesheet"  type="text/css"/>

    <style type="text/css">
        #roleDg tr.selected td {
            background-color : linen;
        }
        .url-prefix-form-row-span{
            width:320px;
            display:inline-block;
            height:35px;
            line-height:35px;
            overflow:hidden;
            text-overflow:ellipsis;
            white-space:nowrap;
            word-break:keep-all;
        }
        .fixed-table-header{
            background-color: #bee7f3;
        }
    </style>

</head>
<body>

    <h3>角色管理</h3>
    <hr/><br/>

    <div>
        <table id="roleDg" style="background:rgb(255,255,255);" class="table table-hover"></table>
    </div>

    <div id="toolbar" class="btn-group">
        <button id="btn_add" type="button" class="btn btn-default">
            <span onclick="popAddRoleDialog();" class="glyphicon glyphicon-plus" aria-hidden="true">新增</span>
        </button>
        <button id="btn_delete" type="button" class="btn btn-default">
            <span onclick="deleteRole();" class="glyphicon glyphicon-remove" aria-hidden="true">删除</span>
        </button>
        <button id="btn_export" type="button" class="btn btn-default">
            <span onclick="popGiveRole();"  class="glyphicon glyphicon-export" aria-hidden="true">分配菜单</span>
        </button>
        <button id="btn_list" type="button" class="btn btn-default">
            <span onclick="showRoleMenus();"  class="glyphicon glyphicon-list" aria-hidden="true">显示菜单</span>
        </button>
        <button id="btn_setUrlPrefix" type="button" class="btn btn-default">
            <span onclick="setUrlPrefix();"  class="glyphicon glyphicon-asterisk" aria-hidden="true">分配权限</span>
        </button>
        <button id="btn_export_report" type="button" class="btn btn-default">
            <span onclick="popGiveReportMenuRole();"  class="glyphicon glyphicon-export" aria-hidden="true">分配报表菜单</span>
        </button>
        <button id="btn_setUrlPrefix_report" type="button" class="btn btn-default">
            <span onclick="setUrlPrefixReport();"  class="glyphicon glyphicon-asterisk" aria-hidden="true">分配报表权限</span>
        </button>
    </div>

    <!-- 模态框（Modal） -->
    <div class="modal fade" id="myModal"  tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
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

    <div id="addRoleFormDiv" style="display: none;">
        <div>
            <form class="form-horizontal" role="form" id="addRoleForm" style="width:95%;" onkeydown="if(event.keyCode==13)return false;">
                <div class="form-group">
                    <label for="name" class="col-sm-2 control-label">角色名称</label>
                    <div class="col-sm-10">
                        <input type="text" maxlength="10"  class="form-control" id="name" name="name" placeholder="请输入角色名称">
                    </div>
                </div>
                <div class="form-group">
                    <label for="roleLevel" class="col-sm-2 control-label">级别</label>
                    <div class="col-sm-10">
                        <input type="number"  min="0" max="30"  class="form-control" id="roleLevel" name="roleLevel" placeholder="请输入级别">
                    </div>
                </div>
                <div class="form-group">
                    <label for="code" class="col-sm-2 control-label">角色代码</label>
                    <div class="col-sm-10">
                        <input type="text" maxlength="10" class="form-control" id="code" name="code" placeholder="请输入角色代码">
                    </div>
                </div>
            </form>
        </div>
    </div>


    <div id="allotRoleZtreeDiv" style="display: none;">
        <div><h5>授权给角色名称： <span id="role-to-menu" style="font-weight:bold;color:#ac2925;"></span></h5></div>
        <div style="max-height:400px;overflow-y:auto;">
            <ul id="menuZtree" class="ztree"></ul>
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

    <div id="showRoleMenuAllowDiv" style="display: none;">

        <div id="detailRoleMenu" style="min-height:300px;max-height:450px;overflow-y:auto;">

        </div>
    </div>

    <div id="setUrlPrefixChooseDiv" style="display: none;">
        <div><h5>将URL前缀授权给角色名称： <span id="urlprefix-to-menu" style="font-weight:bold;color:#ac2925;"></span></h5></div>
        <div style="max-height:450px;overflow-y:auto;">
            <form class="form-horizontal" role="form" id="url-prefix-form">

            </form>
        </div>
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
            id : 'roleDg',
            url : '/role/getByPage.do',
            columns : [
                {
                    checkbox: true
                },
                {
                    title: '序号',
                    align: 'center',
                    valign: 'bottom',
                    formatter: function(value, row, index) {
                        var options = $("#roleDg").bootstrapTable("getOptions");
                        var startNo = (options.pageNumber-1) * (options.pageSize);
                        return startNo + index + 1;
                    }
                },
                {
                    field: 'name',
                    title: '角色名称',
                    width: 300,
                    editable: {
                        type: 'text',
                        title: '角色名称',
                        validate: function (v) {
                            if (!v || $.trim(v) == "") return '角色名称不能为空';
                            if(v.length > 10) return '字符长度不能超过10个';
                        }
                    }
                },
                {
                    field: 'roleLevel',
                    title: '级别',
                    editable: {
                        type: 'text',
                        title: '级别',
                        validate: function (v) {
                            if (!v || $.trim(v) == '') return '级别不能为空';
                            if(isNaN(parseInt(v)) || v < 0) return '请输入正整数';
                            if(v > 30) return '请输入30内的正整数';
                            var re = /^[0-9]+$/ ;
                            if(!re.test(v)) return '请输入正整数';
                        }
                    }
                },
                {
                    field: 'code',
                    title: '角色代码',
                    editable: {
                        type: 'text',
                            title: '角色代码',
                            validate: function (v) {
                            if (!v || $.trim(v) == '') return '角色代码不能为空';
                            if(v.length > 10) return '字符长度不能超过10个';
                        }
                    }
                }
            ],
            editSave : function(field, row, oldValue, $el){
                if("name" == field || "code" == field){
                    $.post("/role/findCountByOneField.do",{
                        id : row["id"],
                        field : field,
                        value : row[field]},
                        function (data) {
                            if(data == 1){
                                $('#roleDg').bootstrapTable('refresh');
                                showModalDialog({
                                    title : '提示',
                                    id : 'myModal',
                                    div : 'repeatFieldValueDiv',
                                    btnHide : true
                                });
                            } else if(data == 0){
                                $.post("/role/updateByOneField.do",{
                                    id : row["id"],
                                    field : field,
                                    value : row[field]
                                },function (data) {
                                    $("#roleDg").bootstrapTable("resetView");
                                });
                            }
                        },
                        'json'
                    );
                } else {
                    $.post("/role/updateByOneField.do",{
                        id : row["id"],
                        field : field,
                        value : row[field]
                    },function (data) {
                        $("#roleDg").bootstrapTable("resetView");
                    });
                }

            }
        });
        
        function popAddRoleDialog() {
            showModalDialog({
                title : '新增',
                id : 'myModal',
                div : 'addRoleFormDiv',
                operate : 'insert',
                btnText : '保存',
                btnClick : 'saveRole();'
            });
            validateForm();
        }

        function deleteRole() {

            var rows = $('#roleDg').bootstrapTable('getSelections');

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
                    btnClick : "deleteRoles('"+ ids + "');"
                });
            }

        }
        
        
        function popGiveRole() {

            var rows = $('#roleDg').bootstrapTable('getSelections');
            if(rows.length != 1){ // 一条也没选中,或者超过一条
                showModalDialog({
                    title : '分配菜单',
                    id : 'myModal',
                    div : 'allotRoleTipDiv',
                    btnHide : true
                });
            } else {
                showModalDialog({
                    title : '分配菜单',
                    id : 'myModal',
                    div : 'allotRoleZtreeDiv',
                    operate : 'allotMenus',
                    btnText : '分配',
                    btnClick : "allotMenus('"+ rows[0].id + "');"
                });
                $("#role-to-menu").html(rows[0].name);

                var setting = {
                    check: {
                        enable: true
                    },
                    data: {
                        simpleData: {
                            enable: true,
                            idKey: "id",
                            pIdKey: "pid",
                            rootPId: 0
                        }
                    }
                };

                $.get("/menu/findAllMenus.do",{"roleId" : rows[0].id},function (data) {
                    if(data && data.length > 0){
                        $.each(data, function(index, item){
                            item.url = '';
                        });
                    }
                    ztreeObj = $.fn.zTree.init($("#menuZtree"), setting, data);
                    ztreeObj.expandAll(true);
                },'json');

            }
        }

        function saveRole() {
            var validFlag = $('#'+ "addRoleForm").data('bootstrapValidator').isValid();

            if(validFlag){
                var formDatas = $("#addRoleForm").serialize();
                $.post("/role/insertOne.do",formDatas,function(data){
                    $('#myModal').modal('hide');
                    $('#roleDg').bootstrapTable('refresh');
                });
            } else {
                $('#'+ "addRoleForm").data('bootstrapValidator').validate();
            }

        }


        function deleteRoles(ids) {
            $.post("/role/deleteRoles.do",{ids : ids},function(data){
                $('#myModal').modal('hide');
                $('#roleDg').bootstrapTable('refresh');
            });
        }


        function validateForm(){

            $("#addRoleForm").bootstrapValidator({
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                fields : {
                    name: {
                        validators: {
                            notEmpty: {
                                message: '角色名称不能为空'
                            },
                            remote: {////ajax验证。服务器端返回的 result:{"valid" : false} 向服务发送当前input name值，获得一个json数据。例表示正确：{"valid" : true}
                                url: "/role/validUniqueField.do?field=name",
                                type:"GET",
                                data: function(validator) {
                                    var x_={
                                        value: validator.getFieldElements('name').val()
                                    };
                                    return x_;
                                },
                                message: '角色名称已经存在，请输入其它值'
                            }
                        }
                    },
                    roleLevel : {
                        validators: {
                            notEmpty: {
                                message: '级别不能为空'
                            }
                        }
                    },
                    code : {
                        validators: {
                            notEmpty: {
                                message: '角色代码不能为空'
                            },
                            remote: {////ajax验证。服务器端返回的 result:{"valid" : false} 向服务发送当前input name值，获得一个json数据。例表示正确：{"valid" : true}
                                url: "/role/validUniqueField.do?field=code",
                                type:"GET",
                                data: function(validator) {
                                    var x_={
                                        value: validator.getFieldElements('code').val()
                                    };
                                    return x_;
                                },
                                message: '角色代码已经存在，请输入其它值'
                            }
                        }
                    }

                }
            });

        }


        function  allotMenus(roleId) {
            var nodes = ztreeObj.getChangeCheckedNodes();

            if(nodes && nodes.length > 0){
                var cancelMenu = "";
                var addMenu = "";
                $.each(nodes, function (index,item) {
                    if(item.checked){
                        addMenu += "," + item.id;
                    } else {
                        cancelMenu += "," + item.id;
                    }
                });

                $.ajax({
                    type : 'post',
                    url : '/role/saveRoleMenuDatas.do',
                    data : {"addMenu" : addMenu.substr(1), "cancelMenu": cancelMenu.substr(1),"roleId": roleId},
                    dataType : 'json',
                    success : function (data) {
                        $("#myModal").modal('hide');
                    }
                });

            } else {
                alert("没有改变的权限！")
            }
        }



        function showRoleMenus(){

            var rows = $('#roleDg').bootstrapTable('getSelections');
            if(rows.length != 1){
                showModalDialog({
                    title : '显示菜单',
                    id : 'myModal',
                    div : 'allotRoleTipDiv',
                    btnHide : true
                });
            } else {
                showModalDialog({
                    title : '显示菜单',
                    id : 'myModal',
                    div : 'showRoleMenuAllowDiv',
                    btnHide : true
                });

                $("#detailRoleMenu").load("/role/findRoleMenuShow.do",
                    {
                        "roleId" : rows[0].id,
                        "roleName" : rows[0].name
                    },
                    function () {}
                );
            }

        }
        
        function setUrlPrefix() {
            var rows = $('#roleDg').bootstrapTable('getSelections');
            if(rows.length != 1){ // 一条也没选中,或者超过一条
                showModalDialog({
                    title : '分配权限',
                    id : 'myModal',
                    div : 'allotRoleTipDiv',
                    btnHide : true
                });
            } else {
                showModalDialog({
                    title: '分配权限',
                    id: 'myModal',
                    div: 'setUrlPrefixChooseDiv',
                    operate: 'setUrlPrefix',
                    btnText: '保存',
                    btnClick: "setUrlPrefixSaveRelation('" + rows[0].id + "','"+ rows[0].name +"');"
                });
                $("#urlprefix-to-menu").html(rows[0].name);

                $.get('/role/findAllUrlPrefixWithRole.do',{roleId : rows[0].id},function (data) {
                    $("#url-prefix-form").html("");

                    if(data && data.length > 0){
                        var temp = '<span class="url-prefix-form-row-span"><input type="checkbox" name="urlPrefixInput" value="?0" ?1><span title="?2">?3&nbsp;&nbsp;<b style="font-size:12px;">(?4)</b></span></span>';
                        var result = "";
                        $.each(data, function (index, item) {
                            var html = temp.replace("?0", item.id)
                                .replace("?1", item.roleId == null ? "" : "checked")
                                .replace("?2", item.controller)
                                .replace("?3", item.urlPrefix)
                                .replace("?4",item.note);
                            result += html;
                        });
                        $("#url-prefix-form").html(result);
                    }

                }, 'json');


            }
        }


        function setUrlPrefixSaveRelation(roleId, roleName) {
            var checkedInputs = $("#url-prefix-form").find("input:checked");
            var urlPrefixIds = [];
            $.each(checkedInputs, function (index, item) {
                urlPrefixIds.push(parseInt($(item).val()));
            });

            $.post("/role/saveUrlPrefixRoleRelation.do",{
                roleId : roleId,
                urlPrefixIds : urlPrefixIds
            }, function (data) {
                $("#myModal").modal('hide');
                $("#url-prefix-form").html("");
            },'json');

        }




        // 报表菜单
        function popGiveReportMenuRole() {

            var rows = $('#roleDg').bootstrapTable('getSelections');
            if(rows.length != 1){ // 一条也没选中,或者超过一条
                showModalDialog({
                    title : '分配报表菜单',
                    id : 'myModal',
                    div : 'allotRoleTipDiv',
                    btnHide : true
                });
            } else {
                showModalDialog({
                    title : '分配报表菜单',
                    id : 'myModal',
                    div : 'allotRoleZtreeDiv',
                    operate : 'allotMenus',
                    btnText : '分配',
                    btnClick : "allotReportRoleMenus('"+ rows[0].id + "');"
                });
                $("#role-to-menu").html(rows[0].name);

                var setting = {
                    check: {
                        enable: true
                    },
                    data: {
                        simpleData: {
                            enable: true,
                            idKey: "id",
                            pIdKey: "pid",
                            rootPId: 0
                        }
                    }
                };

                $.get("/reportMenu/findAllMenus.do",{"roleId" : rows[0].id},function (data) {
                    if(data && data.length > 0){
                        $.each(data, function(index, item){
                            item.url = '';
                        });
                    }
                    ztreeObj = $.fn.zTree.init($("#menuZtree"), setting, data);
                    ztreeObj.expandAll(true);
                },'json');

            }
        }

        function  allotReportRoleMenus(roleId) {
            var nodes = ztreeObj.getChangeCheckedNodes();

            if(nodes && nodes.length > 0){
                var cancelMenu = "";
                var addMenu = "";
                $.each(nodes, function (index,item) {
                    if(item.checked){
                        addMenu += "," + item.id;
                    } else {
                        cancelMenu += "," + item.id;
                    }
                });

                $.ajax({
                    type : 'post',
                    url : '/role/saveRoleMenuReportDatas.do',
                    data : {"addMenu" : addMenu.substr(1), "cancelMenu": cancelMenu.substr(1),"roleId": roleId},
                    dataType : 'json',
                    success : function (data) {
                        $("#myModal").modal('hide');
                    }
                });

            } else {
                alert("没有改变的权限！")
            }
        }



        function setUrlPrefixReport() {
            var rows = $('#roleDg').bootstrapTable('getSelections');
            if(rows.length != 1){ // 一条也没选中,或者超过一条
                showModalDialog({
                    title : '分配报表权限',
                    id : 'myModal',
                    div : 'allotRoleTipDiv',
                    btnHide : true
                });
            } else {
                showModalDialog({
                    title: '分配报表权限',
                    id: 'myModal',
                    div: 'setUrlPrefixChooseDiv',
                    operate: 'setUrlPrefix',
                    btnText: '保存',
                    btnClick: "setUrlPrefixSaveRelationReport('" + rows[0].id + "','"+ rows[0].name +"');"
                });
                $("#urlprefix-to-menu").html(rows[0].name);

                $.get('/role/findAllUrlPrefixWithRoleReport.do',{roleId : rows[0].id},function (data) {
                    $("#url-prefix-form").html("");

                    if(data && data.length > 0){
                        var temp = '<span class="url-prefix-form-row-span"><input type="checkbox" name="urlPrefixInput" value="?0" ?1><span title="?2">?3&nbsp;&nbsp;<b style="font-size:12px;">(?4)</b></span></span>';
                        var result = "";
                        $.each(data, function (index, item) {
                            var html = temp.replace("?0", item.id)
                                .replace("?1", item.roleId == null ? "" : "checked")
                                .replace("?2", item.controller)
                                .replace("?3", item.urlPrefix)
                                .replace("?4",item.note);
                            result += html;
                        });
                        $("#url-prefix-form").html(result);
                    }

                }, 'json');


            }
        }



        function setUrlPrefixSaveRelationReport(roleId, roleName) {
            var checkedInputs = $("#url-prefix-form").find("input:checked");
            var urlPrefixIds = [];
            $.each(checkedInputs, function (index, item) {
                urlPrefixIds.push(parseInt($(item).val()));
            });

            $.post("/role/saveUrlPrefixRoleRelationReport.do",{
                roleId : roleId,
                urlPrefixIds : urlPrefixIds
            }, function (data) {
                $("#myModal").modal('hide');
                $("#url-prefix-form").html("");
            },'json');

        }


    </script>

</body>
</html>
