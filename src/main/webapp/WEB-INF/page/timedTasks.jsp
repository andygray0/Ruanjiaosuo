<%--
  Created by IntelliJ IDEA.
  User: zhaoao
  Date: 2018/5/10
  Time: 20:28
  To change this template use File | Settings | File Templates.
--%>
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
    <title>定时任务</title>
    <link href="../js/bootstrap/css/bootstrap.css" rel="stylesheet"  type="text/css"/>
    <link href="../js/bootstrap-table/bootstrap-table.css" rel="stylesheet"  type="text/css"/>
    <link href="../js/bootstrap3-editable/css/bootstrap-editable.css" rel="stylesheet"  type="text/css"/>
    <link href="../js/bootstrap-validator/css/bootstrapValidator.min.css" rel="stylesheet"  type="text/css"/>
    <link href="../js/bootstrap-select/css/bootstrap-select.min.css" rel="stylesheet"  type="text/css"/>
    <link href="../js/bootstrap-datetimepicker-master/css/bootstrap-datetimepicker.css" rel="stylesheet" type="text/css"/>
    <link href="../css/common.css" rel="stylesheet"  type="text/css"/>
    <style>
        .th-inner{
            font-size:14px
        }
        .fixed-table-header{
            background-color: #bee7f3;
        }
        .myeditable-emptyclass{
            color: red;
            border-bottom: none!important;
        }
    </style>

</head>

<body>
<h3 style="margin-left: 15px">定时任务</h3>
<div class="panel-body" >
    <div class="panel panel-default">
        <div class="panel-heading">过滤条件</div>
        <div class="panel-body panel-body-head">
            <form  class="form-horizontal">

                <label class="control-label col-sm-1">任务名称</label>
                <div class="col-sm-2 input-append ">
                    <input size="10" class="form-control" id="name" type="text" value="">
                </div>
                <div class="col-md-offset-6">
                    <button style="margin-left:50px;" id="btn_search_report" type="button" class="btn btn-primary" onclick="searchtimer();" >
                        <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                        <span>查询</span>
                    </button>
                </div>
            </form>
        </div>
    </div>
    <div id="toolbar" class="btn-group">
        <button id="btn_add" type="button" class="btn btn-default" onclick="window.location.href='/datawash/newTimer.do'">
            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
        </button>
        <button id="btn_modify" type="button"   class="btn btn-default"  onclick="modifyTask()">
            <span class="glyphicon glyphicon-edit" aria-hidden="true"></span>修改
        </button>
        <button id="btn_delete" type="button" class="btn btn-default" onclick="deleteRows()">
            <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
        </button>

        <button id="btn_start" type="button" class="btn btn-default" onclick="starttasks()">
            <span class="glyphicon glyphicon-play" aria-hidden="true"></span>启动
        </button>
        <button id="btn_stop" type="button" class="btn btn-default" onclick="stoptasks()">
            <span class="glyphicon glyphicon-stop" aria-hidden="true"></span>停止
        </button>
    </div>
    <table id="tb_departments" class="table table-hover  text-nowrap"></table>
</div>
<div id="myModal" class="modal fade"  role="dialog"   aria-hidden="true" >
    <div class="modal-dialog modal-lg" style="width: 50%">
        <div class="modal-content">
            <legend  > &nbsp;&nbsp;修改定时任务</legend>
            <form id="addform" class="form-horizontal" >
                <div class="form-group">
                    <label for="taskname" class="col-sm-2 control-label">任务ID</label>
                    <div class="col-sm-8">
                        <input id="taskid" name="taskid" type="text" class="form-control" readonly>
                    </div>
                </div>
                <div class="form-group">
                    <label for="taskname" class="col-sm-2 control-label">任务名称</label>
                    <div class="col-sm-8">
                        <input id="taskname" name="taskname" type="text" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="description" class="col-sm-2 control-label" >任务描述</label>
                    <div class="col-sm-8">
                        <input id="description" name="description" type="text" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="sourcetable" class="col-sm-2 control-label">数据源表</label>
                    <div class="col-sm-8">
                        <select type="text" class="form-control selectpicker" id="sourcetable" name="sourcetable">
                            <option  value="">请选择...</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="sourcetable" class="col-sm-2 control-label">简单清洗列</label>
                    <div class="col-sm-8">
                        <select type="text" class="form-control selectpicker" id="simplewashcolumn" name="simplewashcolumn">
                            <option  value="">请选择...</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="goaltable" class="col-sm-2 control-label">目标表</label>
                    <div class="col-sm-8">
                        <select type="text" class="form-control selectpicker" id="goaltable" name="goaltable">
                            <option  value="">请选择...</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="querys" class="col-sm-2 control-label">查询条件</label>
                    <div class="col-sm-8">
                        <input id="querys" name="querys" type="text" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="rules" class="col-sm-2 control-label">清洗规则</label>
                    <div class="col-sm-8">
                        <select type="text" class="form-control selectpicker" id="rules" name="rules">
                            <option  value="">请选择...</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="starttime" class="col-sm-2 control-label">开始时间</label>
                    <div class="col-sm-8">
                        <input id="starttime" name="starttime" type="text" class="form-control date form_datetime" readonly>
                    </div>
                </div>
                <div class="form-group">
                    <label for="starttime" class="col-sm-2 control-label">时间戳</label>
                    <div class="col-sm-8">
                        <input id="stamp" name="stamp" type="text" class="form-control date form_datetime" readonly>
                    </div>
                </div>
                <div class="form-group">
                    <label for="opti" class="col-sm-2 control-label">选择</label>
                    <div class="col-sm-3">
                        <select id="opti"  type="text" class="form-control selectpicker " readonly>
                            <option value="1">每天</option>
                            <option value="2">每隔</option>
                        </select>
                    </div>
                    <div  id="everytimediv" class="col-sm-3">
                        <input id="everytime" type="text" class="form-control date form_datetime" readonly>
                    </div>
                    <div id="intertimediv" class="col-sm-3" style="display: none">
                        <select id="intertime" type="text" class="form-control selectpicker" >
                            <option value="">请选择</option>
                        </select>
                    </div>
                    <div id="intertimediv1" class="col-sm-1" style="display: none">
                        <label class="control-label">小时</label>
                    </div>

                </div>
                <div class="form-group">
                    <label for="expression" class="col-sm-2 control-label">时间表达式</label>
                    <div class="col-sm-8">
                        <input id="expression" name="expression" type="text" class="form-control" readonly>
                    </div>
                </div>
                <div  class="form-group" style="display: none;">
                    <label for="onoff" class="col-sm-2 control-label">是否激活</label>
                    <div class="col-sm-8">
                        <select class="form-control selectpicker" id="onoff" name="onoff"  disabled="true">
                            <option value="0">否</option>
                            <option value="1">是</option>
                        </select>
                    </div>
                </div>
            </form>

            <div class="modal-footer" >
                <input type="hidden" id="ID" name="ID" />
                <button type="submit" class="btn btn-primary"  onclick ="modify()">确定</button>
                <button type="button" class="btn green" data-dismiss="modal">取消</button>
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
<script type="text/javascript" src="../js/bootstrap-datetimepicker-master/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="../js/bootstrap-datetimepicker-master/js/locales/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
<script  src="../js/pdfmake.min.js"></script>
<script  src="../js/jspdf.min.js"></script>
<script  src="../js/jspdf.plugin.autotable.js"></script>
<script  src="../js/vfs_fonts.js"></script>
<script  src="../js/date.js"></script>

<script type="text/javascript" src="../js/html2canvas.min.js"></script>
<script type="text/javascript" src="../js/FileSaver.min.js"></script>
<script type="text/javascript" src="../js/tableExport.js"></script>
<script type="text/javascript" src="../js/xlsx.core.min.js"></script>
<script type="text/javascript" src="../js/bootbox.min.js"></script>
<script type="text/javascript" src="../js/moment.js"></script>
<script type="text/javascript" src="../js/plupload-2.0.0/js/plupload.full.min.js"></script>
<script type="text/javascript" src="../js/plupload-2.0.0/js/i18n/zh_CN.js"></script>
<script type="text/javascript" src="../js/bootstrap-select/js/bootstrap-select.min.js"></script>
<script type="text/javascript" src="../js/bootstrap-select/js/i18n/defaults-zh_CN.min.js"></script>

<script type="text/javascript">
    var rulelist = [];
    $.ajax({
        url: "/datawashRule/ruleslist.do",//写你自己的方法，返回map，我返回的map包含了两个属性：data：集合，total：集合记录数量，所以后边会有data.data的写法。。。
        type: "get",
        dataType: "json",
        async:false,
        success: function (data) {
            rulelist= data;
        },
        error: function (data) {
            alert("规则加载失败" + data);
        }
    });
    function trim(str){
        return str.replace(/(^\s*)|(\s*$)/g, "");
    }
    var searchtimer = function(){
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


    });


    var TableInit = function () {
        var oTableInit = new Object();
        //初始化Table
        oTableInit.Init = function () {
            $.ajax({
                url:"/washtimer/getAllTasks.do",
                type:'post',
                async:false,
                success:function(result){
                    if(result.length==0){
                        $.ajax({
                            url:"/washtimer/pauseAllTimer.do",
                            type:'post',
                            async:false
                        })
                    }
                }
            });
            $('#tb_departments').bootstrapTable({
                url: '/washtimer/showTimedTasks.do',         //请求后台的URL（*）
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
                uniqueId: "id",                     //每一行的唯一标识，一般为主键列
                cardView: false,                    //是否显示详细视图
                detailView: false,                   //是否显示父子表
                columns: [{
                    checkbox: true
                },   {
                    field: 'id',
                    title: 'ID'
                },
                    {
                        field: 'onoff',
                        title: '状态',
                        formatter: function (value) {
                            if(value==0){
                                return '未启动'
                            }
                            if(value==1){
                                return '启动'
                            }
                        }
                    },{
                    field: 'name',
                    title: '名称'
                }, {
                    field: 'description',
                    title: '描述'
                }, {
                    field: 'sourcetable',
                    title: '数据源表'
                }, {
                        field: 'reserved2',
                        title: '简单清洗列'
                    },{
                    field: 'goaltable',
                    title: '目标表'
                }, {
                    field: 'querys',
                    title: '查询条件'
                },{
                    field: 'rules',
                    title: '清洗规则',
                        formatter:function (val) {
                        var res = '';
                            $.each(rulelist, function (i) {
                                    if(rulelist[i].rules == val){
                                        res = rulelist[i].name;
                                    }
                            });
                            return res;
                        }
                },{
                    field: 'starttime',
                    title: '开始时间',
                    formatter: function (value) {
                        return moment(value, "x").format("YYYY-MM-DD HH:mm:ss")
                    }
                },{
                    field: 'stamp',
                    title: '时间戳时间',
                    formatter: function (value) {
                        if(value!=null)
                        {return moment(value, "x").format("YYYY-MM-DD HH:mm:ss")}
                        else{return ""}
                    }
                },
                    {
                        field: 'reserved1',
                        title: '时间表达式'
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
                        url: "/washtimer/timerEdit.do",
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
                            bootbox.alert('修改失败');
                        },
                        complete: function () {

                        }

                    });
                }

            })
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



    function deleteRows(){
        var rows = $("#tb_departments").bootstrapTable('getAllSelections');
        bootbox.confirm({
            message: "确定删除这些任务？",
            buttons: {
                confirm: {
                    label: "确认"
                },
                cancel:{
                    label:"取消"
                }
            },
            callback: function(result) {
                if(result) {
                    if(rows){
                        for(var i = 0;i < rows.length;i++){
                            $.ajax({
                                url:"/washtimer/deleteWashTimer.do",
                                data:{id:rows[i].id},
                                type:'post',
                                async:false,
                                success:function(result){
                                    if(!result.success){
                                        bootbox.alert("删除失败!ID="+result.id+"。"+result.msg);
                                    }
                                }
                            })
                        }
                    }
                    $('#tb_departments').bootstrapTable('refresh');
                }
            }
        });

    }
    function starttasks(){
        var rows = $("#tb_departments").bootstrapTable('getAllSelections');
        if(rows){
            for(var j = 0;j < rows.length;j++){
                if(rows[j].onoff == 1){
                    bootbox.alert("请勾选未启用的任务！");
                    return;
                }
            }
            var msg= "";
            for(var i = 0;i < rows.length;i++){
                $.ajax({
                    url:"/washtimer/startTimedTask.do",
                    data:{id:rows[i].id},
                    type:'post',
                    async:false,
                    success:function(result){
                        if(!result.success){
                            msg = msg + "定时任务"+result.id+"启用失败!"+result.msg+'<br/>';
                        }else{
                            $.ajax({
                                url:"/washtimer/startWashTimer.do",
                                data:{id:result.id},
                                type:'post',
                                async:false,
                                success:function(result){
                                    if(!result.success){
                                        msg = msg + "任务"+result.id+"启用失败!"+result.msg+'<br/>';
                                    }else{
                                        msg = msg + "任务"+result.id+"启用成功！"+'<br/>';
                                    }
                                    $('#tb_departments').bootstrapTable('refresh');
                                }
                            });
                        }
                    }
                });
            }
            bootbox.alert(msg);

        }
        var name = $("#name").val();
        var temp = {
            limit:10,
            page:1,
            name:trim(name)
        };
        $('#tb_departments').bootstrapTable('refresh',temp);
    }
    function stoptasks(){
        var rows = $("#tb_departments").bootstrapTable('getAllSelections');
        if(rows){
            for(var j = 0;j < rows.length;j++){
                if(rows[j].onoff == 0){
                    bootbox.alert("请勾选正在运行的任务！");
                    return;
                }
            }
            var msg = "";
            for(var i = 0;i < rows.length;i++){
                $.ajax({
                    url:"/washtimer/stopWashTimer.do",
                    data:{id:rows[i].id},
                    type:'post',
                    async:false,
                    success:function(result){
                        if(!result.success){
                            msg = msg + "定时任务"+result.id+"停用失败!"+result.msg+'<br/>';
                        }else{
                            msg = msg + "定时任务"+result.id+"已停用!"+'<br/>';
                        }
                    }
                })
            }
            bootbox.alert(msg);
        }
        $('#tb_departments').bootstrapTable('refresh');
    }

    var modifyTask = function(){
        var rows = $("#tb_departments").bootstrapTable('getSelections');
            if(rows.length == 1){
                $('#sourcetable').val( rows[0].sourcetable);
                $('#sourcetable').selectpicker('refresh');
                $('#goaltable').val(rows[0].goaltable);
                $('#goaltable').selectpicker('refresh');
                $('#rules').val(rows[0].rules);
                $('#rules').selectpicker('refresh');
                $('#querys').val(rows[0].querys);
                $('#simplewashcolumn').val(rows[0].reserved2);
                $('#simplewashcolumn').selectpicker('refresh');
                if(rows[0].starttime != undefined){
                $('#starttime').val(new Date(rows[0].starttime).Format("yyyy-MM-dd hh:mm"));
                $('#starttime').datetimepicker('update');
                }
                if(rows[0].stamp != undefined){
                $('#stamp').val(new Date(rows[0].stamp).Format("yyyy-MM-dd hh:mm"));
                $('#stamp').datetimepicker('update');
                }
                $('#taskid').val(rows[0].id);
                $('#taskname').val(rows[0].name);
                $('#description').val(rows[0].description);
                $('#expression').val(rows[0].reserved1);
                $('#onoff').val(rows[0].onoff);
                $('#onoff').selectpicker('refresh');
                $("#myModal").modal('show');
            }
            else{
                bootbox.alert("请选择一行！");
            }
    };
    var formValidator = function(){
        $("#addform").bootstrapValidator({
            live: 'enabled',//验证时机，enabled是内容有变化就验证（默认），disabled和submitted是提交再验证
            excluded: [':disabled',  ':not(:visible)'],//排除无需验证的控件，比如被禁用的或者被隐藏的
            // submitButtons: '#btn-add',//指定提交按钮，如果验证失败则变成disabled，但我没试成功，反而加了这句话非submit按钮也会提交到action指定页面
            message: '验证失败',//好像从来没出现过
            feedbackIcons: {//根据验证结果显示的各种图标
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                taskid: {
                    validators: {
                        notEmpty: {//检测非空,radio也可用
                            message: '文本框必须输入'
                        }
                    }
                },
                taskname: {
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
                sourcetable: {
                    validators: {
                        notEmpty: {//检测非空,radio也可用
                            message: '文本框必须输入'
                        }
                    }
                },
                // simplewashcolumn: {
                //     validators: {
                //         notEmpty: {//检测非空,radio也可用
                //             message: '文本框必须输入'
                //         }
                //     }
                // },
                goaltable: {
                    validators: {
                        notEmpty: {//检测非空,radio也可用
                            message: '文本框必须输入'
                        }
                    }
                },
                rules: {
                    validators: {
                        notEmpty: {//检测非空,radio也可用
                            message: '文本框必须输入'
                        }
                    }
                },
                starttime: {
                    validators: {
                        notEmpty: {//检测非空,radio也可用
                            message: '文本框必须输入'
                        }
                    }
                },
                expression: {
                    trigger:"change",
                    validators: {
                        notEmpty: {//检测非空,radio也可用
                            message: '文本框必须输入'
                        }
                    }
                }
            }
        });
    };
    var modify = function(){
        $("#addform").bootstrapValidator('validate');//提交验证
        if ($("#addform").data('bootstrapValidator').isValid()) {
            var rows = $("#tb_departments").bootstrapTable('getSelections');
            if ($('#sourcetable').val() == rows[0].sourcetable
                && $('#goaltable').val() == rows[0].goaltable
                && $('#rules').val() == rows[0].rules
                && $('#querys').val() == rows[0].querys
                && $('#simplewashcolumn').val() == rows[0].reserved2
                && $('#starttime').val() == new Date(rows[0].starttime).Format("yyyy-MM-dd hh:mm")
                && $('#stamp').val() == getDate(rows[0].stamp)
                && $('#taskid').val() == rows[0].id
                && $('#taskname').val() == rows[0].name
                && $('#description').val() == rows[0].description
                && $('#expression').val() == rows[0].reserved1
                && $('#onoff').val() == rows[0].onoff) {
                $('#myModal').modal('hide');
                $('#myModal').removeData("bs.modal");
                bootbox.alert("数据未改变！")
            } else{
                $("#onoff").attr("disabled", false);
                var params = $("#addform").serialize();
                $.post("/washtimer/modifyWashTimer.do", params, function (result) {
                    if (result.success) {
                        bootbox.dialog({
                            title: '提示',
                            message: '修改成功',
                            buttons: {
                                ok: {
                                    label: "确定",
                                    className: 'btn-info'
                                }
                            }
                        });
                        $('#myModal').modal('hide');
                        $('#myModal').removeData("bs.modal");
                        $('#tb_departments').bootstrapTable('refresh');
                    } else {
                        bootbox.alert("修改失败!");
                    }
                });
        }
        }
    };
    $(function () {
        $.ajax({
            url: "/datawash/getToTables.do",//写你自己的方法，返回map，我返回的map包含了两个属性：data：集合，total：集合记录数量，所以后边会有data.data的写法。。。
            type: "get",
            dataType: "json",
            success: function (data) {
                $.each(data, function (i) {
                    $('#sourcetable.selectpicker').append("<option value=" + data[i] + ">" + data[i] + "</option>");
                });
                $('#sourcetable').selectpicker('refresh');
            },
            error: function (data) {
                alert("目标表加载失败" + data);
            }
        });
        $.ajax({
            url: "/datawash/getToTables.do",//写你自己的方法，返回map，我返回的map包含了两个属性：data：集合，total：集合记录数量，所以后边会有data.data的写法。。。
            type: "get",
            dataType: "json",
            success: function (data) {
                $.each(data, function (i) {
                    $('#goaltable.selectpicker').append("<option value=" + data[i] + ">" + data[i] + "</option>");
                });
                $('#goaltable').selectpicker('refresh');
            },
            error: function (data) {
                alert("目标表加载失败" + data);
            }
        });

        $.ajax({
            url: "/datamanage/getFieldList.do",//写你自己的方法，返回map，我返回的map包含了两个属性：data：集合，total：集合记录数量，所以后边会有data.data的写法。。。
            type: "get",
            dataType: "json",
            success: function (data) {
                $.each(data.fields, function (i) {
                    $('#simplewashcolumn').append("<option value=" + data.fields[i] + ">" + data.fields[i] + "</option>");
                });
                $('#simplewashcolumn').selectpicker('refresh');
            },
            error: function (data) {
                alert("自定义查询字段加载失败" + data);
            }
        });

        $.ajax({
            url: "/datawashRule/ruleslist.do",//写你自己的方法，返回map，我返回的map包含了两个属性：data：集合，total：集合记录数量，所以后边会有data.data的写法。。。
            type: "get",
            dataType: "json",
            data: 'data',
            success: function (data) {
                $.each(data, function (i) {
                    $('#rules.selectpicker').append("<option value=" + data[i].rules + ">" + data[i].name + "</option>");
                });
                $('#rules').selectpicker('refresh');
            },
            error: function (data) {
                alert("规则加载失败" + data);
            }
        });
        $('#starttime').datetimepicker({
            format:'yyyy-mm-dd hh:ii',
            language:  'zh-CN',
            weekStart: 1,
            todayBtn:  1,
            autoclose: 1,
            todayHighlight: 1,
            startView: 2,
            forceParse: 0,
            showMeridian: 1
        }).on('hide',function(e) {
            $('#addform').data('bootstrapValidator')
                .updateStatus('starttime', 'NOT_VALIDATED',null)
                .validateField('starttime');
        });

        $('#stamp').datetimepicker({
            format:'yyyy-mm-dd hh:ii',
            language:  'zh-CN',
            weekStart: 1,
            todayBtn:  1,
            autoclose: 1,
            todayHighlight: 1,
            startView: 2,
            forceParse: 0,
            showMeridian: 1
        });

        $('#everytime').datetimepicker({
            language:  'zh-CN',
            format: 'hh:ii',
            startView:1,
            autoclose: 1,
            maxView:1
        }).on('changeDate', function(e){
            var time = $('#everytime').val();
            var strs =  time.split(":"); //字符分割
            $('#expression').val("0 "+strs[1]+" "+strs[0]+" * * ?").change();
        });
        for(var i=1;i<101;i++){
            $('#intertime').append("<option value=" + i + ">" + i + "</option>");
        }
        $('#opti').on('changed.bs.select',function(e){
            var op =$('#opti').val();
            if (op  == "1"){
                $('#expression').val("").change();
                document.getElementById("everytimediv").setAttribute("style", "");
                document.getElementById("intertimediv").setAttribute("style", "display:none");
                document.getElementById("intertimediv1").setAttribute("style", "display:none");
                $('#intertime').val("");
                $('#intertime').selectpicker("refresh");
            }
            if (op == "2"){
                $('#expression').val("").change();
                document.getElementById("intertimediv").setAttribute("style", "");
                document.getElementById("intertimediv1").setAttribute("style", "");
                document.getElementById("everytimediv").setAttribute("style", "display:none");
                $('#everytime').val("");
                $('#everytime').datetimepicker("refresh");
            }
        });
        $('#intertime').on('changed.bs.select',function(e){
            var num = $('#intertime').val();
            $('#expression').val("*  * 1/"+num+" * * ?").change();
        });

        $('.date').datetimepicker().on('changeDate', function(ev) {
//
        }).on('hide', function(event) {
            event.preventDefault();
            event.stopPropagation();
        });

        $("#myModal").on("hide.bs.modal", function() {
            $("#addform input").val("");
            $("#addform select").selectpicker('val', 0);
            $("#addform select").selectpicker('refresh');
            $("#addform").data('bootstrapValidator').destroy();
            $("#addform").data('bootstrapValidator',null);
            formValidator();
            document.getElementById("everytimediv").setAttribute("style", "");
            document.getElementById("intertimediv").setAttribute("style", "display:none");
            document.getElementById("intertimediv1").setAttribute("style", "display:none");
        });
        formValidator();



    })
    var getDate = function( stamp){
        if(stamp==null||stamp==""){
            return "";
        }
        else{
            return new Date(stamp).Format("yyyy-MM-dd hh:mm");
        }
    }
</script>

</body>
</html>
