<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>菜单管理</title>
    <meta charset="UTF-8">

    <link href="../../js/bootstrap/css/bootstrap.css" rel="stylesheet"  type="text/css"/>
    <link href="../../js/bootstrapValidator/bootstrapValidator.min.css" rel="stylesheet"  type="text/css" />
    <link href="../../js/zTree/css/zTreeStyle/zTreeStyle.css" rel="stylesheet"  type="text/css"/>
    <link href="../../js/zTree/css/bootstrap/bootstrapStyle.css" rel="stylesheet"  type="text/css"/>
    <link href="../../css/common.css" rel="stylesheet"  type="text/css"/>

</head>
<body>


    <div>
        <div class="left" style="width: 30%;float:left;">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        <span class="glyphicon glyphicon-th-list"></span>
                        <span>菜单管理</span>
                    </h3>
                </div>
                <div class="panel-body" style="padding:0px;overflow:auto;max-height:600px;">
                    <div style="">
                        <ul class="ztree" id="ztreeObj"></ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="right" style="width: 66%;float:left;margin-left:20px;">
            <div style="">
                <div id="right-main-content-div">

                </div>
            </div>
        </div>
    </div>


    <!-- 模态框（Modal） -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog"  aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title" >菜单</h4>
                </div>
                <div class="modal-body">

                </div>
                <div class="modal-footer">
                    <button id="saveMenuBtn" type="button" class="btn btn-primary" onclick="saveRoleMenu();">保存</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->

    <script src="../../js/html/jquery-1.10.0.min.js"></script>
    <script src="../../js/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript" src="../../js/bootstrapValidator/bootstrapValidator.min.js"></script>
    <script type="text/javascript" src="../../js/bootstrapValidator/zh_CN.min.js"></script>
    <script src="../../js/zTree/jquery.ztree.all.min.js"></script>
    <script type="text/javascript" src="../../js/common/common.js"></script>

    <script type="text/javascript">
        var ztreeObj;

        var setting = {

            edit: {
                drag : false,
                enable: true,
                removeTitle : '删除',
                renameTitle : '重命名',
                showRenameBtn: false,
                showRemoveBtn : setRemoveBtn
            },

            check: {
                enable: true,
                chkStyle: "radio",  //单选框
                radioType: "all",   //对所有节点设置单选
                chkboxType:  { "Y": "", "Y": "" }   // 取消级联勾选
            },

            data: {
                simpleData: {
                    enable: true,
                    idKey: "id",
                    pIdKey: "pid",
                    rootPId: 0
                }
            },

            view: {
                selectedMulti: false,
                addHoverDom: addHoverDom,
                removeHoverDom: removeHoverDom
            },

            callback: {
                onCheck: zTreeOnCheck,
                onClick : zTreeOnClick,
                beforeRemove: zTreeBeforeRemove
            }
        };

        $(function(){

            $('#myModal').on('hide.bs.modal', function () {
                $('#'+'addMenuForm').bootstrapValidator('resetForm');
                $('#'+'addMenuForm')[0].reset();
                $("#id").val("");
           });

            $.get("/menu/findAllMenus.do",{},function (data) {

                if(data && data.length > 0){
                    $.each(data, function (index,item) {
                        item.url = undefined;
                    });
                }

                ztreeObj = $.fn.zTree.init($("#ztreeObj"), setting, data);
                ztreeObj.expandAll(true);
            },'json');
        });
        
        
        function zTreeOnCheck(event, treeId, treeNode) {
            zTreeOnClick(event,treeId,treeNode);
            ztreeObj.selectNode(treeNode);
        }

        function zTreeOnClick(event, treeId, treeNode) {
            ztreeObj.checkNode(treeNode, true, false);
            $("#right-main-content-div").load("/menu/getMenuById.do", {id : treeNode.id});
        }


        var newCount = 1;
        function addHoverDom(treeId, treeNode) {
            if(treeNode.menuLevel < 2){
                var sObj = $("#" + treeNode.tId + "_span");
                if (treeNode.editNameFlag || $("#addBtn_"+treeNode.tId).length>0) return;
                var addStr = "<span class='button add' id='addBtn_" + treeNode.tId
                    + "' title='新增' onfocus='this.blur();'></span>";
                sObj.after(addStr);
                var btn = $("#addBtn_"+treeNode.tId);
                if (btn) btn.bind("click", function(){
                    showModalDialog({
                        title : '新增',
                        id : 'myModal',
                        url : '/menu/addOrUpdateMenuForm.do?pid=' + treeNode.id + "&parentMenuName=" + treeNode.name,
                        operate : 'insert',
                        btnText : '保存',
                        btnClick : 'saveRoleMenu();'
                    });

                    $("#myModal").find("div.modal-body div span:eq(1)").html(treeNode.name);
                    $("#pid").val(treeNode.id);
                    $("#menuLevel").val(treeNode.menuLevel + 1);

                    $("#myModal").on("shown.bs.modal", function () {
                        validateForm();
                        $('#'+'addMenuForm').bootstrapValidator('resetForm');
                    });
                });
            }
        }

        function removeHoverDom(treeId, treeNode) {
            $("#addBtn_"+treeNode.tId).unbind().remove();
        }

        function zTreeBeforeRemove(treeId, treeNode) {
            var result = confirm("确定要删除菜单吗？");

            if(result){
                var ids = "" + treeNode.id;
                if(treeNode.menuLevel == 1){
                    var nodes = ztreeObj.getNodesByParam("pid", treeNode.id, null);
                    $.each(nodes, function (index, item) {
                        ids += "," + item.id;
                    });
                }

                $.post("/menu/deleteMenu.do", {"ids" : ids}, function (data) {
                    console.info(data);
                });
            }

            return result;
        }

        function setRemoveBtn(treeId, treeNode) {
            return treeNode.menuLevel > 0;
        }


        function saveRoleMenu() {

            var validFlag = $("#addMenuForm").data('bootstrapValidator').isValid();
            if(!validFlag){
                $("#addMenuForm").data('bootstrapValidator').validate();
                return;
            }

            var params = $("#myModal #addMenuForm").serialize();

            if("" == $("#id").val()){ // 新增
                $.post("/menu/saveMenu.do",params, function (data) {

                    $("#myModal").modal('hide');
                    var node = ztreeObj.getNodeByParam("id",parseInt($("#pid").val()) );
                    var nodeList = [data];
                    ztreeObj.addNodes(node, nodeList);

                    setting.callback.onClick(null, ztreeObj.setting.treeId, ztreeObj.getNodeByParam("id",data.id,null));
                    ztreeObj.selectNode(ztreeObj.getNodeByParam("id",data.id,null));

                },'json');
            } else {
                var fields = ["name","url","order"];
                var flag = formIsChanged(fields);

                if(flag){ // 数据发生了变化
                    // 修改
                    $.post("/menu/updateMenu.do", params, function (data) {
                        $("#right-main-content-div").load("/menu/getMenuById.do", {id : $("#id").val()});
                        var newNode = ztreeObj.getNodesByParam("id",$("#id").val() );
                        newNode[0].name = $("#name").val();
                        ztreeObj.updateNode(newNode[0]);
                        $("#myModal").modal('hide');
                    });
                } else{
                    $("#myModal").modal('hide');
                }

            }

        }


        function formIsChanged(fields) {
            var flag = false;
            $.each(fields, function (index, item) {
                var val = $("#" + item).val();
                var old = $("#" + item).attr("data-oldValue");
                if(val != old){
                    flag = true;
                    return;
                }
            });
            return flag;
        }

        function validateForm(){

            $("#addMenuForm").bootstrapValidator({
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                fields : {
                    name: {
                        validators: {
                            notEmpty: {
                                message: '菜单名称不能为空'
                            },
                            remote: {////ajax验证。服务器端返回的 result:{"valid" : false} 向服务发送当前input name值，获得一个json数据。例表示正确：{"valid" : true}
                                url: "/menu/validUniqueFieldComplex.do?field=name&pid=" + $("#pid").val() + "&operate=" + $("#saveMenuBtn").attr("data-operate") + "&id=" + $("#id").val(),
                                type:"GET",
                                data: function(validator) {
                                    var x_={
                                        value: validator.getFieldElements('name').val()
                                    };
                                    return x_;
                                },
                                message: '菜单名称已经存在，请输入其它值'
                            }
                        }
                    },
                    url : {
                        validators: {
                            notEmpty: {
                                message: '访问路径不能为空'
                            }
                        }
                    },
                    order : {
                        validators: {
                            notEmpty: {
                                message: '排序值不能为空'
                            },
                            regexp : {
                                regexp : /^[0-9]{1,2}$/,
                                message : '请输入两位正整数'
                            }
                        }
                    }
                }
            });
        }


    </script>

</body>
</html>
