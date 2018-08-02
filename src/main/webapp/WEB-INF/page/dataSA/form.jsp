<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<style>
    #filelist .plupload_file{
        max-width:300px;
    }
</style>

<div id="core-form">

    <form class="form-horizontal" role="form" id="pop-dialog-form-gen">
        <div class="form-group">
            <label for="year2" class="col-sm-2 control-label">年份</label>
            <div class="col-sm-8">
                <input type="text" value="<fmt:formatDate value="<%=new Date()%>" pattern="yyyy"/>" class="form-control" id="year2" readonly placeholder="请选择年份">
            </div>
        </div>
        <div class="form-group">
            <label for="season2" class="col-sm-2 control-label">季度</label>
            <div class="col-sm-8">
                <select type="text" class="form-control" id="season2" placeholder="请选择季度" onchange="season2SelectChanged(this);">
                    <option value="">------请选择季度-------</option>
                    <option value="第一季度">第一季度</option>
                    <option value="第二季度">第二季度</option>
                    <option value="第三季度">第三季度</option>
                    <option value="第四季度">第四季度</option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <label for="xlsx" class="col-sm-2 control-label">模板</label>
            <div class="col-sm-8" style="max-height:300px;overflow-y:auto;" id="xlsx">
                <br />
                <div id="container">
                    <button id="pickfiles" class="btn btn-success"  style="float:left;margin-top:-15px;">
                        <span class="glyphicon glyphicon-upload" aria-hidden="true">上传Excel文件</span>
                    </button>
                </div>
                <br />
                <div class="plupload_filelist" id="filelist">Your browser doesn't have Flash, Silverlight or HTML5 support.</div>

                <div id="errMsgDiv">
                    <ul class="list-group">
                    </ul>
                </div>
            </div>

        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button id="gen-report-btn" type="button" class="btn btn-primary" style="float:right;margin-top:-40px;margin-right:120px;">
                    <span class="glyphicon glyphicon-download-alt" aria-hidden="true"></span>
                    <span>生成报告</span>
                </button>
            </div>
            <div class="col-sm-offset-2 col-sm-10">
                <div>
                    <span id="pop-form-err-msg-season" style="color:red;"></span>
                    <span id="pop-form-err-msg-xlsx" style="color:red;"></span>
                </div>
            </div>
        </div>
    </form>

</div>



<script type="text/javascript">

    $(function () {

        $('#year2').datetimepicker({
            language:  'zh-CN',
            todayBtn:  1,
            todayHighlight: 1,
            forceParse: 0,
            showMeridian: 1,
            startView: 'decade',
            minView: 'decade',
            format: 'yyyy',
            autoclose: true,
            clearBtn: false
        });

        var uploader = new plupload.Uploader({
            runtimes: 'html5,flash,silverlight,html4',
            browse_button: 'pickfiles', // you can pass in id...
            container: document.getElementById('container'), // ... or DOM Element itself
            url: '/dataStatisticsAnalyze/uploadExcel.do',
            multi_selection: false,
            flash_swf_url: '../js/Moxie.swf',
            silverlight_xap_url: '../js/Moxie.xap',

            filters: {
                max_file_size: '10mb',
                mime_types: [
                    { title: "Excel文件", extensions: "xlsx" }
                ],
                prevent_duplicates: false  // 允许选择重复文件
            },

            init: {
                PostInit: function() {
                    document.getElementById('filelist').innerHTML = '';
                },

                FilesAdded: function(up, files) {
                    plupload.each(files, function(file) {
                        document.getElementById('filelist').innerHTML = '<div class="plupload_file" style="margin-top:5px;" id="' + file.id + '">' + file.name + ' <span style="color:darkgray;">(' + plupload.formatSize(file.size) + ')</span> <b></b></div>';
                    });
                    $("#pop-form-err-msg-xlsx").html('');
                },

                UploadProgress: function(up, file) {
                    document.getElementById(file.id).getElementsByTagName('b')[0].innerHTML = '<span>' + file.percent + "%</span>";
                },

                BeforeUpload: function(up, file){
                    uploader.settings.multipart_params = {
                        year: $("#year2").val(),
                        season: $("#season2").val()
                    };
                },

                UploadComplete: function (up, files) {
//                    $("#myModal").modal('hide');
                    uploader.splice(0, 100);
                    $("#filelist").empty();
                    $("#myModal").modal("hide");
                    $("#mainDg").bootstrapTable("resetView");
                    $("#mainDg").bootstrapTable("refresh");
                },

                Error: function(up, err) {
                    alert(err.message);
                },

                FileUploaded : function (uploader,file,responseObject) {
                    var map = $.parseJSON(responseObject.response);
                    window.open("/dataStatisticsAnalyze/download.do?filename=" + map.msg);
                    $("body").mLoading("hide");
                }
            }
        });

        uploader.init();


        $("#gen-report-btn").on('click',function () {

            if($("#season2").val() == ''){
                $("#pop-form-err-msg-season").html("季度不能为空！ ")
            }
            if($("#filelist").find("div.plupload_file").length == 0){
                $("#pop-form-err-msg-xlsx").html("模板不能为空！ ")
            }

            var seasonMsg = $("#pop-form-err-msg-season").html();
            var xlsxMsg = $("#pop-form-err-msg-xlsx").html();

            // 最终执行
            if(seasonMsg + xlsxMsg == ""){
                $("body").mLoading("show");
                uploader.start();
            }


        });

    });



    function season2SelectChanged(select) {
        var val = $(select).val();
        if(val == ''){
            $("#pop-form-err-msg-season").html('季度不能为空！ ');
        } else {
            $("#pop-form-err-msg-season").html('');
        }
    }

</script>