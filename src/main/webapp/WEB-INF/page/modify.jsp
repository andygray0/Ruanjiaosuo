<%--
  Created by IntelliJ IDEA.
  User: zhaoao
  Date: 2017/12/19
  Time: 22:03
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<link href="../js/bootstrap-datetimepicker-master/css/bootstrap-datetimepicker.css" rel="stylesheet" type="text/css"/>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>批量修改</title>
    <link href="../js/bootstrap/css/bootstrap.css" rel="stylesheet"  type="text/css"/>
    <link href="../js/bootstrap-table/bootstrap-table.css" rel="stylesheet"  type="text/css"/>
    <link href="../js/mloading/jquery.mloading.css" rel="stylesheet"  type="text/css"/>
    <link href="../css/common.css" rel="stylesheet"  type="text/css"/>
    <style>
        th,td{
            white-space: nowrap;
        }
        .panel-default  .panel-heading{
            font-weight: bold;
            font-size: 14px;
            color: #576063;
        }
        #tb_departments{
            /*background-color: #fff;*/
            padding: 15px;
        }
        .tb_dep_content{
            /*background-color: #fff;*/
            margin: 0 15px 15px 15px;
            padding: 2px;
            border-radius: 3px;
        }
        .tb_dep_content .bootstrap-table{
            height: 80%;
        }
        .panel{
            margin-bottom: 10px;
        }
        .panel-body .panel-body-head{
            padding: 10px;
        }
        .col-sm-1 {
            width: auto;
        }
        .form-control {
            height: 28px;
            padding: 2px 0 0 2px;
        }
        .form-horizontal{
            margin-left: 20px;
        }
        .form-horizontal .control-label{
            width: auto;
            padding: 2px 0 0 0;
            font-size: 16px;
            line-height: 28px;
            font-weight: normal;
        }
        .th-inner{
            font-size:14px
        }
        .fixed-table-header{
            background-color: #bee7f3;
        }
        .addRow{
            padding: 0px 12px;
            line-height: 26px;
            color: #fff;
            background-color: #337ab7;
            border: 1px solid transparent;
            outline: none;
            border-radius: 4px;
            text-align: center;
            white-space: nowrap;
            vertical-align: middle;
            margin-bottom: 3px;
        }
        .addRow:hover{
            background-color: #286090;
        }
        /*.fixed-table-body{*/
            /*!*max-height:250px;*!*/
        /*}*/
        .fixed-table-toolbar .search, .fixed-table-toolbar .columns {
            margin-top: 0px;
            margin-bottom: 3px;
        }
        .fixed-table-toolbar .bs-bars, .fixed-table-toolbar .search, .fixed-table-toolbar .columns{
            margin-top: 0px;
            margin-bottom: 3px;
        }

        .modifyDataShow ul.dropdown-menu{
            width:220px;
        }

    </style>
</head>
<body>
<%--<div class="form-group">--%>
    <%--<label for="dtp_input1" class="col-md-2 control-label">DateTime Picking</label>--%>
    <%--<div class="input-group date form_datetime col-md-5" data-date="1979-09-16T05:25:07Z" data-date-format="dd MM yyyy - HH:ii p" data-link-field="dtp_input1">--%>
        <%--<input class="form-control" size="16" type="text" value="" readonly>--%>
        <%--<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>--%>
        <%--<span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>--%>
    <%--</div>--%>
    <%--<input type="hidden" id="dtp_input1" value="" /><br/>--%>
<%--</div>--%>
<h3 style="margin-left: 15px">批量修改</h3>
<div class="panel-body" style="padding-bottom:0px;">
    <div class="panel panel-default">
        <div class="panel-heading">查询条件</div>
        <div class="panel-body panel-body-head">
            <form  class="form-horizontal">
                <div class="col-sm-12 ">
                    <input type="radio" name="queryWay" value="term" checked="checked"/><span style="padding-left:5px;">条件查询</span>
                    <input type="radio" name="queryWay" value="sql"/><span  style="padding-left:5px;">SQL查询</span>
                    <input type="radio" name="queryWay" value="free"/><span  style="padding-left:5px;">自定义查询</span>
                </div>

            </form>
            <form id="formSearch" class="form-horizontal">
                <div class="form-group" style="margin-top:15px;margin-left:0px">
                    <label class="control-label col-sm-1">发布日期开始</label>
                    <div class="col-sm-1 input-append ">
                        <input size="13" type="text" value="" class="form-control date form_datetime" id="urlDateFrom"
                               readonly>
                        <span class="add-on"><i class="icon-th"></i></span>
                    </div>

                    <label class="control-label col-sm-1">截至</label>
                    <div class="col-sm-1 input-append ">
                        <input size="13" type="text" value="" class="form-control date form_datetime" id="urlDateTo" readonly>
                        <span class="add-on"><i class="icon-th"></i></span>
                    </div>
                </div>
                <div class="form-group" style="margin-top:15px;margin-left:0px">
                    <label class="control-label col-sm-1">采集时间开始</label>
                    <div class="col-sm-1 input-append " >
                        <input size="13" type="text" value="" class="form-control date form_datetime" id="lastTimeFrom"
                               readonly>
                        <span class="add-on"><i class="icon-th"></i></span>
                    </div>

                    <label class="control-label col-sm-1">截至</label>
                    <div class="col-sm-1 input-append " >
                        <input size="13" type="text" value="" class="form-control date form_datetime" id="lastTimeTo" readonly>
                        <span class="add-on"><i class="icon-th"></i></span>
                    </div>
                    <label class="control-label col-sm-1">入库时间开始</label>
                    <div class="col-sm-1 input-append " >
                        <input size="13" type="text" value="" class="form-control date form_datetime" id="loadTimeFrom"
                               readonly>
                        <span class="add-on"><i class="icon-th"></i></span>
                    </div>

                    <label class="control-label col-sm-1">截至</label>
                    <div class="col-sm-1 input-append " >
                        <input size="13" type="text" value="" class="form-control date form_datetime" id="loadTimeTo" readonly>
                        <span class="add-on"><i class="icon-th"></i></span>
                    </div>
                </div>
                <div class="form-group" style="margin-top:15px;margin-left:0px">
                    <label class="control-label col-sm-1">公告标题</label>
                    <div class="col-sm-1">
                        <input size="10" class="form-control" id="urltitle" type="text" value="">
                    </div>
                    <label class="control-label col-sm-1">网址</label>
                    <div class="col-sm-1">
                        <input size="10" class="form-control" id="urlname" type="text" value="">
                    </div>
                    <label class="control-label col-sm-1">网站名称</label>
                    <div class="col-sm-1">
                        <input size="10" class="form-control" id="sitename" type="text" value="">
                    </div>
                    <label class="control-label col-sm-1">网站栏目</label>
                    <div class="col-sm-1">
                        <input size="10" class="form-control" id="channel" type="text" value="">
                    </div>
                </div>
                <div class="form-group" style="margin-top:15px;margin-left:0px">
                    <label class="control-label col-sm-1">分组名称</label>
                    <div class="col-sm-1">
                        <input size="10" class="form-control" id="groupname" type="text" value="">
                    </div>

                    <label class="control-label col-sm-1">采集点</label>
                    <div class="col-sm-1">
                        <input size="10" class="form-control" id="startid" type="text" value="">
                    </div>
                </div>
            </form>
            <form id="formSearch1" class="form-horizontal" style="display:none">
                <label class="control-label col-sm-1">查询条件</label>
                <div class="col-sm-3 ">
                    <textarea rows="3"   id="sqlwhere">where </textarea>

                </div>

            </form>
            <form id="formSearch2" class="form-horizontal" style="display:none">
                <table style="clear: both">
                    <tbody>
                    <tr>
                        <br/><br/>
                        <td>
                            <button type="button" class="addRow" onclick="addRow()"> 添加条件</button>
                        </td>
                        <td style="width: 85px; text-align: center;"> 字 段</td>
                        <td style="width: 85px; text-align: center;"> 比 较 符</td>
                        <td style="width: 85px; text-align: center;"> 比 较 值</td>
                    </tr>
                    </tbody>
                </table>
                <table id="querytable">
                    <tbody id="querybody">
                    <tr id="queryline" style="display: none">
                        <td>
                            <button type="button" class="addRow" style="width: 82px;">✖</button>
                        </td>
                        <td>
                            <select type="text" name="item" style="width: 85px;" class="form-control intro"
                                    id="txt_value">
                                <option value="" style="display: none;">请选择</option>
                            </select>
                        </td>
                        <td>
                            <select type="text" name="rule" class="form-control intro" style="width: 85px;" id="txt_rule">
                                <%--<option value="" style="display: none;">请选择</option>--%>
                                <option value="like">包含</option>
                                <option value="notlike">不包含</option>
                                <option value=">">大于</option>
                                <option value="<">小于</option>
                                <option value="=">等于</option>
                                <option value=">=">大于等于</option>
                                <option value="<=">小于等于</option>
                                <option value="!=">不等于</option>
                                <option value="null">空</option>
                                <option value="notnull">非空</option>
                            </select>
                        </td>
                        <td><input size="13" type="text" value="" name="val" class="form-control intro" style="width: 85px;" id="comparevalue"></td>

                    </tr>
                    </tbody>
                </table>
            </form>
            <form class="form-horizontal">
                <div class="form-group" style="margin-top:15px;margin-left:0px">
                    <button type="button" style="margin-left:10px;margin-left: 0px; margin-top: -2px;padding: 4px 12px;" id="btn_query" class="col-sm-1 btn btn-primary">查询
                    </button>
                </div>
            </form>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">批量修改</div>
        <div class="panel-body label-change">

            <label class="control-label col-sm-1">字段</label>
            <div class="col-sm-2">
                <select type="text" class="form-control" id="columntomodify">
                    <option value="" style="display: none;">请选择</option>
                </select>
            </div>
            <label class="control-label col-sm-1">修改为</label>
            <div class="col-sm-1">
                <input size="10" class="form-control" id="tomodify" type="text" value="">
            </div>
            <button type="button" style="margin-left:10px" id="btn_modify" class="col-sm-1 btn btn-primary ">批量修改</button>
            <button type="button" style="margin-left:10px" id="btn_delete" class="col-sm-1 btn btn-primary" >批量删除</button>

        </div>

    </div></div></div>
    <%--<div id="toolbar" class="btn-group">--%>
        <%--<button id="btn_add" type="button" class="btn btn-default">--%>
            <%--<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增--%>
        <%--</button>--%>
        <%--<button id="btn_edit" type="button" class="btn btn-default">--%>
            <%--<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改--%>
        <%--</button>--%>
        <%--<button id="btn_delete" type="button" class="btn btn-default">--%>
            <%--<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除--%>
        <%--</button>--%>
        <%--&lt;%&ndash;<button type="button" id="download" style="margin-left:50px" id="btn_download" class="btn btn-primary" onClick ="$('#tb_departments').tableExport({ type: 'xlsx', escape: 'false' })">数据导出</button>&ndash;%&gt;--%>
    <%--</div>--%>
<div id="toolbar" class="btn-group">
    <%--<button type="button"  id="import" style="margin-left:50px"  class="btn btn-primary" >数据导入</button>--%>
    <button id="btn_add" type="button" style="margin-left:15px"  data-toggle="modal" data-target="#myModal" class="btn btn-primary" onclick="changeUploader()">新增导入</button>
        <button id="btn_add1" type="button" style="margin-left:15px"  data-toggle="modal" data-target="#myModal" class="btn btn-primary" onclick="changeUploader1()">覆盖导入</button>
        <button id="btn_model" type="button" style="margin-left:15px" class="btn btn-primary">导入模板下载</button>
        <button type="button"  style="margin-left:20px" id="btn_download" class="btn btn-primary" >数据导出</button>
</div>
<div class="tb_dep_content">
    <table id="tb_departments" class="table table-hover"></table>
</div>
<div id="myModal" class="modal fade"  role="dialog"   aria-hidden=true>
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div id="legend" class="">
                <legend id="uploadtitle">&nbsp;&nbsp;上传文件</legend>
            </div>

            <div id="fileDiv">
                <div><button id="browse">选择文件</button></div>
                <div id="filelist"></div>
            </div>
            <button id="start_upload">开始导入</button>



            <div class="modal-footer ">
                <input type="hidden" id="ID" name="ID" />
                <button type="button" class="btn green" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>
</div>
<script type="text/javascript" src="../js/jquery-1.11.0.min.js" charset="UTF-8"></script>
<script type="text/javascript" src="../js/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="../js/bootstrap-table/bootstrap-table.js"></script>
<script type="text/javascript" src="../js/bootstrap-table-export.js"></script>
<script type="text/javascript" src="../js/bootstrap-table/locale/bootstrap-table-zh-CN.js"></script>
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
<script type="text/javascript" src="../js/mloading/jquery.mloading.js"></script>
<script type="text/javascript" src="../js/bootstrap-datetimepicker-master/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="../js/bootstrap-datetimepicker-master/js/locales/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>

<script type="text/javascript">
    $('#urlDateFrom').datetimepicker({
        format: 'yyyy-mm-dd',
        language: 'zh-CN',
        minView: "month",
        weekStart: 1,
        todayBtn: 1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        forceParse: 0,
        showMeridian: 1

    }).on('click', function (e) {
        $("#urlDateFrom").datetimepicker("setEndDate", $("#urlDateTo").val());
    });
    $('#urlDateTo').datetimepicker({
        format: 'yyyy-mm-dd',
        language: 'zh-CN',
        minView: "month",
        weekStart: 1,
        todayBtn: 1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        forceParse: 0,
        showMeridian: 1

    }).on('click', function (e) {
        $("#urlDateTo").datetimepicker("setStartDate", $("#urlDateFrom").val());
    });
    $('#loadTimeFrom').datetimepicker({
        format: 'yyyy-mm-dd hh:ii',
        language: 'zh-CN',
        weekStart: 1,
        todayBtn: 1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        forceParse: 0,
        showMeridian: 1

    }).on('click', function (e) {
        $("#loadTimeFrom").datetimepicker("setEndDate", $("#loadTimeTo").val());
    });
    $('#loadTimeTo').datetimepicker({
        format: 'yyyy-mm-dd hh:ii',
        language: 'zh-CN',
        weekStart: 1,
        todayBtn: 1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        forceParse: 0,
        showMeridian: 1

    }).on('click', function (e) {
        $("#loadTimeTo").datetimepicker("setStartDate", $("#loadTimeFrom").val());
    });
    $('#lastTimeFrom').datetimepicker({
        format: 'yyyy-mm-dd hh:ii',
        language: 'zh-CN',
        weekStart: 1,
        todayBtn: 1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        forceParse: 0,
        showMeridian: 1

    }).on('click', function (e) {
        $("#lastTimeFrom").datetimepicker("setEndDate", $("#lastTimeTo").val());
    });
    $('#lastTimeTo').datetimepicker({
        format: 'yyyy-mm-dd hh:ii',
        language: 'zh-CN',
        weekStart: 1,
        todayBtn: 1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        forceParse: 0,
        showMeridian: 1

    }).on('click', function (e) {
        $("#lastTimeTo").datetimepicker("setStartDate", $("#lastTimeFrom").val());
    });

    var changeUploader = function () {
        $('#uploadtitle').html("新增导入")
    };
    var changeUploader1 = function () {
        $('#uploadtitle').html("覆盖导入")
    };
    var getsql = function(){
        if ($(":radio:checked").val() == 'sql') {
            var sql = $("#sqlwhere").val();
            return sql;
        }
        if ($(":radio:checked").val() == 'term') {
            var sql = "";
            var urlDateFrom = $.trim($("#urlDateFrom").val());
            var urlDateTo = $.trim($("#urlDateTo").val());
            var lastTimeFrom = $.trim($("#lastTimeFrom").val());
            var lastTimeTo = $.trim($("#lastTimeTo").val());
            var loadTimeFrom = $.trim($("#loadTimeFrom").val());
            var loadTimeTo = $.trim($("#loadTimeTo").val());
            var urltitle = $.trim($("#urltitle").val());
            var urlname = $.trim($("#urlname").val());
            var sitename = $.trim($("#sitename").val());
            var channel = $.trim($("#channel").val());
            var groupname = $.trim($("#groupname").val());
            var startid = $.trim($("#startid").val());
            if (urlDateFrom!=""&&urlDateTo!=""){
                if (sql == ""){
                    sql = "where ir_urldate between '"+urlDateFrom+"' and '"+urlDateTo+ "' ";
                }
                else {
                    sql = sql + "and ir_urldate between '"+urlDateFrom+"' and '"+urlDateTo+ "' ";
                }
            }
            if (lastTimeFrom!=""&&lastTimeTo!=""){
                if (sql == ""){
                    sql = "where ir_lasttime between '"+lastTimeFrom+"' and '"+lastTimeTo+ "' ";
                }
                else {
                    sql = sql + "and ir_lasttime between '"+lastTimeFrom+"' and '"+lastTimeTo+ "' ";
                }
            }
            if (loadTimeFrom!=""&&loadTimeTo!=""){
                if (sql == ""){
                    sql = "where ir_loadtime between '"+loadTimeFrom+"' and '"+loadTimeTo+ "' ";
                }
                else {
                    sql = sql + "and ir_loadtime between '"+loadTimeFrom+"' and '"+loadTimeTo+ "' ";
                }
            }
            if(urltitle!=""){
                if (sql == ""){
                    sql = "where ir_urltitle like '%"+urltitle+ "%' ";
                }
                else {
                    sql = sql + "and ir_urltitle like '%"+urltitle+ "%' ";
                }
            } if(urlname!=""){
                if (sql == ""){
                    sql = "where ir_urlname like '%"+urlname+ "%' ";
                }
                else {
                    sql = sql + "and ir_urlname like '%"+urlname+ "%' ";
                }
            }
            if(sitename!=""){
                if (sql == ""){
                    sql = "where ir_sitename like '%"+sitename+ "%' ";
                }
                else {
                    sql = sql + "and ir_sitename like '%"+sitename+ "%' ";
                }
            }
            if(channel!=""){
                if (sql == ""){
                    sql = "where ir_channel like '%"+channel+ "%' ";
                }
                else {
                    sql = sql + "and ir_channel like '%"+channel+ "%' ";
                }
            }
            if(groupname!=""){
                if (sql == ""){
                    sql = "where ir_groupname like '%"+groupname+ "%' ";
                }
                else {
                    sql = sql + "and ir_groupname like '%"+groupname+ "%' ";
                }
            }
            if(startid!=""){
                if (sql == ""){
                    sql = "where ir_startid = "+startid+ " ";
                }
                else {
                    sql = sql + "and ir_startid = "+startid+ " ";
                }
            }
            return sql;
        }
        if ($(":radio:checked").val() == 'free') {
            var sql = "";
            var table = $("tbody#querybody .intro");
            var array = table.serializeArray();
            var num = array.length / 3;
            for (var i = 1; i < num; i++) {
                if (array[3 * i].value != "" && array[3 * i + 1].value != "") {
                    if (sql != "") {
                        sql = sql + " and ";
                    } else {
                        sql = "where "
                    }
                    sql = sql + array[3 * i].value;
                    if (array[3 * i + 1].value == "like") {
                        sql = sql + " like " + "'%" + array[3 * i + 2].value + "%'";
                    }
                    else if (array[3 * i + 1].value == "notlike") {
                        sql = sql + " not like " + "'%" + array[3 * i + 2].value + "%'";
                    }
                    else if (array[3 * i + 1].value == "null") {
                        sql = sql + " is null";
                    }
                    else if (array[3 * i + 1].value == "notnull") {
                        sql = sql + " is not null";
                    }
                    else {
                        sql = sql + " " + array[3 * i + 1].value + " '" + array[3 * i + 2].value + "'";
                    }
                }
            }
            return sql;
        }
    };
    $(function () {

        //1.初始化Table
        var oTable = new TableInit();
        oTable.Init();

        //2.初始化Button的点击事件
        var oButtonInit = new ButtonInit();
        oButtonInit.Init();

        //3.初始化timepicker
//        $('.form_datetime').datetimepicker()
    });

    var addRow = function (i) {
        var list = document.getElementById("querybody");
        var line = document.getElementById("queryline");
        var clone = line.cloneNode(true);
        clone.setAttribute("style","");
        var num = list.childNodes.length+1;
        clone.setAttribute("id",num);
        var item = clone.childNodes.item(1);
        item.setAttribute("onclick","deleteRow("+ num +")");
        list.appendChild(clone);
    };

    var deleteRow = function (i) {
        var list=document.getElementById("querybody");
        var child = document.getElementById(i);
        list.removeChild(child);
    };
    var TableInit = function () {
        var oTableInit = new Object();
        //初始化Table
        oTableInit.Init = function () {
            $('#tb_departments').bootstrapTable({
                url: '/showQuery.do',         //请求后台的URL（*）
                method: 'get',                      //请求方式（*）
                datashowcolumns:false,
                toolbar: '#toolbar',
                striped: true,                      //是否显示行间隔色
                cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
                pagination: true,                   //是否显示分页（*）
                sortable: false,                     //是否启用排序
                sortOrder: "asc",                   //排序方式
                queryParams: oTableInit.queryParams,//传递参数（*）
                sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
                pageNumber:1,                       //初始化加载第一页，默认第一页
                pageSize: 10,                       //每页的记录行数（*）
                pageList: [10, 25, 50, 100],        //可供选择的每页的行数（*）
                search: false,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
                strictSearch: true,
                showColumns: true,                  //是否显示所有的列
                showRefresh: true,                  //是否显示刷新按钮
                minimumCountColumns: 0,             //最少允许的列数
                clickToSelect: true,                //是否启用点击选中行
               height: 490,                        //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
                uniqueId: "ID",                     //每一行的唯一标识，一般为主键列
                showToggle:false,                    //是否显示详细视图和列表视图的切换按钮
                cardView: false,                    //是否显示详细视图
                detailView: false,                   //是否显示父子表
                // showExport: true,
                // exportTypes:[ 'csv','xlsx'],
                onLoadSuccess: function(row,data){
                    $("[data-toggle='tooltip']").tooltip();
                },
                onColumnSwitch: function (field, checked) {
                    $("[data-toggle='tooltip']").tooltip();
                },
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
//                exportDataType: 'all',
//                exportTypes:[ 'csv', 'json', 'sql', 'xml','doc', 'excel', 'xlsx'],
                columns: [ {
                    field: 'irStartid',
                    title: 'IR_STARTID',
                    width: 80,
                    align: 'center'
                },  {
                    field: 'irGroupname',
                    title: 'IR_GROUPNAME',
                    width: 100
                },{
                    field: 'irSitename',
                    title: 'IR_SITENAME',
                    width: 150
                },  {
                    field: 'irChannel',
                    title: 'IR_CHANNEL',
                    width: 100
                }, {
                    field: 'irUrltitle',
                    title: 'IR_URLTITLE',
                    formatter: function(value,row,index){
                        return "<span data-toggle='tooltip'  class='common-ellipsis tooltip-show' style='width: 600px;' title='"+ value +"'>" + value +"</span>";
                    }
                },{
                    field: 'irUrldate',
                    title: 'IR_URLDATE',
                    sortable: true,
                    width: 100,
                    //——修改——获取日期列的值进行转换
                    formatter: function (value) {
                        return moment(value,"x").format("YYYY-MM-DD")
                    }
                },{
                    field: 'irUrlname',
                    title: 'IR_URLNAME',
                    width: 80,
                    formatter: function (value) {
                        return "<a href=\"" +value+"\">"+value+"</a>";
                    }
                },{
                    field: 'irSid',
                    title: 'IR_SID',
                    width: 80,
                    align: 'center',
                    visible:false
                }, {
                    field: 'irHkey',
                    title: 'IR_HKEY',
                    width: 80,
                    align: 'center',
                    visible:false
                }, {
                    field: 'irAbstract',
                    title: 'IR_ABSTRACT',
                    width: 100,
                    visible:false
                },{
                    field: 'irCharset',
                    title: 'IR_CHARSET',
                    width: 100,
                    visible:false
                },{
                    field: 'irExtname',
                    title: 'IR_EXTNAME',
                    width: 100,
                    visible:false
                },{
                    field: 'irFormat',
                    title: 'IR_FORMAT',
                    width: 100,
                    visible:false
                },{
                    field: 'irKeywords',
                    title: 'IR_KEYWORDS',
                    width: 100,
                    visible:false
                },{
                    field: 'irLasttime',
                    title: 'IR_LASTTIME',
                    width: 100,
                    visible:false,
                    formatter: function (value) {
                        return moment(value,"x").format("YYYY-MM-DD HH:mm:ss")
                    }
                },{
                    field: 'irLoadtime',
                    title: 'IR_LOADTIME',
                    width: 100,
                    visible:false,
                    //——修改——获取日期列的值进行转换
                    formatter: function (value) {
                        return moment(value,"x").format("YYYY-MM-DD HH:mm:ss")
                    }
                },{
                    field: 'irMimetype',
                    title: 'IR_MIMETYPE',
                    width: 100,
                    visible:false
                },{
                    field: 'irPkey',
                    title: 'IR_PKEY',
                    width: 100,
                    visible:false
                },{
                    field: 'irUrlsize',
                    title: 'IR_URLSIZE',
                    width: 100,
                    visible:false
                },{
                    field: 'irUrltime',
                    title: 'IR_URLTIME',
                    width: 100,
                    formatter: function (value) {
                        return moment(value,"x").format("YYYY-MM-DD HH:mm:ss")

                    },
                    visible:false
                },{
                    field: 'irUrltopic',
                    title: 'IR_URLTOPIC',
                    width: 200,
                    visible:false
                },{
                    field: 'irCatalog',
                    title: 'IR_CATALOG',
                    width: 100,
                    visible:false
                },{
                    field: 'irCatalog1',
                    title: 'IR_CATALOG1',
                    width: 100,
                    visible:false
                },{
                    field: 'irCatalog2',
                    title: 'IR_CATALOG2',
                    width: 100,
                    visible:false
                },{
                    field: 'irUrllevel',
                    title: 'IR_URLLEVEL',
                    width: 100,
                    visible:false
                },{
                    field: 'irPagelevel',
                    title: 'IR_PAGELEVEL',
                    width: 100,
                    visible:false
                },{
                    field: 'irPagerank',
                    title: 'IR_PAGERANK',
                    width: 100,
                    visible:false
                }, {
                        field: 'irContentStr',
                        title: 'IR_CONTENT',
                        width: 100,
                        visible:false,
                    formatter:function (data) {
                        var encodeText = HTMLEncode(data);
                        return encodeText;
                    }
                    },{
                    field: 'irUrlcontentStr',
                    title: 'IR_URLCONTENT',
                    width: 100,
                    visible:false,
                    formatter:function (data) {
                        var encodeText = HTMLEncode(data);
                        return encodeText;
                    }
                },{
                    field: 'irUrlbodyStr',
                    title: 'IR_URLBODY',
                    width: 100,
                    visible:false,
                    formatter:function (data) {
                        var encodeText = HTMLEncode(data);
                        return encodeText;
                    }
                },{
                    field: 'irBbsnum',
                    title: 'IR_BBSNUM',
                    width: 100,
                    visible:false
                }, {
                        field: 'irServiceid',
                        title: 'IR_SERVICEID',
                        width: 100,
                        visible:false
                    }, {
                    field: 'irSrcname',
                    title: 'IR_SRCNAME',
                    width: 100,
                    visible:false
                }, {
                    field: 'irAuthors',
                    title: 'IR_AUTHORS',
                    width: 100,
                    visible:false
                }, {
                    field: 'irDistrict',
                    title: 'IR_DISTRICT',
                    width: 100,
                    visible:false
                }, {
                    field: 'irSimflag',
                    title: 'IR_SIMFLAG',
                    width: 100,
                    visible:false
                }, {
                    field: 'irSimrank',
                    title: 'IR_SIMRANK',
                    width: 100,
                    visible:false
                }, {
                    field: 'irImageflag',
                    title: 'IR_IMAGEFLAG',
                    width: 100,
                    visible:false
                }, {
                    field: 'irTableflag',
                    title: 'IR_TABLEFLAG',
                    width: 100,
                    visible:false
                }, {
                    field: 'irDoclength',
                    title: 'IR_DOCLENGTH',
                    width: 100,
                    visible:false
                }, {
                    field: 'irBbstopic',
                    title: 'IR_BBSTOPIC',
                    width: 100,
                    visible:false
                }, {
                    field: 'irBbskey',
                    title: 'IR_BBSKEY',
                    width: 100,
                    visible:false
                }, {
                    field: 'irWcmid',
                    title: 'IR_WCMID',
                    width: 100,
                    visible:false
                }, {
                    field: 'irStatus',
                    title: 'IR_STATUS',
                    width: 100,
                    visible:false
                }, {
                    field: 'irNreserved1',
                    title: 'IR_NRESERVED1',
                    width: 100,
                    visible:false
                }, {
                    field: 'irNreserved2',
                    title: 'IR_NRESERVED2',
                    width: 100,
                    visible:false
                }, {
                    field: 'irNreserved3',
                    title: 'IR_NRESERVED3',
                    width: 100,
                    visible:false
                }, {
                    field: 'irVreserved1',
                    title: 'IR_VRESERVED1',
                    width: 100,
                    visible:false
                }, {
                    field: 'irVreserved2',
                    title: 'IR_VRESERVED2',
                    width: 100,
                    visible:false
                }, {
                    field: 'irVreserved3',
                    title: 'IR_VRESERVED3',
                    width: 100,
                    visible:false
                }, {
                    field: 'irVreserved4',
                    title: 'IR_VRESERVED4',
                    width: 100,
                    visible:false
                }, {
                    field: 'irSreserved1',
                    title: 'IR_SRESERVED1',
                    width: 100,
                    visible:false
                }, {
                    field: 'irSreserved2',
                    title: 'IR_SRESERVED2',
                    width: 100,
                    visible:false
                }, {
                    field: 'irSreserved3',
                    title: 'IR_SRESERVED3',
                    width: 100,
                    visible:false
                }
                ]
            });
        };

        //得到查询的参数
        oTableInit.queryParams = function (params) {
            var temp = {   //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
                limit: params.limit,   //页面大小
                page: Math.floor(params.offset/params.limit)+1,
                sql: getsql(),
                i:'urlcontent'
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
    $(function() {
        $(":radio").click(function () {
            if ($(this).val() == 'sql') {
                var termform = document.getElementById("formSearch").setAttribute("style", "display:none");
                var sqlform = document.getElementById("formSearch1").setAttribute("style", "");
                var freeform = document.getElementById("formSearch2").setAttribute("style", "display:none");
            }
            if ($(this).val() == 'term') {
                var termform = document.getElementById("formSearch").setAttribute("style", "");
                var sqlform = document.getElementById("formSearch1").setAttribute("style", "display:none");
                var freeform = document.getElementById("formSearch2").setAttribute("style", "display:none");
            }
            if ($(this).val() == 'free') {
                var termform = document.getElementById("formSearch").setAttribute("style", "display:none");
                var sqlform = document.getElementById("formSearch1").setAttribute("style", "display:none");
                var freeform = document.getElementById("formSearch2").setAttribute("style", "");
            }
        });
        $("#btn_query").click(function () {
            var urlDateFrom = $.trim($("#urlDateFrom").val());
            var urlDateTo = $.trim($("#urlDateTo").val());
            var lastTimeFrom = $.trim($("#lastTimeFrom").val());
            var lastTimeTo = $.trim($("#lastTimeTo").val());
            var loadTimeFrom = $.trim($("#loadTimeFrom").val());
            var loadTimeTo = $.trim($("#loadTimeTo").val());
            if (urlDateFrom!="" ^ urlDateTo!=""){
                bootbox.alert("请输入完整的发布日期！");
                $('#tb_departments').bootstrapTable("removeAll");
                return ;
            }
            if (lastTimeFrom!="" ^ lastTimeTo!=""){
                bootbox.alert("请输入完整的采集时间！");
                $('#tb_departments').bootstrapTable("removeAll");
                return ;
            }
            if (loadTimeFrom!="" ^ loadTimeTo!=""){
                bootbox.alert("请输入完整的入库时间！");
                $('#tb_departments').bootstrapTable("removeAll");
                return ;
            }
           var sql = getsql();
            $('#tb_departments').bootstrapTable('refresh', {query:{limit: 10,page: 1,sql: sql, i:'urlcontent'}});
        });
        $("#btn_modify").click(function () {
            var urlDateFrom = $.trim($("#urlDateFrom").val());
            var urlDateTo = $.trim($("#urlDateTo").val());
            var lastTimeFrom = $.trim($("#lastTimeFrom").val());
            var lastTimeTo = $.trim($("#lastTimeTo").val());
            var loadTimeFrom = $.trim($("#loadTimeFrom").val());
            var loadTimeTo = $.trim($("#loadTimeTo").val());
            if (urlDateFrom!="" ^ urlDateTo!=""){
                bootbox.alert("请输入完整的发布日期！");
                return ;
            }
            if (lastTimeFrom!="" ^ lastTimeTo!=""){
                bootbox.alert("请输入完整的采集时间！");
                return ;
            }
            if (loadTimeFrom!="" ^ loadTimeTo!=""){
                bootbox.alert("请输入完整的入库时间！");
                return ;
            }
            var sqlline = getsql();
            if(sqlline==""||$("#columntomodify").val()==""){
                bootbox.alert("请输入修改条件后，再修改数据！");
                return;
            }
            bootbox.confirm({
                message: "确定修改这些记录？",
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
                        var temp = {   //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
                            sql:sqlline,
                            column:$("#columntomodify").val(),
                            modify:$("#tomodify").val()
                        };
                        $("body").mLoading("show");
                        $.ajax({
                            url:"/modify.do",
                            data: temp,
                            type:'post',
                            async:false,
                            success:function(result){
                                if(!result.success){
                                    $("body").mLoading("hide");
                                    bootbox.alert("修改失败!"+result.msg);
                                }else{
                                    $("body").mLoading("hide");
                                    bootbox.alert("修改成功!");
                                    $('#tb_departments').bootstrapTable('refresh');
                                }
                            }
                        })
                    }
                }
            });
        });
        $("#btn_delete").click(function () {
            var urlDateFrom = $.trim($("#urlDateFrom").val());
            var urlDateTo = $.trim($("#urlDateTo").val());
            var lastTimeFrom = $.trim($("#lastTimeFrom").val());
            var lastTimeTo = $.trim($("#lastTimeTo").val());
            var loadTimeFrom = $.trim($("#loadTimeFrom").val());
            var loadTimeTo = $.trim($("#loadTimeTo").val());
            if (urlDateFrom!="" ^ urlDateTo!=""){
                bootbox.alert("请输入完整的发布日期！");
                return ;
            }
            if (lastTimeFrom!="" ^ lastTimeTo!=""){
                bootbox.alert("请输入完整的采集时间！");
                return ;
            }
            if (loadTimeFrom!="" ^ loadTimeTo!=""){
                bootbox.alert("请输入完整的入库时间！");
                return ;
            }
            if(getsql()==""){
                bootbox.alert("请输入查询条件后，再删除数据！");
                return;
            }
            bootbox.confirm({
                message: "确定删除这些记录？",
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
                    var sql = getsql();
                    var temp = {   //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
                        sql: sql
                    };
                        $("body").mLoading("show");
                        $.ajax({
                            url:"/deleterows.do",
                            data: temp,
                            type:'post',
                            async:false,
                            success:function(result){
                                if(!result.success){
                                    $("body").mLoading("hide");
                                    bootbox.alert("删除失败!"+result.msg);
                                }else{
                                    $("body").mLoading("hide");
                                    bootbox.alert("删除成功!");
                                    $('#tb_departments').bootstrapTable('refresh');
                                }
                            }
                        })
                }
                }
                });
        });
        $.ajax({
            url: "/getFieldList.do",//写你自己的方法，返回map，我返回的map包含了两个属性：data：集合，total：集合记录数量，所以后边会有data.data的写法。。。
            type: "get",
            dataType: "json",
            success: function (data) {
                $.each(data.fields, function (i) {
                    $('#txt_value').append("<option value=" + data.fields[i] + ">" + data.fields[i] + "</option>");
                });
            },
            error: function (data) {
                alert("自定义查询字段加载失败" + data);
            }
        });
        $.ajax({
            url: "/getFieldList1.do",//写你自己的方法，返回map，我返回的map包含了两个属性：data：集合，total：集合记录数量，所以后边会有data.data的写法。。。
            type: "get",
            dataType: "json",
            success: function (data) {
                $.each(data.fields, function (i) {
                    $('#columntomodify').append("<option value=" + data.fields[i] + ">" + data.fields[i] + "</option>");
                });
            },
            error: function (data) {
                alert("批量修改字段加载失败" + data);
            }
        });

        $("#btn_download").click(function () {
            var columns = $('#tb_departments').bootstrapTable('getVisibleColumns');
            var fields = "";
            if(columns && columns.length > 0){
                $.each(columns, function (index, item) {
                    fields += ',' + item.field;
                });
                fields = fields.substring(1);
            }

            var sql = getsql();
            var val = encodeURI(sql);
            val = encodeURI(val);
            window.open("/exportExcel.do?sql= " + val + "&fields=" + fields);
        });
        $("#btn_all").click(function () {
            i++;
            if(i%2==1){
                $(".dropdown-menu>li").find("input").each(function(){
                    if(!$(this).get(0).checked){
                        $(this).click();
                    }
                });
            }else{
                $(".dropdown-menu>li").find("input").each(function(){
                    if($(this).get(0).checked){
                        $(this).click();
                    }
                });
            }
        });
        $("#btn_model").click(function () {
            window.open("/getmodel.do")}
        );

        $(".bootstrap-table .dropdown-menu>li").first().prepend("<button onclick=\"showall();\">全选/全不选</button>")

    });

</script>
<script type="text/javascript">
    var i = 0;
    var showall = function(){
        i++;
        if(i%2==1){
            $('#tb_departments').bootstrapTable('showAllColumns');
            $(".dropdown-menu>li").find("input").each(function(){
                if(!$(this).get(0).checked){
                    $(this).prop("checked",'checked');
                }
            });
        }else{
            $('#tb_departments').bootstrapTable('hideAllColumns');
            $(".dropdown-menu>li").find("input").each(function(){
                if($(this).get(0).checked){
                    $(this).prop("checked",false);
                }
            });
        }
    };
    //实例化一个plupload上传对象
    var uploader = new plupload.Uploader({
        //这个是选择文件的button
        browse_button : 'browse',
        //服务器端的上传地址
        url : '/uploadFile.do',
        multi_selection: false,
        filters: [                //文件类型限制
            {title: "excel文件", extensions: "xlsx" }]
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
                    $('#filelist').append('<div><input type="hidden" name="attachmentId" id="id'+files[i].id+'"/>'+files[i].name + ' (' + plupload.formatSize(files[i].size) + ')<div id="'+files[i].id+'"></div></div></br>');
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
    // uploader.bind('FileUploaded',
    //     function(up, file,result) {
    //         $('#id'+file.id).val(result.response);
    //     }
    // );

    //全部完成后的事件
    uploader.bind('FileUploaded',
        function(up, files,res) {
            try {
                var fname = res.response.replace("\"","").replace("\"","");   // 后端返回的标志
                var texts = $('#uploadtitle').html();
                var type = 1;
                if(texts == "新增导入"){
                    type = 0;
                }
                $.post("/insertexcel.do?fn="+fname+"&type="+type, function(data) {//type=0 新增导入type=1覆盖导入
                    if(data.success==true){
                        bootbox.alert("导入成功");
                    }
                    else{
                        bootbox.alert("导入失败,"+data.msg.toString());
                    }
                }).error(function() { bootbox.alert({
                    title: "提示",
                    message: "导入失败！请联系管理员开放权限后再试用！"
                })
                });
            } catch(e) {
                upFlag = false;
            }
        }
    );

    //给"开始上传"按钮注册事件
    document.getElementById('start_upload').onclick = function(){
        uploader.start(); //调用实例对象的start()方法开始上传文件，当然你也可以在其他地方调用该方法
    };
    $("#myModal").on("hide.bs.modal", function() {
        uploader.splice(0, 100);
        $("#filelist").empty();
    });
    function HTMLEncode(html) {
        var temp = document.createElement("div");
        (temp.textContent != null) ? (temp.textContent = html) : (temp.innerText = html);
        var output = temp.innerHTML;
        temp = null;
        return output;
    }
    // function HTMLDecode(text) {
    //     var temp = document.createElement("div");
    //     temp.innerHTML = text;
    //     var output = temp.innerText || temp.textContent;
    //     temp = null;
    //     return output;
    // }

</script>

</body>
</html>