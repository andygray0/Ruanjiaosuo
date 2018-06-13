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
    <style>
        .th-inner{
            font-size:14px
        }
        .fixed-table-header{
            background-color: #bee7f3;
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
    <table id="tb_departments" class="table table-hover"></table>
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
<script type="text/javascript" src="../js/bootstrap-select/js/bootstrap-select.min.js"></script>
<script type="text/javascript" src="../js/bootstrap-select/js/i18n/defaults-zh_CN.min.js"></script>

<script type="text/javascript">
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
                url:"/getAllTasks.do",
                type:'post',
                async:false,
                success:function(result){
                    if(result.length==0){
                        $.ajax({
                            url:"/pauseAllTimer.do",
                            type:'post',
                            async:false
                        })
                    }
                }
            });
            $('#tb_departments').bootstrapTable({
                url: '/showTimedTasks.do',         //请求后台的URL（*）
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
                }, {
                    field: 'sourcetable',
                    title: '数据源表',
                    editable: {
                        type: 'text',
                        title: '数据源表',
                        validate: function (v) {
                            if (!v) return '数据源表不能为空';
                        }
                    }
                }, {
                    field: 'goaltable',
                    title: '目标表',
                    editable: {
                        type: 'text',
                        title: '目标表',
                        validate: function (v) {
                            if (!v) return '目标表不能为空';
                        }
                    }
                }, {
                    field: 'querys',
                    title: '查询条件',
                    editable: {
                        type: 'text',
                        title: '查询条件',
                        validate: function (v) {
                            if (!v) return '查询条件不能为空';
                        }
                    }
                },{
                    field: 'rules',
                    title: '清洗规则',
                    editable: {
                        type: 'text',
                        title: '清洗规则',
                        validate: function (v) {
                            if (!v) return '清洗规则不能为空';
                        }
                    }
                },{
                    field: 'starttime',
                    title: '开始时间',
                    formatter: function (value) {
                        return moment(value, "x").format("YYYY-MM-DD HH:mm:ss")
                    },
                    editable: {
                        type: 'text',
                        title: '开始时间',
                        validate: function (v) {
                            // if (!v) return '查询条件不能为空';
                        }
                    }
                },{
                    field: 'stamp',
                    title: '时间戳时间',
                    formatter: function (value) {
                        if(value!=null)
                        {return moment(value, "x").format("YYYY-MM-DD HH:mm:ss")}
                        else{return ""}
                    },
                    editable: {
                        type: 'text',
                        title: '时间戳时间',
                        validate: function (v) {
                            // if (!v) return '查询条件不能为空';
                        }
                    }
                },
                    {
                        field: 'reserved1',
                        title: '时间表达式',
                        editable: {
                            type: 'text',
                            title: '时间表达式',
                            validate: function (v) {
                                // if (!v) return '查询条件不能为空';
                            }
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
                        url: "/timerEdit.do",
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
                                url:"/deleteWashTimer.do",
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
                    url:"/startTimedTask.do",
                    data:{id:rows[i].id},
                    type:'post',
                    async:false,
                    success:function(result){
                        if(!result.success){
                            msg = msg + "定时任务"+result.id+"启用失败!"+result.msg+'<br/>';
                        }else{
                            $.ajax({
                                url:"/startWashTimer.do",
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
                    url:"/stopWashTimer.do",
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


</script>

</body>
</html>
