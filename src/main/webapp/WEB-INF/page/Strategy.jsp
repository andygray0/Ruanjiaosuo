<%--
  Created by IntelliJ IDEA.
  User: zhaoao
  Date: 2018/4/27
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>清洗策略管理</title>

    <link href="../js/bootstrap/css/bootstrap.css" rel="stylesheet"  type="text/css"/>
    <link href="../js/bootstrap-table/bootstrap-table.css" rel="stylesheet"  type="text/css"/>
    <link href="../js/bootstrap3-editable/css/bootstrap-editable.css" rel="stylesheet"  type="text/css"/>
    <link href="../js/bootstrap-validator/css/bootstrapValidator.min.css" rel="stylesheet"  type="text/css"/>
    <%--<link href="../js/bootstrap-select/css/bootstrap-select.min.css" rel="stylesheet"  type="text/css"/>--%>
    <link href="../js/selectpage/selectpage.css" rel="stylesheet"  type="text/css"/>
    <link href="../css/common.css" rel="stylesheet"  type="text/css"/>

    <style>
        .modal .modal-dialog .modal-content .form-horizontal .controls .input-file{

        }
        .shadowDown{
            z-index:9990;
        }
        .th-inner{
            font-size:14px
        }
        .fixed-table-header{
            background-color: #bee7f3;
        }
    </style>

</head>
<body>
<h3 style="margin-left: 15px">清洗策略管理</h3>
<div class="panel-body" style="padding-bottom:0px;">
    <div class="panel panel-default">
        <div class="panel-heading">过滤条件</div>
        <div class="panel-body panel-body-head">
            <form  class="form-horizontal">

                <label class="control-label col-sm-1">策略名称</label>
                <div class="col-sm-2 input-append ">
                    <input size="10" class="form-control" id="name" type="text" value="">
                </div>
                <div class="col-md-offset-6">
                    <button style="margin-left:50px;" id="btn_search_report" type="button" class="btn btn-primary" onclick="searchstrategys();" >
                        <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                        <span>查询</span>
                    </button>
                </div>
            </form>
        </div>
    </div>

    <div id="toolbar" class="btn-group">
        <button id="btn_add" type="button" data-toggle="modal" data-target="#myModal" class="btn btn-default">
            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
        </button>
        <button id="btn_delete" type="button" class="btn btn-default" onclick="deleteRows()">
            <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
        </button>
        <%--<button type="button" id="download" style="margin-left:50px" id="btn_download" class="btn btn-primary" onClick ="$('#tb_departments').tableExport({ type: 'xlsx', escape: 'false' })">数据导出</button>--%>
    </div>
    <table id="tb_departments" class="table table-hover"></table>

    <div id="myModal" class="modal fade"  role="dialog"   aria-hidden=true>
        <div class="modal-dialog modal-lg" style="width: 50%">
            <div class="modal-content">
                <div id="legend" class="">
                    <legend class="">&nbsp;&nbsp;新增</legend>
                </div>
                <form id="addform" class="form-horizontal" style="margin-left: 15px">

                    <div class="form-group">
                        <label class="col-sm-2 control-label">策略名称</label>
                        <div class="col-sm-8">
                            <input id="rulename" name="rulename" type="text" class="input-xlarge">
                        </div>
                    </div>
                    <div class="form-group">
                    <label class="col-sm-2 control-label" >策略描述</label>
                    <div class="col-sm-8">
                        <input id="description" name="description" type="text" class="input-xlarge">
                    </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" >策略配置</label>
                        <div class="col-sm-8">
                            <input id="txt_rules"  name="txt_rules" type="text" class="input-xlarge">
                        </div>
                    </div>

                </form>
                <div class="modal-footer bg-info" style="padding: 5px;">
                    <input type="hidden" id="ID" name="ID" />
                    <button type="submit" class="btn btn-primary"  onclick ="insert()">确定</button>
                    <button type="button" class="btn green" data-dismiss="modal">取消</button>
                </div>
            </div>
        </div>
    </div>


</div>
</div>
<script type="text/javascript" src="../js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="../js/jquery.form.js"></script>
<script type="text/javascript" src="../js/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="../js/bootstrap-table/bootstrap-table.js"></script>
<script type="text/javascript" src="../js/bootstrap3-editable/js/bootstrap-editable.js"></script>
<script type="text/javascript" src="../js/bootstrap-table/extensions/editable/bootstrap-table-editable.js"></script>
<script type="text/javascript" src="../js/bootstrap-table-export.js"></script>
<script type="text/javascript" src="../js/bootstrap-table/locale/bootstrap-table-zh-CN.js"></script>
<script type="text/javascript" src="../js/bootstrap-validator/js/bootstrapValidator.min.js"></script>
<script type="text/javascript" src="../js/bootstrap-validator/js/language/zh_CN.js"></script>
<script  src="../js/pdfmake.min.js"></script>
<script  src="../js/jspdf.min.js"></script>
<script  src="../js/jspdf.plugin.autotable.js"></script>
<script  src="../js/vfs_fonts.js"></script>

<script type="text/javascript" src="../js/html2canvas.min.js"></script>
<script type="text/javascript" src="../js/FileSaver.min.js"></script>
<script type="text/javascript" src="../js/tableExport.js"></script>
<script type="text/javascript" src="../js/xlsx.core.min.js"></script>
<script type="text/javascript" src="../js/bootbox.min.js"></script>
<script type="text/javascript" src="../js/moment.js"></script>
<script type="text/javascript" src="../js/plupload-2.0.0/js/plupload.full.min.js"></script>
<script type="text/javascript" src="../js/plupload-2.0.0/js/i18n/zh_CN.js"></script>
<%--<script type="text/javascript" src="../js/bootstrap-select/js/bootstrap-select.min.js"></script>--%>
<%--<script type="text/javascript" src="../js/bootstrap-select/js/i18n/defaults-zh_CN.min.js"></script>--%>
<script type="text/javascript" src="../js/selectpage/selectpage.js"></script>

<script type="text/javascript">
    function trim(str){
        return str.replace(/(^\s*)|(\s*$)/g, "");
    }
    var searchstrategys = function(){
        var name = $("#name").val();
        var temp = {
            limit:10,
            page:1,
            name:trim(name)
        };
        $('#tb_departments').bootstrapTable('refresh',temp);
    };
    $(function () {

        //1.初始化Table
        var oTable = new TableInit();
        oTable.Init();

        //2.初始化Button的点击事件
        var oButtonInit = new ButtonInit();
        oButtonInit.Init();


        validate();

    });


    var TableInit = function () {
        var oTableInit = new Object();
        //初始化Table
        oTableInit.Init = function () {
            $('#tb_departments').bootstrapTable({
                url: '/showStrategy.do',         //请求后台的URL（*）
                method: 'get',                      //请求方式（*）
                toolbar: '#toolbar',                //工具按钮用哪个容器
                striped: true,                      //是否显示行间隔色
                cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
                pagination: true,                   //是否显示分页（*）
                sortable: false,                     //是否启用排序
                sortOrder: "asc",                   //排序方式
                queryParams: oTableInit.queryParams,//传递参数（*）
                sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
                pageNumber:1,                       //初始化加载第一页，默认第一页
                pageSize: 10,                       //每页的记录行数（*）
                pageList: [10, 25, 50, 100,1000],        //可供选择的每页的行数（*）
                showColumns: false,                  //是否显示所有的列
                showRefresh: false,                  //是否显示刷新按钮
                minimumCountColumns: 2,             //最少允许的列数
                clickToSelect: true,                //是否启用点击选中行
                height: 500,                        //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
                uniqueId: "ID",                     //每一行的唯一标识，一般为主键列
                cardView: false,                    //是否显示详细视图
                detailView: false,                   //是否显示父子表
                columns: [{
                    checkbox: true
                },   {
                    field: 'id',
                    title: 'ID'
                },{
                    field: 'name',
                    title: '名称',
                    editable: {
                        type: 'text',
                        title: '名称',
                        validate: function (v) {
                            if (!v) return '名称不能为空';
                        }
                    }
                }, {
                    field: 'description',
                    title: '描述',
                    editable: {
                        type: 'text',
                        title: '描述',
                        validate: function (v) {
                            if (!v) return '描述不能为空';
                        }
                    }
                },{
                    field: 'rules',
                    title: '策略配置',
                    editable: {
                        type: 'text',
                        title: '策略配置',
                        validate: function (v) {
                            if (!v) return '配置不能为空';
                        },
                        // seperator: ',',
                        // source:[{ value: 1, text: '篮球' },
                        //     { value: 2, text: '足球' },
                        //     { value: 3, text: '游泳' }]
                        //     function () {
                        //     var result = [{value:'',text:'---请选择---'}];
                        //     $.ajax({
                        //         url: '/rulelist.do',
                        //         async: false,
                        //         type: "get",
                        //         data: {},
                        //         success: function (data, status) {
                        //             $.each(data, function (key, value) {
                        //                 result.push({ value: value.id, text: value.name });
                        //             });
                        //         }
                        //     });
                        //     return result;
                        // }
                    }
                }
                ],
                rowStyle: function (row, index) {
                    //这里有5个取值代表5中颜色['active', 'success', 'info', 'warning', 'danger'];
                    var strclass = "";
                    if (index % 2 == 1) {
                        strclass = 'active';//还有一个active
                    }
                    else {
                        return {};
                    }
                    return {classes: strclass}
                },
                onEditableSave: function (field, row) {
                    $.ajax({
                        type: "post",
                        url: "/strategyedit.do",
                        data: row,
                        dataType: 'JSON',
                        success: function (data, status) {
                            if (status == "success") {
                                var dialog = bootbox.dialog({
                                    title: '提示',
                                    message: '修改成功',
                                    buttons: {
                                        ok: {
                                            label: "确定",
                                            className: 'btn-info',
                                        }
                                    }
                                });
                            }
                        },
                        error: function () {
                            bootbox.alert('编辑失败');
                        },
                        complete: function () {

                        }

                    });
                }

            });
        };

        //得到查询的参数
        oTableInit.queryParams = function (params) {
            var name = $("#name").val();
            var temp = {   //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
                limit: params.limit,   //页面大小
                page: Math.floor(params.offset/params.limit)+1,  //页码
                name: trim(name)
            };
            return temp;
        };
        return oTableInit;
    };



    var ButtonInit = function () {
        var oInit = new Object();
        var postdata = {};

        oInit.Init = function () {
            //初始化页面上面的按钮事件
        };

        return oInit;
    };
    $.fn.serializeObject = function() {
        var o = {};
        var a = this.serializeArray();
        $.each(a, function() {
            if (o[this.name]) {
                if (!o[this.name].push) {
                    o[this.name] = [ o[this.name] ];
                }
                o[this.name].push(this.value || '');
            } else {
                o[this.name] = this.value || '';
            }
        });
        return o;
    };

    $("#myModal").on("hide.bs.modal", function() {
        $(":input").val("");
    });
    var validate =function() {
        $("#addform").bootstrapValidator({
            live: 'enabled',//验证时机，enabled是内容有变化就验证（默认），disabled和submitted是提交再验证
            excluded: [':disabled'],//排除无需验证的控件，比如被禁用的或者被隐藏的
            // submitButtons: '#btn-add',//指定提交按钮，如果验证失败则变成disabled，但我没试成功，反而加了这句话非submit按钮也会提交到action指定页面
            message: '验证失败',//好像从来没出现过
            feedbackIcons: {//根据验证结果显示的各种图标
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                rulename: {
                    validators: {
                        notEmpty: {//检测非空,radio也可用
                            message: '文本框必须输入'
                        }
                    }
                },
                description: {
                    validators: {
                        notEmpty: {//检测非空,radio也可用
                            message: '文本框必须输入'
                        }
                    }
                },
                txt_rules: {
                    validators: {
                        callback: {
                            message: '必须选择规则',
                            callback: function (value, validator) {
                                var rules = $('#txt_rules').selectPageText();
                                if (rules == "") {
                                    return false;
                                } else {
                                    return true;
                                }
                            }
                        }
                    }
                }
            }
        });
    }

    function insert(){
        $("#addform").bootstrapValidator('validate');//提交验证
        if ($("#addform").data('bootstrapValidator').isValid()) {
            var params = $("#addform").serialize();
            var ruless = $('#txt_rules').val();
            params = params + '&rules=' +ruless;
            $.post("/insertstrategy.do",params,function(result){
                if(result){
                    var dialog = bootbox.dialog({
                        title: '提示',
                        message: '新增成功',
                        buttons: {
                            ok: {
                                label: "确定",
                                className: 'btn-info'
                            }
                        }
                    });
                    $('#myModal').modal('hide');
                    $('#myModal').removeData("bs.modal");
                }else{
                    bootbox.alert("新增失败!");
                }
            });
            var temp = {   //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
                limit: 10,   //页面大小
                page: 1   //页码
            };
            $('#tb_departments').bootstrapTable('removeAll');
            $('#tb_departments').bootstrapTable('refresh',temp);
        }

    }
    function deleteRows(){
        var rows = $("#tb_departments").bootstrapTable('getAllSelections');
        bootbox.confirm({
            message: "确定删除这些规则？",
            buttons: {
                confirm: {
                    label: "确认"
                },
                cancel: {
                    label: "取消"
                }
            },
            callback: function (result) {
                if (result) {
                    if (rows) {
                        var res = "";
                        for (var i = 0; i < rows.length; i++) {
                            $.ajax({
                                url: "/deletestrategy.do",
                                data: {id: rows[i].id},
                                type: 'post',
                                async: false,
                                success: function (result) {
                                    if (!result.success) {
                                    }
                                    else{
                                        res = res + rows[i].name;
                                    }
                                }
                            })
                        }
                        if(res==""){
                            bootbox.alert("删除成功！");
                        }else{
                            bootbox.alert(res+"删除失败！");
                        }
                    }
                    var temp = {   //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
                        limit: 10,   //页面大小
                        page: 1   //页码
                    };
                    $('#tb_departments').bootstrapTable('removeAll');
                    $('#tb_departments').bootstrapTable('refresh', temp);
                }
            }
        });
    }

    $(function() {
        $("#myModal").on("hide.bs.modal", function() {
            $(this).removeData("bs.modal");
        });
        $("#btn_query").click(function(){

            var temp = {   //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
                limit: 10,   //页面大小
                page: 1   //页码
            };
            $('#tb_departments').bootstrapTable('removeAll');
            $('#tb_departments').bootstrapTable('refresh',temp);
        });

    });

    $(function() {

        $.ajax({
            url: "/rulelist.do",//写你自己的方法，返回map，我返回的map包含了两个属性：data：集合，total：集合记录数量，所以后边会有data.data的写法。。。
            type: "get",
            dataType: "json",
            data: 'data',
            success: function (data) {
                    $('#txt_rules').selectPage({
                        showField : 'name',
                        keyField : 'id',
                        data : data,
                        //仅选择模式，不允许输入查询关键字
                        selectOnly : true,
                        //关闭分页栏，数据将会一次性在列表中展示，上限200个项目
                        pagination : false,
                        //关闭分页的状态下，列表显示的项目个数，其它的项目以滚动条滚动方式展现（默认10个）
                        listSize : 15,
                        multiple : true,
                        eSelect:function(){
                            $("#addform").data('bootstrapValidator').updateStatus('txt_rules', 'NOT_VALIDATED').validateField("txt_rules")
                        },
                        eTagRemove:function(){
                            $("#addform").data('bootstrapValidator').updateStatus('txt_rules', 'NOT_VALIDATED').validateField("txt_rules")
                        }
                    });
            },
            error: function (data) {
                alert("规则加载失败" + data);
            }
        });
        $("#myModal").on("hide.bs.modal", function() {
            $(this).removeData("bs.modal");
            $('#txt_rules').val('');
            $('#txt_rules').selectPageClear();
            $("#addform").data('bootstrapValidator').destroy();
            $("#addform").data('bootstrapValidator',null);
            validate();
        });


    });
</script>

</body>
</html>
