<%--
  Created by IntelliJ IDEA.
  User: zhaoao
  Date: 2018/3/28
  Time: 18:22
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: zhaoao
  Date: 2017/12/19
  Time: 22:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width"/>
    <title>数据查询</title>
    <link href="../js/bootstrap-datetimepicker-master/css/bootstrap-datetimepicker.css" rel="stylesheet"
          type="text/css"/>
    <link href="../js/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="../js/bootstrap-table/bootstrap-table.css" rel="stylesheet" type="text/css"/>
    <link href="../css/common.css" rel="stylesheet"  type="text/css"/>
    <style>

        .panel-default  .panel-heading{
            font-weight: bold;
            font-size: 14px;
            color: #576063;
        }
        #tb_departments{
            background-color: #fff;
            padding: 15px;
        }
        .tb_dep_content{
            background-color: #fff;
            margin: 0 15px 15px 15px;
            padding: 2px;
            border-radius: 3px;
        }
        .tb_dep_content .bootstrap-table{
            height: 80%;
        }
        .th-inner{
            font-size:14px
        }
        .fixed-table-header{
            background-color: #bee7f3;
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
        .form-horizontal .control-label{
            width: auto;
            padding: 2px 0 0 0;
            font-size: 16px;
            line-height: 28px;
            font-weight: normal;
        }
        .rowSty{
            margin: 3px 0;
        }
        #querytable, .rowSty  th, td{
            padding: 0 3px 3px 3px;
        }
        .label-change label{
            margin-top: 5px;
        }
        .label-change div{
            padding: 0;
        }
        .fixed-table-toolbar .pull-right{
            margin: 0 0 3px 0;
        }
        .fixed-table-container tbody td{
            white-space: nowrap;
        }
        .btn{
            padding: 3px 6px;
        }
    </style>

</head>
<body>
<h3 style="margin-left: 15px">数据查询</h3>
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
            <label class="control-label col-sm-1">数据表选择</label>
            <div class="col-sm-1 input-append ">
                <select type="text" id="manageTables" name="item" class="form-control intro selectpicker"  >
                    <option value="" style="display: none;">请选择</option>
                    <option value="urlcontent">URLCONTENT</option>
                </select>
            </div>
            </form>
            <form id="formSearch" class="form-horizontal">
                <div class="form-group" style="margin-top:15px">
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
                    <textarea rows="3"   id="sqlwhere">where 1=1</textarea>

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

</div>
<div class="tb_dep_content">
    <table id="tb_departments" class="table table-hover"></table>
</div>


</body>
<script type="text/javascript" src="../js/jquery-1.11.0.min.js" charset="UTF-8"></script>
<script type="text/javascript" src="../js/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="../js/bootstrap-table/bootstrap-table.js"></script>
<script type="text/javascript" src="../js/bootstrap-table-export.js"></script>
<script type="text/javascript" src="../js/bootstrap-table/locale/bootstrap-table-zh-CN.js"></script>
<script src="../js/pdfmake.min.js"></script>
<script src="../js/jspdf.min.js"></script>
<script src="../js/jspdf.plugin.autotable.js"></script>
<script src="../js/vfs_fonts.js"></script>
<script type="text/javascript" src="../js/html2canvas.min.js"></script>
<script type="text/javascript" src="../js/FileSaver.min.js"></script>
<script type="text/javascript" src="../js/tableExport.js"></script>
<script type="text/javascript" src="../js/xlsx.core.min.js"></script>
<script type="text/javascript" src="../js/bootbox.min.js"></script>
<script type="text/javascript" src="../js/moment.js"></script>

<script type="text/javascript" src="../js/bootstrap-datetimepicker-master/js/bootstrap-datetimepicker.js"
        charset="UTF-8"></script>
<script type="text/javascript" src="../js/bootstrap-datetimepicker-master/js/locales/bootstrap-datetimepicker.zh-CN.js"
        charset="UTF-8"></script>

<script type="text/javascript">
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
            if (urlDateFrom!="" ^ urlDateTo!=""){
                bootbox.alert("请输入完整的发布日期！");
                return "where 1>1";
            }
            if (lastTimeFrom!="" ^ lastTimeTo!=""){
                bootbox.alert("请输入完整的采集时间！");
                return "where 1>1";
            }
            if (loadTimeFrom!="" ^ loadTimeTo!=""){
                bootbox.alert("请输入完整的入库时间！");
                return "where 1>1";
            }
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

    var addRow = function () {
        var list = document.getElementById("querybody");
        var line = document.getElementById("queryline");
        var clone = line.cloneNode(true);
        clone.setAttribute("style", "");
        var num = list.childNodes.length + 1;
        clone.setAttribute("id", num);
        var item = clone.childNodes.item(1);
        item.setAttribute("onclick", "deleteRow(" + num + ")");
        list.appendChild(clone);
    };

    var deleteRow = function (i) {
        var list = document.getElementById("querybody");
        var child = document.getElementById(i);
        list.removeChild(child);
    };
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
    var TableInit = function () {
        var oTableInit = new Object();
        //初始化Table
        oTableInit.Init = function () {
            $('#tb_departments').bootstrapTable({
                url: '/datamanage/showQuery.do',         //请求后台的URL（*）
                method: 'get',                      //请求方式（*）
                datashowcolumns: false,
                toolbar: '#toolbar',
                striped: true,                      //是否显示行间隔色
                cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
                pagination: true,                   //是否显示分页（*）
                sortable: false,                   //是否启用排序
                sortOrder: "asc",                   //排序方式
                queryParams: oTableInit.queryParams,//传递参数（*）
                sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
                pageNumber: 1,                       //初始化加载第一页，默认第一页
                pageSize: 10,                       //每页的记录行数（*）
                pageList: [10, 25, 50, 100],        //可供选择的每页的行数（*）
                search: false,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
                strictSearch: true,
                showColumns: true,                  //是否显示所有的列
                showRefresh: true,                  //是否显示刷新按钮
                minimumCountColumns: 0,             //最少允许的列数
                clickToSelect: true,                //是否启用点击选中行
                height: 500,                        //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
                uniqueId: "ID",                     //每一行的唯一标识，一般为主键列
                showToggle: false,                    //是否显示详细视图和列表视图的切换按钮
                cardView: false,                    //是否显示详细视图
                detailView: false,                   //是否显示父子表
                showExport: false,
                exportTypes:[ 'csv','xlsx'],
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
                onLoadSuccess: function(row,data){
                    $("[data-toggle='tooltip']").tooltip();
                    $('#tb_departments').bootstrapTable('showColumn', 'irStartid');
                    $('#tb_departments').bootstrapTable('showColumn', 'irGroupname');
                    $('#tb_departments').bootstrapTable('showColumn', 'irSitename');
                    $('#tb_departments').bootstrapTable('showColumn', 'irChannel');
                    $('#tb_departments').bootstrapTable('showColumn', 'irUrltitle');
                    $('#tb_departments').bootstrapTable('showColumn', 'irUrldate');
                    $('#tb_departments').bootstrapTable('showColumn', 'irUrlname');
                },
            });
        };

        //得到查询的参数
        oTableInit.queryParams = function (params) {
            var temp = {   //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
                limit: params.limit,   //页面大小
                page: Math.floor(params.offset / params.limit) + 1,
                sql: getsql(),
                i: $("#manageTables").val()
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
    $(function () {
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

        $.ajax({
            url: "/datawash/getToTables.do",//写你自己的方法，返回map，我返回的map包含了两个属性：data：集合，total：集合记录数量，所以后边会有data.data的写法。。。
            type: "get",
            dataType: "json",
            success: function (data) {
                $.each(data, function (i) {
                    $('#manageTables.selectpicker').append("<option value=" + data[i] + ">" + data[i] + "</option>");
                });
            },
            error: function (data) {
                alert("数据源表加载失败" + data);
            }
        });

        $.ajax({
            url: "/datamanage/getFieldList.do",//写你自己的方法，返回map，我返回的map包含了两个属性：data：集合，total：集合记录数量，所以后边会有data.data的写法。。。
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

        $("#btn_query").click(function () {
            if ($("#manageTables").val() == "" ) {
                bootbox.alert("请选择数据表！")
            }
            else {
                var columns = [];
                $('#tb_departments').bootstrapTable('refreshOptions',{pageNumber:1});
            $.ajax({
                url: '/datamanage/getColumns.do',
                type: 'post',
                data: {i: $("#manageTables").val()},
                dataType: "json",
                async: true,
                success: function (returnValue) {
                    var arr = returnValue.fields;
                    arr.pop();
                    $.each(arr, function (i, item) {
                            if (item.type == "java.util.Date") {
                                if(item.name.endsWith("time")){
                                columns.push({
                                    "field": item.name,
                                    "title": item.name.replace(/([A-Z])/g, "_$1").toUpperCase(),
                                    "visible": false,
                                    "formatter": function (value) {
                                        return moment(value, "x").format("YYYY-MM-DD HH:mm:ss")
                                    }
                                });
                                }
                                else{
                                    columns.push({
                                        "field": item.name,
                                        "title": item.name.replace(/([A-Z])/g, "_$1").toUpperCase(),
                                        "visible": false,
                                        "formatter": function (value) {
                                            return moment(value, "x").format("YYYY-MM-DD")
                                        }
                                    });
                                }
                            }
                            else {
                                columns.push({
                                    "field": item.name,
                                    "title": item.name.replace(/([A-Z])/g, "_$1").toUpperCase(),
                                    "visible": false
                                });
                            }
                    });
                    var temp = {   //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
                        // limit: 10,   //页面大小
                        // page: 1,  //页码
                        // sql: getsql(),
                        // i: $("#manageTables").val(),
                        columns: columns
                    };
                    $('#tb_departments').bootstrapTable("refreshOptions", temp);
                    $(".bootstrap-table .dropdown-menu>li").first().prepend("<button onclick=\"showall();\">全选/全不选</button>")

                }
            });

        }
        });


    });
</script>
</html>