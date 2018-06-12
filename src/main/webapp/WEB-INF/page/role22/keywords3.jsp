<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>关键字库</title>
    <meta charset="UTF-8">

    <link href="../../js/bootstrap/css/bootstrap.css" rel="stylesheet"  type="text/css"/>
    <link href="../../js/bootstrap-table/bootstrap-table.css" rel="stylesheet"  type="text/css"/>
    <link href="../../js/bootstrap3-editable/css/bootstrap-editable.css" rel="stylesheet"  type="text/css" />
    <link href="../../js/bootstrapValidator/bootstrapValidator.min.css" rel="stylesheet"  type="text/css" />

    <link href="../../js/plupload-2.0.0/js/jquery.ui.plupload/css/jquery.ui.plupload.css" rel="stylesheet"  type="text/css" />


    <style type="text/css">

        th,td{
            white-space: nowrap;
            font-size:12px;
        }
        td{
            font-size:14px;
        }

        #mainDg tr.selected td {
            background-color : linen;
        }
        div.searchConditionDiv > span {
            width: 251px;
            display: inline-block;
        }
        .panel-body{
            padding:0;
        }
        .fixed-table-toolbar{
            margin-top:-20px;
        }
        #demo label {
            height:34px;
            line-height:34px;
        }

        th, .control-label {
            color:cadetblue;
            font-weight:normal;
        }

        #mainDg td {
            white-space:nowrap;
        }

        #mainDataDiv .fixed-table-body{
            max-height:100%;
        }

        .myeditable-emptyclass{
            color: red;
            border-bottom: none!important;
        }

    </style>

</head>
<body style="margin:0 auto;width:100%;">

<div>
    <div id="popModifyFieldsDiv" style="display: none;">
        <div>最多可以设置10个扩展字段</div>
        <div>
            <form role="form">
            <table class="table">
                <thead>
                    <tr>
                        <th>序号</th>
                        <th>字段名称</th>
                        <th  style="text-align:center;">启用状态</th>
                    </tr>
                </thead>
                <tbody>

                </tbody>
            </table>
            </form>
        </div>
        <div>
            <button class="btn btn-success btn-xs" onclick="insertTrOfExtendField();"><span  class="glyphicon glyphicon-plus" aria-hidden="true"></span>添加字段</button>
        </div>
    </div>

    <div id="deleteTipDiv" style="display: none;">
        <h5 style="margin-left:100px;color:darkred;">请至少选择一条记录，再删除！</h5>
    </div>

    <div id="deleteConfirmTipDiv" style="display: none;">
        <h5 style="margin-left:100px;color:darkred;">确定要删除所选择的记录吗？</h5>
    </div>

    <div id="saveKeywordDataForm" style="display: none;">
        <div>
            <form class="form-horizontal" role="form">
                <div class="form-group">
                    <label for="keyword" class="col-sm-4 control-label">关键字</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="keyword" name="keyword" placeholder="请输入关键字">
                    </div>
                </div>
                <div id="addFormExtendField">

                </div>
            </form>
        </div>
    </div>

    <div id="saveKeywordCategoryFormDiv" style="display: none;">
        <form class="form-horizontal" role="form">
            <div class="form-group">
                <label for="categoryName" class="col-sm-3 control-label">关键字分类名称</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="categoryName" name="categoryName" placeholder="请输入关键字分类名称">
                </div>
            </div>
            <div class="form-group">
                <label for="describe" class="col-sm-3 control-label">关键字描述</label>
                <div class="col-sm-8">
                    <textarea placeholder="请输入关键字描述"  name="describe" id="describe" class="form-control" style="resize:none;height:120px;"></textarea>
                </div>
            </div>
        </form>
    </div>


</div>


<div>

    <div class="left" style="width:30%;float:left;height:100%;">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">关键字分类<button onclick="popAddKeywordCategory();" type="button" class="btn btn-success btn-xs"
                                                      style="float: left;margin-right: 30px;">新增</button></h3>
            </div>
            <div class="panel-body">
                <div style="max-height:600px;overflow-y:auto;">
                    <ul class="list-group" style="margin-bottom:0px;" id="keyword-categories-list-ul">
                        <c:if test="${not empty categoryList}">
                            <c:forEach items="${categoryList}" var="category" varStatus="status">
                                <li class="list-group-item" <c:if test="${status.index == 0}">style="background-color:aliceblue;" </c:if> >
                                    <a href="javascript:void(0);"
                                       style="display: inline-block;width:50%;overflow:hidden;text-overflow:ellipsis;white-space: nowrap;"
                                       title="${category.categoryName}"
                                       data-id = "${category.id}"
                                       data-categoryName = "${category.categoryName}"
                                       data-describe = "${category.describe}"
                                       data-updateTime = '<fmt:formatDate value="${category.updateTime}"   pattern="yyyy-MM-dd HH:mm:ss" type="date" dateStyle="long" />'
                                       onclick="categoryNameClick(this);">${category.categoryName}</a>
                                    <span style="float:right;width:45px;">
                                        <button onclick="deleteKeywordCategoryById(${category.id},this);" type="button" class="btn btn-warning btn-xs" style="float: left;margin-right: 30px;">删除</button>
                                    </span>
                                    <span style="float:right;width:45px;">
                                        <button type="button" onclick="updateKeywordCategoryById(${category.id},this);" class="btn btn-default btn-xs" style="float: left;margin-right: 30px;">修改</button>
                                    </span>
                                </li>
                            </c:forEach>
                        </c:if>
                        <c:if test="${empty categoryList}" >
                            <li class="list-group-item"><span style="color:darkred;">暂无数据</span></li>
                        </c:if>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="right" style="width:68%;float:left;height:100%;margin-left:10px;">

                <div class="panel panel-default">
                    <div class="panel-heading" style="padding:5 0 10 10;">
                        <h3 class="panel-title">关键字详情</h3>
                    </div>
                    <div class="panel-body" style="margin-bottom:50px;height:80%;overflow:auto;">

                        <div class="top">
                            <input type="hidden" value="" id="current-selected-keyword-id">
                            <table class="table table-bordered" style="margin-bottom:0;">
                                <thead>
                                <tr>
                                    <th style="width:20%;">关键字分类名称</th>
                                    <td style="width:30%;" id="current-selected-category-name"></td>
                                    <th style="width:20%;">修改时间</th>
                                    <td id="current-selected-update-time"></td>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <th style="width:20%;">关键字描述</th>
                                    <td style="word-wrap:break-word; word-break:break-all;" colspan="3" id="current-selected-describe"></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="bottom">

                    <div id="queryParamsDiv">
                        <div class="panel panel-default">
                            <div class="panel-heading" style="padding:5 0 5 10;">
                                <h5 class="panel-title">条件查询<button class="btn btn-primary btn-xs" style="float: right;margin-right:4px;margin-top:-2px;" data-toggle="collapse" data-target="#demo">显隐</button></h5>
                            </div>
                            <div class="panel-body" style="padding:0;">
                                <div id="demo" class="collapse out" style="margin-top:20px;">
                                    <form role="form" class="form-horizontal">

                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <label class="col-sm-4 control-label" style="text-align:right;">关键字</label>
                                                    <div class="col-sm-6">
                                                        <input class="form-control" id="keyword" name="keyword" type="text" placeholder="请输入关键字">
                                                    </div>
                                                </div>
                                            </div>

                                        <div id="queryConditionExtendFields">


                                        </div>

                                            <div class="row" style="margin:10px;">
                                                <button onclick="queryKeywordDatasWithCondition();" class="btn btn-info" type="button" style="font-weight:bold;width:100%;">查询</button>
                                            </div>
                                            <div class="row" style="margin:10px;">
                                                <button  onclick="$(this).closest('form').get(0).reset();" class="btn btn-default" type="button" style="font-weight:bold;width:100%;">重置</button>
                                            </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div id="mainDataDiv" >

                        <div id="toolbar" <c:if test="${empty categoryList}" > style="display: none;" </c:if> >
                            <div class="btn-group">
                                <button id="btn_add" type="button" class="btn btn-success">
                                    <span onclick="popAddKeywordData();" class="glyphicon glyphicon-plus" aria-hidden="true">新增</span>
                                </button>
                                <button id="btn_delete" type="button" class="btn btn-default">
                                    <span onclick="popDeleteKeywordDatas();" class="glyphicon glyphicon-remove" aria-hidden="true">删除</span>
                                </button>
                                <button id="btn_modify_field" type="button" class="btn btn-default">
                                    <span onclick="popModifyField();" class="glyphicon glyphicon-edit" aria-hidden="true">字段维护</span>
                                </button>
                                <button id="btn_export_excel" type="button" class="btn btn-default">
                                    <span onclick="exportExcel();" class="glyphicon glyphicon-export" aria-hidden="true">导出Excel</span>
                                </button>
                                <button id="btn_uploadfile_plupload" type="button" class="btn btn-default">
                                    <span onclick="popUploadfilePlupload();" class="glyphicon glyphicon-import" aria-hidden="true">导入Excel</span>
                                </button>
                            </div>
                        </div>
                        <table id="mainDg" style="background:rgb(255,255,255);" class="table table-hover"></table>

                    </div>

                </div>
                    </div>
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

    <script type="text/javascript" src="../../js/common/common.js"></script>

    <script type="text/javascript">

        $(function () {
            tableInit.Init();
            $("#keyword-categories-list-ul li:eq(0) a:eq(0)").click();
        });

        function myMerge() {
            var arr = [];

            $.each(arguments, function (indexOut, arrItem) {
                $.each(arrItem, function (index, item) {
                    arr.push(item);
                });
            });

            return arr;
        }


        var mainColumns = [
            {checkbox: true},
            {
                title: '序号',
                align: 'center',
                valign: 'bottom',
                formatter: function(value, row, index) {
                    var options = $("#mainDg").bootstrapTable("getOptions");
                    var startNo = (options.pageNumber-1) * (options.pageSize);
                    return startNo + index + 1;
                }
            },
            {
                title: '关键字',
                field: 'keyword',
                editable : {
                    type : 'text',
                    title : '关键字',
                    validate: function (v) {
                        if($.trim(v) == "") return '不能为空';
                        if(v.length > 40) return '字符长度不能超过40个';
                    }
                }
            }
        ];

        var extendsColumns = [];

        var tableInit = getDefaultDataGrid({
            id : 'mainDg',
            url : '/keywords3/findByPageBelowKeyword.do',
            height:400,
            queryParams : function (params) {
                var temp = {
                    limit: params.limit,
                    page: Math.floor(params.offset/params.limit)+1,
                    keywordCategoryId : $("#current-selected-keyword-id").val(),
                    keyword : $("#queryParamsDiv #keyword").val(),
                    category0 : $("#queryParamsDiv #category0").val(),
                    category1 : $("#queryParamsDiv #category1").val(),
                    category2 : $("#queryParamsDiv #category2").val(),
                    category3 : $("#queryParamsDiv #category3").val(),
                    category4 : $("#queryParamsDiv #category4").val(),
                    category5 : $("#queryParamsDiv #category5").val(),
                    category6 : $("#queryParamsDiv #category6").val(),
                    category7 : $("#queryParamsDiv #category7").val(),
                    category8 : $("#queryParamsDiv #category8").val(),
                    category9 : $("#queryParamsDiv #category9").val()
                };
                return temp;
            },
            columns : myMerge(mainColumns, extendsColumns)
        });



        function categoryNameClick(alink) {

            $(alink).closest("ul").find("li").css({"background-color":""});
            $(alink).closest("li").css({"background-color":"aliceblue"});

            $("#current-selected-keyword-id").val($(alink).data("id"));
            $("#current-selected-category-name").html($(alink).data("categoryname"));
            $("#current-selected-update-time").html($(alink).data("updatetime"));
            $("#current-selected-describe").html($(alink).data("describe"));

            extendsColumns = [];

            $.ajax({
                url : '/keywords3/findCategoryColumns.do',
                type : 'post',
                data : {keywordCategoryId : $(alink).data("id")},
                async : false,
                dataType : 'json'
            }).success(function (data) {
                var tempExtends = data;
                $("#queryConditionExtendFields").html("");
                if(tempExtends && (tempExtends instanceof Array) && tempExtends.length > 0){
                    var temp22 = '<div class="col-lg-6"><div class="form-group"><label style="text-align:right;" class="col-sm-4 control-label">?1</label><div class="col-sm-6"><input class="form-control" id="?2" name="?3" type="text" placeholder="请输入?4"></div></div></div>';
                    $.each(tempExtends, function (index, item) {
                        var obj = {};
                        obj.field = item.fieldName;
                        obj.title = item.fieldTitle;

                        obj.editable = {
                            type : 'text',
                                title :item.fieldTitle,
                                validate: function (v) {
                                if(v.length > 40) return '字符长度不能超过40个';
                            },
                            emptytext: '——',
                            emptyclass: 'myeditable-emptyclass'
                        };

                        extendsColumns.push(obj);

                        var t = temp22.replace("?1",item.fieldTitle)
                            .replace("?2", item.fieldName)
                            .replace("?3", item.fieldName)
                            .replace("?4", item.fieldTitle);

                        $("#queryConditionExtendFields").append(t);
                    });
                }
            });

            $("#mainDg").bootstrapTable('refreshOptions',{
                url : '/keywords3/findByPageBelowKeyword.do',
                query : {
                    keywordCategoryId : $.trim($(alink).data("id"))
                },
                pageNumber : 1,
                columns : myMerge(mainColumns, extendsColumns),
                onEditableSave : function (field, row, oldValue, $el) {
                    $.post("/keywords3/updateByOneField.do",{
                        id : row.id,
                        field : field,
                        value : row[field]
                    },function (data) {
                        $("#mainDg").bootstrapTable("resetView");
                    });
                }
            });
        }
        
        
        
        function popModifyField() {
            var categoryId = $("#current-selected-keyword-id").val();

            $.ajax({
                url : '/keywords3/findCategoryAllColumns.do',
                type : 'post',
                data : {keywordCategoryId : categoryId},
                async : false,
                dataType : 'json'
            }).success(function (data) {

                showModalDialog({
                    title : '字段维护',
                    id : 'myModal',
                    div : 'popModifyFieldsDiv',
                    operate : 'modifyFields',
                    btnText : '保存',
                    btnClick : 'saveModifiedFields('+ categoryId  +');'
                });

                $("#myModal").on("hidden.bs.modal",function () {
                    $("#myModal .modal-body input").attr("disabled", false);
                });

                $("#myModal").on("shown.bs.modal", function () {

                    $(".modal-body " + "input").val("");
                    $("#popModifyFieldsDiv " + "input").val("");
                    $(".modal-body " + ":checkbox").prop("checked",false);
                    $("#popModifyFieldsDiv " + ":checkbox").prop("checked",false);
                    $(".modal-body " + ":text").attr("disabled",true);
                    $("#popModifyFieldsDiv " + ":text").attr("disabled",true);

                    $("#myModal table tbody").html("");

                    if(data && data.length > 0){
                        $.each(data, function (index, item) {
                            var disabled = item.showFlag == 1 ? "" : "disabled";
                            var checked = item.showFlag == 1 ? "checked" : "";
                            var tr = "<tr><td>"+ (index + 1) +"</td><td><input name='category"+ index + "' " + disabled +" class='form-control' value='"+ item.fieldTitle +"' /></td><td style='text-align:center;'><input "+ checked +" type='checkbox'  onclick=\"$(this).closest('td').prev('td').find('input').attr('disabled',!$(this).prop('checked'));\" /></td></tr>";
                            $("#myModal table tbody").append(tr);
                        });
                    }
                    $("#myModal .modal-body").scrollTop(0);

                });




            });
        }


        function insertTrOfExtendField() {
            var $tbody = $("#myModal table tbody");
            var len = $tbody.find("tr").length;
            if(len > 9){
                alert("最多可以设置10个扩展字段！");
            } else {
                var tr = "<tr><td>"+ (len + 1) +"</td><td><input class='form-control' /></td><td style='text-align:center;'><input type='checkbox' checked onclick=\"$(this).closest('td').prev('td').find('input').attr('disabled',!$(this).prop('checked'));\" /></td></tr>";
                $tbody.append(tr);
                $("#myModal .modal-body").scrollTop($("#myModal .modal-body").height());
            }

        }


        function saveModifiedFields(categoryId) {

            var $tbody = $("#myModal table tbody");
            var arr = [];
            var trLen = $tbody.find("tr").length;
            if(trLen == 0){
                alert("没有要维护的字段！");
                return false;
            }


            var validFlag = true;
            var validShowArr = [];

            $.each($tbody.find("tr"), function (index, item) {

                var obj = {};
                obj.fieldName = "category" + index;
                obj.fieldTitle = $.trim($(item).find("td:eq(1) input").val());
                obj.numberFlag = index;
                obj.showFlag = $(item).find("td:eq(1) input").attr("disabled") == "disabled" ? 0 : 1;
                obj.relationId = categoryId;

                if(obj.showFlag == 1){ // 选中的才检验
                    if(obj.fieldTitle == ""){
                        alert("字段名称是必填项！");
                        validFlag = false;
                        return false;
                    } else if(obj.fieldTitle.length > 20) {
                        alert("字段名称不能超过20个字符！");
                        validFlag = false;
                        return false;
                    } else {
                        validShowArr.push(obj.fieldTitle);
                    }
                }

                arr.push(obj);
            });


            if(validFlag){
                var repeatFlag = isRepeat(validShowArr);
                if(repeatFlag){ // 有重复的字段
                    validFlag = false;
                    alert("不能输入重复的字段名称！")
                    return false;
                }
            }


            if(!validFlag){
                return false;
            }


            $.ajax({
                type: 'POST',
                url: "/keywords3/saveModifiedFields.do",
                data: JSON.stringify(arr),
                success:  function (data, status) {
                    $("#myModal").modal('hide');
                    $("#keyword-categories-list-ul a[data-id='"+ categoryId +"']").click();
                },
                dataType : 'json',
                contentType : 'application/json'
            });
        }


        function popDeleteKeywordDatas() {
            var rows = $("#mainDg").bootstrapTable("getSelections");
            if(0 == rows.length){
                showModalDialog({
                    title : '删除',
                    id : 'myModal',
                    div : 'deleteTipDiv',
                    btnHide : true
                });
            } else {
                var ids = "";
                $.each(rows, function(index, item){
                    ids += "," + item.id;
                });
                ids = ids.substring(1);

                showModalDialog({
                    title : '删除',
                    id : 'myModal',
                    div : 'deleteConfirmTipDiv',
                    operate : 'delete',
                    btnText : '删除',
                    btnClick : "deleteSelections('"+ ids + "');"
                });
            }
        }

        function deleteSelections(ids) {
            $.post("/keywords3/deleteBatchByIds.do",{ids : ids},function(data){
                $('#myModal').modal('hide');
                $('#mainDg').bootstrapTable('refresh');
            });
        }
        
        
        function popAddKeywordData() {

            $("#addFormExtendField").html("");

            $.ajax({
                url : '/keywords3/findCategoryColumns.do',
                type : 'post',
                data : {keywordCategoryId : $("#current-selected-keyword-id").val()},
                async : false,
                dataType : 'json'
            }).success(function (data) {
                if(data && data.length > 0){
                    var temp = '<div class="form-group"><label for="?1" class="col-sm-4 control-label">?2</label><div class="col-sm-6"><input type="text" class="form-control" id="?3" name="?4" placeholder="请输入?5"></div></div>';
                    $.each(data, function (index, item) {
                        var tr =  temp.replace("?1", item.fieldName)
                            .replace("?2", item.fieldTitle)
                            .replace("?3", item.fieldName)
                            .replace("?4", item.fieldName)
                            .replace("?5", item.fieldTitle);
                        $("#addFormExtendField").append(tr);
                    });
                }
            });

            showModalDialog({
                title : '新增',
                id : 'myModal',
                div : 'saveKeywordDataForm',
                operate : 'saveKeywordData',
                btnText : '保存',
                btnClick : "saveKeywordData()"
            });

            $("#myModal").on("shown.bs.modal",function () {
                $("#myModal .modal-body input").attr("disabled", false);


                validateKeywordDataForm();

            });

        }
        
        
        function saveKeywordData() {

            $('#'+ "myModal .modal-body form").data('bootstrapValidator').validate();
            var validFlag = $('#'+ "myModal .modal-body form").data('bootstrapValidator').isValid();

            if(validFlag){
                var params = $("#myModal form").serialize();
                params += "&keywordCategoryId=" + $("#current-selected-keyword-id").val();

                $.post("/keywords3/saveKeywordData.do",params,function(data){
                    $('#myModal').modal('hide');
                    $('#mainDg').bootstrapTable('refresh');
                });
            }

        }


        function deleteKeywordCategoryById(id, btn){
            showModalDialog({
                title : '删除',
                id : 'myModal',
                div : 'deleteConfirmTipDiv',
                operate : 'delete',
                btnText : '删除',
                btnClick : "deleteByIdOfKeywordCategory("+ id + ");"
            });

        }

        function deleteByIdOfKeywordCategory(id) {
            $("#keyword-categories-list-ul a[data-id ='"+ id +"']").closest("li").remove();
            $("#myModal").modal("hide");
            $.post('/keywords3/deleteByIdOfKeywordCategory.do',{id : id},function (data) {
                var len = $("#keyword-categories-list-ul li").length;
                if(len == 0){
                    window.location.href = "/keywords3/toIndex.do";
                }
            });
        }


        function popAddKeywordCategory(){
            showModalDialog({
                title : '新增',
                id : 'myModal',
                div : 'saveKeywordCategoryFormDiv',
                operate : 'saveKeywordCategory',
                btnText : '保存',
                btnClick : "saveKeywordCategory();"
            });
            $("#myModal").on("shown.bs.modal", function () {
                $("#myModal .modal-body input").attr("disabled", false);
                $("#myModal .modal-body input[name='categoryName']").val("");
                $("#myModal .modal-body textarea[name='describe']").val("");

                $("#myModal .modal-body form").bootstrapValidator("destroy");
                validateKeywordCategoryForm("insert");
            });
        }
        
        function saveKeywordCategory() {
            $('#'+ "myModal .modal-body form").data('bootstrapValidator').validate();
            var validFlag = $('#'+ "myModal .modal-body form").data('bootstrapValidator').isValid();

            if(validFlag){
                var params = $("#myModal .modal-body").find("form").serialize();
                $.post('/keywords3/saveKeywordCategory.do',params,function (data) {
                    $("#myModal").modal('hide');
                    window.location.href = "/keywords3/toIndex.do";
                });
            }


        }

        function updateKeywordCategoryById(id, btn) {
            var $alink = $(btn).closest("li").find("a");
            var params = {
                id : $alink.data("id"),
                categoryName : $alink.data("categoryname"),
                describe : $alink.data("describe")
            };

            showModalDialog({
                title : '修改',
                id : 'myModal',
                div : 'saveKeywordCategoryFormDiv',
                operate : 'updateKeywordCategory',
                btnText : '保存',
                btnClick : "updateByIdOfKeywordCategory("+ params.id +");"
            });

            $("#myModal").on("shown.bs.modal", function () {
                $("#myModal .modal-body input").attr("disabled", false);
                $("#myModal .modal-body input[name='categoryName']").val(params.categoryName);
                $("#myModal .modal-body textarea[name='describe']").val(params.describe);
                $("#myModal .modal-body form").bootstrapValidator("destroy");
                validateKeywordCategoryForm('update', params.id);
            });

        }

        function updateByIdOfKeywordCategory(id) {

            $('#'+ "myModal .modal-body form").data('bootstrapValidator').validate();
            var validFlag = $('#'+ "myModal .modal-body form").data('bootstrapValidator').isValid();

            if(validFlag){
                var params = {
                    categoryName : $("#myModal .modal-body input[name='categoryName']").val(),
                    describe : $("#myModal .modal-body textarea[name='describe']").val(),
                    id : id
                };
                $.post('/keywords3/updateKeywordCategoryById.do',params,function (data) {
                    $("#myModal").modal('hide');
                    window.location.href = "/keywords3/toIndex.do";
                },'json');
            }

        }


        function queryKeywordDatasWithCondition(){
            $("#mainDg").bootstrapTable("refresh",{
                query : {
                    keywordCategoryId : $("#current-selected-keyword-id").val(),
                    keyword : $("#queryParamsDiv #keyword").val(),
                    category0 : $("#queryParamsDiv #category0").val(),
                    category1 : $("#queryParamsDiv #category1").val(),
                    category2 : $("#queryParamsDiv #category2").val(),
                    category3 : $("#queryParamsDiv #category3").val(),
                    category4 : $("#queryParamsDiv #category4").val(),
                    category5 : $("#queryParamsDiv #category5").val(),
                    category6 : $("#queryParamsDiv #category6").val(),
                    category7 : $("#queryParamsDiv #category7").val(),
                    category8 : $("#queryParamsDiv #category8").val(),
                    category9 : $("#queryParamsDiv #category9").val()
                },
                pageNumber : 1
            });
        }
        
        
        function exportExcel() {

            var currentCategoryName = $("#keyword-categories-list-ul a[data-id='"+ $("#current-selected-keyword-id").val() +"']").data("categoryname");

            var params = "keywordCategoryId=" + $("#current-selected-keyword-id").val();
            params += "&keyword=" + $("#queryParamsDiv #keyword").val();

            for(var i = 0; i < 10; i++){
                if($("#queryParamsDiv #category"+ i +"").val() === undefined){

                } else {
                    params += "&category"+ i +"=" + $("#queryParamsDiv #category"+ i +"").val();
                }

            }

            params += "&currentCategoryName=" + currentCategoryName;

            window.open("/keywords3/exportExcel.do?" + params);
        }

        function importExcel() {

            var len = $(".modal-body #filelist .plupload_file").length;
            if(len > 0){
                uploader.start();
            } else {
                alert("请上传Excel文件后，再导入！");
            }
        }


        function popUploadfilePlupload(){
            showModalDialog({
                title : '导入excel',
                id : 'myModal',
                url : '/keywords3/uploadfilePlupload.do',
                operate : 'importExcel',
                btnText : '导入',
                btnClick : "importExcel();"
            });
        }


        function validateKeywordCategoryForm(operate, id){

            var url = '/keywords3/validUniqueField.do';
            if("update" == operate){
                url = '/keywords3/validByOneField.do';
            }

            $("#myModal .modal-body form").bootstrapValidator({
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                fields : {
                    categoryName : {
                        validators: {
                            notEmpty: {
                                message: '关键词不能为空'
                            },
                            stringLength: {
                                min : 1,
                                max : 20,
                                message: '不能超过20个字符'
                            },
                            remote: {
                                url: url,
                                type:"GET",
                                data: function(validator) {
                                    var x_={
                                        value: $("#myModal .modal-body input[name='categoryName']").val(),
                                        field: 'category_name'
                                    };
                                    if("update" == operate){
                                        x_["id"] = id;
                                    }
                                    return x_;
                                },
                                message: '关键字分类名称已经存在，请输入其它值'
                            }
                        }
                    },
                    describe : {
                        validators : {
                            stringLength: {
                                max : 300,
                                message: '不能超过300个字符'
                            }
                        }
                    }
                }
            });

        }


        function validateKeywordDataForm(){

            $("#myModal .modal-body form").bootstrapValidator("destroy");

            var category = {
                validators: {
                    stringLength: {
                        max : 20,
                        message: '不能超过20个字符'
                    }
                }
            };

            var fields = {
                keyword : {
                    validators: {
                        notEmpty: {
                            message: '标题不能为空'
                        },
                        stringLength: {
                            min : 1,
                            max : 20,
                            message: '不能超过20个字符'
                        }
                    }
                }
            };

            for(var i = 0; i < 10; i++){
                fields["category" + i] = category;
            }

            $("#myModal .modal-body form").bootstrapValidator({
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                fields : fields
            });

        }


        // 验证重复元素，有重复返回true；否则返回false
        function isRepeat(arr) {
            var hash = {};
            for(var i in arr) {
                if(hash[arr[i]])
                {
                    return true;
                }
                // 不存在该元素，则赋值为true，可以赋任意值，相应的修改if判断条件即可
                hash[arr[i]] = true;
            }
            return false;
        }


    </script>

</body>
</html>
