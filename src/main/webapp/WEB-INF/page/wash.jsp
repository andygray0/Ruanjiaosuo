<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<html>
<head>
	<title>数据清洗</title>
	<meta charset="UTF-8">
	<link href="../js/bootstrap/css/bootstrap.css" rel="stylesheet"  type="text/css"/>
	<link href="../js/bootstrap-table/bootstrap-table.css" rel="stylesheet"  type="text/css"/>
	<link rel="stylesheet" type="text/css" href="../../files/wash_files/datepicker.min.css">
	<link href="../js/bootstrap-datetimepicker-master/css/bootstrap-datetimepicker.css" rel="stylesheet" type="text/css"/>
	<link href="../js/bootstrap-select/css/bootstrap-select.min.css" rel="stylesheet"  type="text/css"/>
	<link href="../js/mloading/jquery.mloading.css" rel="stylesheet"  type="text/css"/>
	<link href="../css/common.css" rel="stylesheet"  type="text/css"/>
	<link href="../js/bootstrapValidator/bootstrapValidator.min.css" rel="stylesheet"  type="text/css" />

	<style>
        .fixed-table-container tbody td{
            white-space: nowrap;
        }
        .fixed-table-toolbar .pull-right .btn{
            padding: 3px ;
        }
        .fixed-table-toolbar .pull-right .btn[name='refresh']{
            height: 28px;
            padding: 3px 8px;
        }
        .fixed-table-toolbar .pull-right .btn[name='toggle']{
            height: 28px;
            padding: 3px 8px;
        }
        .fixed-table-container{
             height: auto;
             padding-bottom: 0;
        }
        /*表格高度固定 内部自适应滚动*/
        /*.fixed-table-body {*/
            /*max-height: 285px;*/
        /*}*/
        #tb_departments{
            font-size: 14px;
            color: #576063;
        }
        #tb_departments thead{
            font-weight: bold;
            font-size: 15px;
            color: #576063;
        }
        .fixed-table-toolbar .columns{
             margin-top: 0;
             margin-bottom: 0;
        }
        .panel{
            margin-bottom: 10px;
        }
		.col-sm-1 {
			width: auto;
		}
		.modal-backdrop.in{
			z-index:10;
		}
		#querytable, .rowSty  th, td{
			padding: 0 3px 3px 3px;
		}
		.form-control {
			height: 28px;
			padding: 2px 0 0 2px;
		}
        .dropdown-menu.open{
            overflow:hidden;
        }
        .dropdown-menu.inner{
            max-height:200px;
            overflow:scroll;
        }
		.mloading-bar {
			width: 350px;
		}
    </style>
</head>


<body >
<h3 style="margin-left: 15px">数据清洗</h3>
		<div class="panel-body" style="padding-bottom:0px;">
			<div class="panel panel-default">
				<div class="panel-heading">查询条件</div>
				<div class="panel-body">
					<input type="radio" name="queryWay" value="term" checked="checked"/><span style="padding-left:5px;">条件查询</span>
					<input type="radio" name="queryWay" value="sql"/><span  style="padding-left:5px;">SQL查询</span>
					<input type="radio" name="queryWay" value="free"/><span  style="padding-left:5px;">自定义查询</span>
					<form id="form0" class="form-horizontal">
					<div class="form-group" style="margin-top:15px">
						<label class="control-label  col-sm-1" for="txt_search_rule" style="margin-lsft:15px">数据源库</label>
						<div class="col-sm-2">
							<select type="text" class="form-control selectpicker" id="txt_fromtable">
								<option  value="">请选择...</option>
							</select>
						</div>
					</div>
					</form>
					<form id="formSearch" class="form-horizontal">
						<div class="form-group" style="margin-top:15px">

							<label class="control-label col-sm-1" >发布日期</label>
							<div class="col-sm-1 input-append">
								<input size="13"  class="form-control date form_datetime"  type="text" value=""  id="urlDateFrom" readonly>
								<span class="add-on"><i class="icon-th"></i></span>
							</div>

							<label class="control-label col-sm-1" style="padding:0px">_</label>
							<div class="col-sm-1 input-append" >
								<input size="13"  class="form-control date form_datetime"  type="text" value=""  id="urlDateTo" readonly>
								<span class="add-on"><i class="icon-th"></i></span>
							</div>

						<label class="control-label col-sm-1" >采集时间</label>
						<div class="col-sm-1 input-append" >
							<input size="13"  class="form-control date form_datetime"  type="text" value=""  id="lastTimeFrom" readonly>
							<span class="add-on"><i class="icon-th"></i></span>
						</div>
							<label class="control-label col-sm-1" style="padding:0px">_</label>
							<div class="col-sm-1 input-append" >
								<input size="13"  class="form-control date form_datetime"  type="text" value=""  id="lastTimeTo" readonly>
								<span class="add-on"><i class="icon-th"></i></span>
							</div>
						</div>
						<div class="form-group" style="margin-top:15px">

							<label class="control-label col-sm-1">网站名称</label>
							<div class="col-sm-1">
								<input size="10" class="form-control" id="sitename" type="text" value="">
							</div>
							<label class="control-label col-sm-1">网站栏目</label>
							<div class="col-sm-1">
								<input size="10" class="form-control" id="channel" type="text" value="">
							</div>
						</div>
					</form>
					<form id="formSearch1" class="form-horizontal" style="display:none">
						<div class="form-group">
						<label class="control-label col-sm-1">查询条件</label>
						<div class="col-sm-3 ">
							<textarea rows="3" cols="30" id="sqlwhere">where </textarea>
							<span class="add-on"><i class="icon-th"></i></span>
						</div>
						</div>
					</form>
					<form id="formSearch2" class="form-horizontal" style="display:none">
						<div class="form-group">
						<table style="clear: both">
							<tbody>
							<tr>
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
						</div>
					</form>


					<button type="button" style="margin-left:10px" id="btn_query" class="col-sm-1 btn btn-primary addRow">查询
					</button>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">规则配置</div>
				<div class="panel-body">
					<form id="formSearch3" class="form-horizontal">
						<div class="form-group" style="margin-top:15px">
							<label class="control-label  col-sm-1" for="txt_search_rule">清洗规则</label>
							<div class="col-sm-2">
								<select type="text" class="form-control selectpicker" id="txt_search_rule">
									<option  value="">请选择...</option>
								</select>
							</div>

							<label class="control-label  col-sm-1" for="txt_search_rule">目标库</label>
							<div class="col-sm-2">
								<select type="text" class="form-control selectpicker" id="txt_totable">
									<option  value="">请选择...</option>
								</select>
							</div>
							<div class="col-sm-4" style="text-align:left;">
								<button type="button" style="margin-left:50px" id="btn_wash" class="btn btn-primary" >清洗</button>
								<button type="button" style="margin-left:50px" data-target="#myModal" data-toggle="modal"  id="btn_add_timer" class="btn btn-primary" >添加定时任务</button>
							</div>
						</div>
					</form>
				</div>
			</div>
			<%--<div id="toolbar" class="btn-group">--%>
				<%--<button id="btn_add" type="button" class="btn btn-default">--%>
					<%--<span class="glyphicon glyphicon-plus" aria-hidden="true">新增</span>--%>
				<%--</button>--%>
				<%--<button id="btn_edit" type="button" class="btn btn-default">--%>
					<%--<span class="glyphicon glyphicon-pencil" aria-hidden="true">修改</span>--%>
				<%--</button>--%>
				<%--<button id="btn_delete" type="button" class="btn btn-default">--%>
					<%--<span class="glyphicon glyphicon-remove" aria-hidden="true">删除</span>--%>
				<%--</button>--%>
				<%--&lt;%&ndash;<button type="button" id="download" style="margin-left:50px" id="btn_download" class="btn btn-primary" onClick ="$('#tb_departments').tableExport({ type: 'xlsx', escape: 'false' })">数据导出</button>&ndash;%&gt;--%>
			<%--</div>--%>
			<table id="tb_departments" style="height: auto;overflow: auto;" class="table table-hover "></table>

			<div id="myModal" class="modal fade"  role="dialog"   aria-hidden=true>
				<div class="modal-dialog modal-lg" style="width: 50%">
					<div class="modal-content">
							<legend  > &nbsp;&nbsp;添加定时任务</legend>
						<form id="addform" class="form-horizontal" >
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
									<input id="sourcetable" name="sourcetable" type="text" class="form-control" readonly>
								</div>
							</div>
							<div class="form-group">
								<label for="goaltable" class="col-sm-2 control-label">目标表</label>
								<div class="col-sm-8">
									<input id="goaltable" name="goaltable" type="text" class="form-control" readonly>
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
									<input id="rules" name="rules" type="text" class="form-control"  readonly>
								</div>
							</div>
							<div class="form-group">
								<label for="starttime" class="col-sm-2 control-label">开始时间</label>
								<div class="col-sm-8">
									<input id="starttime" name="starttime" type="text" class="form-control date form_datetime" readonly>
								</div>
							</div>
							<div class="form-group">
								<label for="opti" class="col-sm-2 control-label">选择</label>
								<div class="col-sm-3">
									<select id="opti" name="opti" type="text" class="form-control selectpicker " readonly>
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
							<div  class="form-group">
								<label for="onoff" class="col-sm-2 control-label">是否激活</label>
								<div class="col-sm-8">
									<select class="form-control selectpicker" id="onoff" name="onoff" >
										<option value="0">否</option>
										<option value="1">是</option>
									</select>
								</div>
							</div>
						</form>

						<div class="modal-footer" >
							<input type="hidden" id="ID" name="ID" />
							<button type="submit" class="btn btn-primary"  onclick ="insert()">确定</button>
							<button type="button" class="btn green" data-dismiss="modal">取消</button>
						</div>
					</div>
				</div>
			</div>
		</div>

<script type="text/javascript" src="../js/jquery-1.11.0.min.js"></script>
<script src="../js/bootstrap/js/bootstrap.js"></script>
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
<script type="text/javascript" src="../js/bootstrap-datetimepicker-master/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="../js/bootstrap-datetimepicker-master/js/locales/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
<script type="text/javascript" src="../js/moment.js"></script>
<script type="text/javascript" src="../js/bootstrap-select/js/bootstrap-select.js"></script>
<script type="text/javascript" src="../js/bootstrap-select/js/i18n/defaults-zh_CN.min.js"></script>
<script type="text/javascript" src="../js/mloading/jquery.mloading.js"></script>
<script type="text/javascript" src="../js/bootstrapValidator/bootstrapValidator.min.js"></script>
<script type="text/javascript" src="../js/bootstrapValidator/zh_CN.min.js"></script>
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
            var sitename = $.trim($("#sitename").val());
            var channel = $.trim($("#channel").val());
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
                    sql = "where ir_urldate between '"+lastTimeFrom+"' and '"+lastTimeTo+ "' ";
                }
                else {
                    sql = sql + "and ir_urldate between '"+lastTimeFrom+"' and '"+lastTimeTo+ "' ";
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
    var formValidator = function(){
    $("#addform").bootstrapValidator({
        live: 'disabled',//验证时机，enabled是内容有变化就验证（默认），disabled和submitted是提交再验证
        excluded: [':disabled',  ':not(:visible)'],//排除无需验证的控件，比如被禁用的或者被隐藏的
        // submitButtons: '#btn-add',//指定提交按钮，如果验证失败则变成disabled，但我没试成功，反而加了这句话非submit按钮也会提交到action指定页面
        message: '验证失败',//好像从来没出现过
        feedbackIcons: {//根据验证结果显示的各种图标
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
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
            // querys: {
            //     validators: {
            //         notEmpty: {//检测非空,radio也可用
            //             message: '文本框必须输入'
            //         }
            //     }
            // },
            expression: {
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
            txt_rules: {
                validators: {
                    notEmpty: {
                        message: '请选择规则！'
                    },callback: {
                        message: '必须选择规则',
                        callback: function(value, validator) {
                            if (value == 0) {
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
	var insert=function(){
        $("#addform").bootstrapValidator('validate');//提交验证
        if ($("#addform").data('bootstrapValidator').isValid()) {
            var params = $("#addform").serialize();
            $.post("/insertWashTimer.do",params,function(result){
                if(result.success){
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
                    params = params + "&id="+result.id+"&stamp=";
                    if($('#onoff').val()==1){
                        $.post("/addTask.do",params,function(result){

                        });
                    }
                    $('#myModal').modal('hide');
                    $('#myModal').removeData("bs.modal");
                }else{
                    bootbox.alert("新增失败!");
                }
            });
        }
	};
    var addRow = function (i) {
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
    $('#urlDateFrom').datetimepicker({
        format:'yyyy-mm-dd',
        language:  'zh-CN',
        minView: "month",
        weekStart: 1,
        todayBtn:  1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        forceParse: 0,
        showMeridian: 1

    }).on('click',function(e){
        $("#urlDateFrom").datetimepicker("setEndDate", $("#urlDateTo").val());
    });
    $('#urlDateTo').datetimepicker({
        format:'yyyy-mm-dd',
        language:  'zh-CN',
        minView: "month",
        weekStart: 1,
        todayBtn:  1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        forceParse: 0,
        showMeridian: 1

    }).on('click',function(e){
        $("#urlDateTo").datetimepicker("setStartDate", $("#urlDateFrom").val());
    });

    $('#lastTimeFrom').datetimepicker({
        format:'yyyy-mm-dd hh:ii',
        language:  'zh-CN',
        weekStart: 1,
        todayBtn:  1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        forceParse: 0,
        showMeridian: 1

    }).on('click',function(e){
        $("#lastTimeFrom").datetimepicker("setEndDate", $("#lastTimeTo").val());
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

    });
    $('#lastTimeTo').datetimepicker({
        format:'yyyy-mm-dd hh:ii',
        language:  'zh-CN',
        weekStart: 1,
        todayBtn:  1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        forceParse: 0,
        showMeridian: 1

    }).on('click',function(e){
        $("#lastTimeTo").datetimepicker("setStartDate", $("#lastTimeFrom").val());
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
        $('#expression').val("* "+strs[1]+" "+strs[0]+" * * ?");
    });
    for(var i=1;i<101;i++){
        $('#intertime').append("<option value=" + i + ">" + i + "</option>");
    }
    $('#opti').on('changed.bs.select',function(e){
        var op =$('#opti').val();
        if (op  == "1"){
            $('#expression').val("");
            document.getElementById("everytimediv").setAttribute("style", "");
            document.getElementById("intertimediv").setAttribute("style", "display:none");
            document.getElementById("intertimediv1").setAttribute("style", "display:none");
            $('#intertime').val("");
            $('#intertime').selectpicker("refresh");
        }
        if (op == "2"){
            $('#expression').val("");
            document.getElementById("intertimediv").setAttribute("style", "");
            document.getElementById("intertimediv1").setAttribute("style", "");
            document.getElementById("everytimediv").setAttribute("style", "display:none");
            $('#everytime').val("");
            $('#everytime').datetimepicker("refresh");
        }
    });
    $('#intertime').on('changed.bs.select',function(e){
        var num = $('#intertime').val();
        $('#expression').val("*  * 1/"+num+" * * ?");
    });
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
    $(function () {
        formValidator();
        $(":radio").click(function () {
            if ($(this).val() == 'sql') {
                var termform = document.getElementById("formSearch").setAttribute("style", "display:none");
                var sqlform = document.getElementById("formSearch1").setAttribute("style", "");
                var freeform = document.getElementById("formSearch2").setAttribute("style", "display:none");
        }
            if ($(this).val() == 'term') {
                var termform = document.getElementById("formSearch1").setAttribute("style", "display:none");
                var sqlform = document.getElementById("formSearch").setAttribute("style", "");
                var freeform = document.getElementById("formSearch2").setAttribute("style", "display:none");
            }
            if ($(this).val() == 'free') {
                var termform = document.getElementById("formSearch1").setAttribute("style", "display:none");
                var sqlform = document.getElementById("formSearch").setAttribute("style", "display:none");
                var freeform = document.getElementById("formSearch2").setAttribute("style", "");
            }
        });


        $('#myModal').on('show.bs.modal', function () {
            $('#sourcetable').val($('#txt_fromtable').val());
            $('#goaltable').val($('#txt_totable').val());
            $('#rules').val($('#txt_search_rule').val());
            $('#querys').val(getsql());
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
        $("#btn_query").click(function() {
            var sqlline= getsql();
            if ($("#txt_fromtable").val() == ""  ) {
                bootbox.alert("请选择数据源表！");

            } else {
                var temp = {   //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
                    limit: 10,   //页面大小
                    page: 1,  //页码
                    fromtable: $("#txt_fromtable").val(),
                    sql: sqlline
                };
                $('#tb_departments').bootstrapTable("refresh", temp);

                $('#tb_departments').bootstrapTable('showColumn', 'IR_SITENAME');
                $('#tb_departments').bootstrapTable('showColumn', 'IR_CHANNEL');
                $('#tb_departments').bootstrapTable('showColumn', 'IR_URLTITLE');
                $('#tb_departments').bootstrapTable('showAllColumns');
            }
        });
        $("#btn_wash").click(function(){
            $(this).button('loading').delay(1).queue(function() {
                $(this).dequeue();
                var sqlline = getsql();
                if($("#txt_fromtable").val()==""|$("#txt_search_rule").val()==""|$("#txt_totable").val()==""){
                    bootbox.alert("请输入完整清洗条件！")
				}	else{
                    var temp = {
                        fromtable:$("#txt_fromtable").val(),
                        sql:getsql(),
                        rule:$("#txt_search_rule").val(),
                        totable:$("#txt_totable").val()
                    };
                    $("body").mLoading({
                        text:"清洗过程可能较长，请耐心等待..."//加载文字，默认值：加载中...

                    });
                    $.post("/wash.do",temp,function(result){
                        if(result.success){
                            $("body").mLoading("hide");
                            var dialog = bootbox.dialog({
                                title: '清洗成功',
                                message: result.msg,
                                buttons: {
                                    cancel: {
                                        label: "取消",
                                        className: 'btn-danger'
                                    },
                                    noclose: {
                                        label: "查看结果",
                                        className: 'btn-warning',
                                        callback: function(){
                                            window.open('/datawash/result.do?fn='+result.fn+'&logid='+result.logid+'&totable='+$("#txt_totable").val());
                                            return false;
                                        }
                                    }
                                }
                            });
                        }else{
                            $("body").mLoading("hide");
                            bootbox.alert({message:"清洗失败!"+result.msg,
                                title:"清洗失败"
                            });
                        }
                    });
				}

                $(this).button('reset');
            });



        });


        //1.初始化Table
        var oTable = new TableInit();
        oTable.Init();

        //2.初始化Button的点击事件
        var oButtonInit = new ButtonInit();
        oButtonInit.Init();

    });
    var columns = [];
    $.ajax({
        url: '/datamanage/getWashColumn.do',
        type: 'post',
        dataType: "json",
        async: false,
        success: function (returnValue) {
            var arr = returnValue.fields;
            $.each(arr, function (i, item) {
                if(i!=0){
                    if (item.type == "java.util.Date") {
                        columns.push({
                            "field": item.name,
                            "title": item.name.replace(/([A-Z])/g, "_$1").toUpperCase(),
                            "visible": false,
                            "formatter": function (value) {
                                return moment(value, "x").format("YYYY-MM-DD HH:mm:ss")
                            }
                        });
                    }
                    else {
                        columns.push({
                            "field": item.name,
                            "title": item.name.replace(/([A-Z])/g, "_$1").toUpperCase(),
                            "visible": false
                        });
                    }
                }
            });

        }
    });
    $('#tb_departments').bootstrapTable("refreshOptions",{columns:columns});

    $('#tb_departments').bootstrapTable('showColumn', 'IR_SITENAME');
    $('#tb_departments').bootstrapTable('showColumn', 'IR_CHANNEL');
    $('#tb_departments').bootstrapTable('showColumn', 'IR_URLTITLE');

    $(".dropdown-menu>li").first().prepend("<button onclick=\"showall();\">全选/全不选</button>")

    var TableInit = function () {
        var oTableInit = new Object();
        //初始化Table
        oTableInit.Init = function () {
            $('#tb_departments').bootstrapTable({
                url: '/getUrlconByQuery.do',         //请求后台的URL（*）
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
                search: false,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
                strictSearch: false,
                showColumns: true,                  //是否显示所有的列
                showRefresh: true,                  //是否显示刷新按钮
                minimumCountColumns: 0,             //最少允许的列数
                clickToSelect: true,                //是否启用点击选中行
                height: 520,                        //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
                uniqueId: "ID",                     //每一行的唯一标识，一般为主键列
                showToggle:false,                    //是否显示详细视图和列表视图的切换按钮
                cardView: false,                    //是否显示详细视图
                detailView: false,                   //是否显示父子表
                showExport: false,
                async:false,
                onLoadSuccess: function(row,data){
                    $("[data-toggle='tooltip']").tooltip();
                    // $('#tb_departments').bootstrapTable('showColumn', 'IR_SITENAME');
                    // $('#tb_departments').bootstrapTable('showColumn', 'IR_CHANNEL');
                    // $('#tb_departments').bootstrapTable('showColumn', 'IR_URLTITLE');
                },
                onColumnSwitch: function(field, checked){
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
//                    exportDataType: 'all',
//                 exportTypes:[ 'csv', 'json', 'sql', 'xml','doc', 'excel', 'xlsx'],
//                    rowStyle: function (row, index) {
//                    //这里有5个取值代表5中颜色['active', 'success', 'info', 'warning', 'danger'];
//                    var strclass = "";
//                if ( index%2 == 0) {
//                    strclass = 'info';//还有一个active
//                }
//                else {
//                    return {};
//                }
//                return { classes: strclass }
//            },
                columns: columns
            });
        };

        //得到查询的参数
        oTableInit.queryParams = function (params) {
            var temp = {   //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
                limit: params.limit,   //页面大小
                page: Math.floor(params.offset / params.limit) + 1,
                fromtable:$("#txt_fromtable").val(),
                sql: getsql()
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

    });


    $(function() {

        $.ajax({
            url: "/ruleslist.do",//写你自己的方法，返回map，我返回的map包含了两个属性：data：集合，total：集合记录数量，所以后边会有data.data的写法。。。
            type: "get",
            dataType: "json",
            data: 'data',
            success: function (data) {
                $.each(data, function (i) {
                    $('#txt_search_rule.selectpicker').append("<option value=" + data[i].rules + ">" + data[i].name + "</option>");
                });
                $('#txt_search_rule').selectpicker('refresh');
            },
            error: function (data) {
                alert("规则加载失败" + data);
            }
        });

        $.ajax({
            url: "/getFromTables.do",//写你自己的方法，返回map，我返回的map包含了两个属性：data：集合，total：集合记录数量，所以后边会有data.data的写法。。。
            type: "get",
            dataType: "json",
            success: function (data) {
                $.each(data, function (i) {
                    $('#txt_fromtable.selectpicker').append("<option value=" + data[i] + ">" + data[i] + "</option>");
                });
                $('#txt_fromtable').selectpicker('refresh');
            },
            error: function (data) {
                alert("数据源表加载失败" + data);
            }
        });

        $.ajax({
            url: "/getToTables.do",//写你自己的方法，返回map，我返回的map包含了两个属性：data：集合，total：集合记录数量，所以后边会有data.data的写法。。。
            type: "get",
            dataType: "json",
            success: function (data) {
                $.each(data, function (i) {
                    $('#txt_totable.selectpicker').append("<option value=" + data[i] + ">" + data[i] + "</option>");
                });
                $('#txt_totable').selectpicker('refresh');
            },
            error: function (data) {
                alert("目标表加载失败" + data);
            }
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

    });
</script>
</body>
	


</html>