<%--
  Created by IntelliJ IDEA.
  User: zhaoao
  Date: 2018/1/16
  Time: 17:05
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
    <title>清洗规则管理</title>

    <link href="../js/bootstrap/css/bootstrap.css" rel="stylesheet"  type="text/css"/>
    <link href="../js/bootstrap-table/bootstrap-table.css" rel="stylesheet"  type="text/css"/>
    <link href="../js/bootstrap3-editable/css/bootstrap-editable.css" rel="stylesheet"  type="text/css"/>
    <link href="../js/bootstrap-validator/css/bootstrapValidator.min.css" rel="stylesheet"  type="text/css"/>

    <style>
        .modal .modal-dialog .modal-content .form-horizontal .controls .input-file{

        }

    </style>

</head>
<body>
<h3 style="margin-left: 15px">清洗规则管理</h3>
<div class="panel-body" style="padding-bottom:0px;">
    <div class="panel panel-default">
        <div class="panel-heading">过滤条件</div>
        <div class="panel-body panel-body-head">
            <form  class="form-horizontal">

                <label class="control-label col-sm-1">规则名称</label>
                <div class="col-sm-2 input-append ">
                    <input size="10" class="form-control" id="name" type="text" value="">
                </div>
                <div class="col-md-offset-6">
                    <button style="margin-left:50px;" id="btn_search_report" type="button" class="btn btn-primary" onclick="searchrules();" >
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

                                <!-- Text input-->
                                <label class="col-sm-2 control-label">规则名称</label>
                                <div class="col-sm-8">
                                    <input id="rulename" name="rulename" type="text" class="input-xlarge">
                                </div>
                            </div>
                        <div class="form-group">

                            <!-- Text input-->
                            <label class="col-sm-2 control-label" >规则描述</label>
                            <div class="col-sm-8">
                                <input id="description" name="description" type="text" class="input-xlarge">
                            </div>
                        </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">上传清洗程序</label>

                                <!-- File Upload -->
                                <div class="col-sm-8">
                                    <button id="browse">选择文件</button>
                                </div>
                                <div id="filelist"   class="col-sm-8"></div>


                            </div>

                            <%--<div class="control-group">--%>
                                <%--<label class="control-label">Button</label>--%>

                                <%--<!-- Button -->--%>
                                <%--<div class="controls">--%>
                                    <%--<button class="btn btn-success">Button</button>--%>
                                <%--</div>--%>
                            <%--</div>--%>


                    </form>
                <div class="modal-footer bg-info" style="padding: 5px;">
                    <input type="hidden" id="ID" name="ID" />
                    <button type="submit" id="btn-add" class="btn btn-primary" >确定</button>
                    <button type="button" class="btn green" data-dismiss="modal">取消</button>
                </div>
            </div>
        </div>
        </div>
    <div id="myModal2" class="modal fade"  role="dialog"   aria-hidden=true>
        <div class="modal-dialog modal-lg" style="width: 50%">
            <div class="modal-content">
                <div id="legend2" class="">
                    <legend class="">&nbsp;&nbsp;更改清洗程序</legend>
                </div>
                <form id="addform2" class="form-horizontal" style="margin-left: 15px">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">上传清洗程序</label>
                        <!-- File Upload -->
                        <div class="col-sm-8">
                            <button id="browse2">选择文件</button>
                            <input  hidden id="inputid" name="id"/>
                        </div>
                        <div id="filelist2" class="col-sm-8"></div>
                    </div>

                </form>
                <div class="modal-footer bg-info" style="padding: 5px;">
                    <button type="submit" class="btn btn-primary"  onclick ="changerule()">确定</button>
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

<script type="text/javascript">
    function trim(str){
        return str.replace(/(^\s*)|(\s*$)/g, "");
    }
    var searchrules = function(){
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

    var changeId = function (id) {
        $("#inputid").val(id);
    };

    var TableInit = function () {
        var oTableInit = new Object();
        //初始化Table
        oTableInit.Init = function () {
            $('#tb_departments').bootstrapTable({
                url: '/showrules.do',         //请求后台的URL（*）
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
                    field: 'path',
                    title: '文件名',
                    formatter: function (value,row) {
                        return "<a style=\"border-bottom:dashed 1px #0088cc\" onclick=\"window.open(\'/exportjar.do?id="+row.id+"\')\">"+value+"</a>   <button data-toggle=\"modal\" data-target=\"#myModal2\" type=\"button\" onclick=\"changeId("+row.id+")\" > 更改</button>";
                    }
                },
                    // {
                    //     field: 'bz',
                    //     title: '目标文件名'
                    // },
                    {
                    field: 'modify',
                    title: '最后修改日期',
                    sortable: true,
                    width: 100,
                    formatter: function (value) {
                return moment(value,"x").format("YYYY-MM-DD HH:mm:ss")
            }
                }],
                onEditableSave: function (field, row) {
                    $.ajax({
                        type: "post",
                        url: "/ruleedit.do",
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

    function deleteRows(){
        var rows = $("#tb_departments").bootstrapTable('getAllSelections');
        bootbox.confirm({
            message: "确定删除这些规则？",
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
                                url:"/deleterule.do",
                                data:{id:rows[i].id},
                                type:'post',
                                async:false,
                                success:function(result){
                                    if(!result.success){
                                        bootbox.alert("删除失败!ID="+result.id+"。"+result.msg);
                                    }else{
                                        $('#tb_departments').bootstrapTable('refresh');
                                        bootbox.alert("删除成功");
                                    }
                                }
                            })
                        }
                    }
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


</script>

<script type="text/javascript">
    //实例化一个plupload上传对象
    var uploader = new plupload.Uploader({
        //这个是选择文件的button
        browse_button : 'browse',
        //服务器端的上传地址
        url : '/uploadFile.do',
        multi_selection: false,
        filters: [                //文件类型限制
         {title: "清洗程序", extensions: "jar,py" }]
    });
    //在实例对象上调用init()方法进行初始化
    uploader.init();

    //文件添加时，在容器里显示待上传的文件列表
    uploader.bind('FilesAdded',
        function(uploader, files) {
            for (var i in files) {
                //在页面迭代显示

                if(uploader.files.length>1){ // 最多上传3张图
                    bootbox.alert("只能上传单个文件！")
                }
                else{
                    $('#filelist').append('<div><input type="hidden" name="path" id="path" value="'+files[i].name+'"/>'+files[i].name + ' (' + plupload.formatSize(files[i].size) + ')<div id="'+files[i].id+'"></div><input hidden name="bz" id="bz"> </input></div></br>');
                }
            }
        }
    );
    //文件上传进度显示
    uploader.bind('UploadProgress',
        function(uploader, file) {
            $('#'+file.id).html("   "+file.percent + "%");
        }
    );
    //单个文件上完成后事件
    uploader.bind('FileUploaded',
        function(up, file,result) {
            $('#bz').val($.parseJSON(result.response));
        }
    );

    //选择文件的事件
    uploader.bind('FilesAdded',
        function(up, files,res) {
            uploader.start();
        }
    );
    $("#myModal").on("hide.bs.modal", function() {
        uploader.splice(0, 100);
        $("#filelist").empty();
    });


</script>
<script type="text/javascript">
    //实例化一个plupload上传对象
    var uploader2 = new plupload.Uploader({
        //这个是选择文件的button
        browse_button : 'browse2',
        //服务器端的上传地址
        url : '/uploadFile.do',
        multi_selection: false,
        filters: [                //文件类型限制
            {title: "清洗程序", extensions: "jar.py" }]
    });
    //在实例对象上调用init()方法进行初始化
    uploader2.init();

    //文件添加时，在容器里显示待上传的文件列表
    uploader2.bind('FilesAdded',
        function(uploader, files) {
            for (var i in files) {
                //在页面迭代显示

                if(uploader.files.length>1){ // 最多上传3张图
                    bootbox.alert("只能上传单个文件！")
                }
                else{
                    $('#filelist2').append('<div><input type="hidden" name="path" id="path" value="'+files[i].name+'"/>'+files[i].name + ' (' + plupload.formatSize(files[i].size) + ')<div id="'+files[i].id+'"></div><input hidden name="bz2" id="bz2"> </input></div></br>');
                }
            }
        }
    );
    //文件上传进度显示
    uploader2.bind('UploadProgress',
        function(uploader, file) {
            $('#'+file.id).html("   "+file.percent + "%");
        }
    );
    //单个文件上完成后事件
    uploader2.bind('FileUploaded',
        function(up, file,result) {
            $('#bz2').val($.parseJSON(result.response));
        }
    );

    //选择文件的事件
    uploader2.bind('FilesAdded',
        function(up, files,res) {
            uploader2.start();
        }
    );
    $("#myModal2").on("hide.bs.modal", function() {
        uploader2.splice(0, 100);
        $("#filelist2").empty();
    });

    var changerule = function () {
        var params = $("#addform2").serialize();
        $.post("/changejar.do",params,function(result){
            if(result){
                var dialog = bootbox.dialog({
                    title: '提示',
                    message: '修改成功',
                    buttons: {
                        ok: {
                            label: "确定",
                            className: 'btn-info'
                        }
                    }
                });
                $('#myModal2').modal('hide');
                $('#myModal2').removeData("bs.modal");
            }else{
                bootbox.alert("修改失败!");
            }
        });
        var temp = {   //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
            limit: 10,   //页面大小
            page: 1   //页码
        };
        $('#tb_departments').bootstrapTable('removeAll');
        $('#tb_departments').bootstrapTable('refresh',temp);
    }
    $(function () {
        $("#addform").bootstrapValidator({
            // live: 'disabled',//验证时机，enabled是内容有变化就验证（默认），disabled和submitted是提交再验证
            excluded: [':disabled',  ':not(:visible)'],//排除无需验证的控件，比如被禁用的或者被隐藏的
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
                filelist: {
                    validators: {
                        notEmpty: {//检测非空,radio也可用
                            message: '文本框必须输入'
                        }
                    }
                }
            }
        });
        $("#btn-add").click(function () {//非submit按钮点击后进行验证，如果是submit则无需此句直接验证
            $("#addform").bootstrapValidator('validate');//提交验证
            if ($("#addform").data('bootstrapValidator').isValid()) {//获取验证结果，如果成功，执行下面代码
                var content = $("#filelist").html();
                if(content == null || content.length == 0)
                {
                    bootbox.alert("请添加文件");
                }
                else{
                    var params = $("#addform").serialize();
                    $.post("/insertrule.do",params,function(result){
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
        });
    });
</script>
</body>
</html>
