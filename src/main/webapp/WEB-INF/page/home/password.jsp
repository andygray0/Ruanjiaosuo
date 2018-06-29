
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>修改密码</title>
    <meta charset="UTF-8">
    <link href="../../js/bootstrap/css/bootstrap.css" rel="stylesheet"  type="text/css"/>
    <link href="../../js/bootstrap-table/bootstrap-table.css" rel="stylesheet"  type="text/css"/>
    <link href="../../js/bootstrap3-editable/css/bootstrap-editable.css" rel="stylesheet"  type="text/css" />
    <link href="../../js/bootstrapValidator/bootstrapValidator.min.css" rel="stylesheet"  type="text/css" />

    <link href="../../js/plupload-2.0.0/js/jquery.ui.plupload/css/jquery.ui.plupload.css" rel="stylesheet"  type="text/css" />

    <link href="../../js/bootstrap-datetimepicker-master/css/bootstrap-datetimepicker.css" rel="stylesheet"  type="text/css"/>
    <link href="../../js/bootstrap-select/css/bootstrap-select.css" rel="stylesheet"  type="text/css"/>

    <link href="../../js/mloading/jquery.mloading.css" rel="stylesheet"  type="text/css" />


</head>
<body style="width:100%;margin:0 auto; padding: 5px;">


<div id="main-index-div">

    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">修改密码</h3>
        </div>
        <div class="panel-body" style="padding-bottom:0px;min-height:90%;">

            <form class="form-horizontal" role="form">
                <div class="form-group">
                    <label for="oldPwd" class="col-sm-2 control-label">旧密码</label>
                    <div class="col-sm-8">
                        <input type="password" class="form-control" id="oldPwd" placeholder="请输入旧密码" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="newPwd" class="col-sm-2 control-label">新密码</label>
                    <div class="col-sm-8">
                        <input type="password" class="form-control" id="newPwd" placeholder="请输入新密码" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="renewPwd" class="col-sm-2 control-label">重复新密码</label>
                    <div class="col-sm-8">
                        <input type="password" class="form-control" id="renewPwd" placeholder="请再次输入新密码" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-8">
                        <button type="button" class="btn btn-primary" onclick="modifyPwd();">
                            <span class="glyphicon glyphicon-briefcase" aria-hidden="true"></span>
                            <span>修改</span>
                        </button>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-8">
                        <div>
                            <span id="errorOut" style="color:red;"></span>
                        </div>
                    </div>
                </div>
            </form>

        </div>
    </div>

</div>


<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
    <div class="modal-dialog" style="width:750px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel2"></h4>
            </div>
            <div class="modal-body" style="max-height:400px;overflow-y:auto;">

            </div>
            <div class="modal-footer">
                <button type="button" data-operate="" class="btn btn-primary" >保存</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
<!-- /.modal -->

</body>


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

<script type="text/javascript" src="../../js/plupload-2.0.0/js/plupload.full.min.js"></script>
<script type="text/javascript" src="../../js/plupload-2.0.0/js/i18n/zh_CN.js"></script>

<script type="text/javascript" src="../../js/bootstrap-datetimepicker-master/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="../../js/bootstrap-datetimepicker-master/js/locales/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>

<script type="text/javascript" src="../../js/bootstrap-select/js/bootstrap-select.js" charset="UTF-8"></script>
<script type="text/javascript" src="../../js/bootstrap-select/js/i18n/defaults-zh_CN.js" charset="UTF-8"></script>

<script type="text/javascript" src="../../js/mloading/jquery.mloading.js"></script>

<script type="text/javascript" src="../../js/common/common.js"></script>
<script type="text/javascript" src="../../js/jquery.md5.js"></script>

<script type="text/javascript">


    function validPwdForm(){

        var oldPwd = $.trim($("#oldPwd").val());
        if("" == oldPwd){
            $("#errorOut").html("旧密码不能为空！");
            return false;
        }

        var newPwd = $.trim($("#newPwd").val());
        if("" == newPwd){
            $("#errorOut").html("新密码不能为空！");
            return false;
        }

        if(newPwd.length < 6){
            $("#errorOut").html("新密码的长度不能小于6位！");
            return false;
        }

        newPwd = $("#newPwd").val();
        var renewPwd = $("#renewPwd").val();

        if(newPwd != renewPwd){
            $("#errorOut").html("重复新密码必须和新密码一致！");
            return false;
        }

        return true;
    }

    function modifyPwd(){

        var frontValid = validPwdForm();

        if(frontValid){
            // 前台校验通过后，再后台处理

            $("body").mLoading();
            $.ajax({
                url : '/modifyPassword/modify.do',
                dataType: 'json',
                type : 'post',
                data : {
                    oldPwd : $.md5($("#oldPwd").val()),
                    newPwd : $.md5($("#newPwd").val())
                },
                success : function (result) {
                    if(result.flag){
                        $("#oldPwd").val('');
                        $("#newPwd").val('');
                        $("#renewPwd").val('');
                    }
                    $("body").mLoading("hide");
                    if(result.flag){
                        alert(result.msg);
                        $("#errorOut").html("");
                    } else {
                        $("#errorOut").html(result.msg);
                    }
                },
                error : function (data) {
                    $("body").mLoading("hide");
                    alert("服务器异常！")
                }
            });
        }

    }


</script>