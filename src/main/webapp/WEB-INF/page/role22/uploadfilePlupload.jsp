<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<div style="max-height:300px;overflow-y:auto;">
    <div class="plupload_filelist" id="filelist">Your browser doesn't have Flash, Silverlight or HTML5 support.</div>
    <br />
    <div id="container">
        <button id="pickfiles" class="btn btn-success" >
            <span class="glyphicon glyphicon-upload" aria-hidden="true">上传Excel文件</span>
        </button>
    </div>
    <br />
    <div id="errMsgDiv">
        <ul class="list-group">
        </ul>
    </div>
</div>


<script type="text/javascript">

    var uploader;

    $(function () {

        uploader = new plupload.Uploader({
            runtimes: 'html5,flash,silverlight,html4',
            browse_button: 'pickfiles', // you can pass in id...
            container: document.getElementById('container'), // ... or DOM Element itself
            url: '/keywords3/uploadExcel.do',
            multipart_params : {
                keywordCategoryId : $("#current-selected-keyword-id").val()
            },
            flash_swf_url: '../js/Moxie.swf',
            silverlight_xap_url: '../js/Moxie.xap',

            filters: {
                max_file_size: '10mb',
                mime_types: [
                    { title: "Excel文件", extensions: "xls,xlsx" }
                ],
                prevent_duplicates: true  // 不允许选择重复文件
            },

            init: {
                PostInit: function() {
                    document.getElementById('filelist').innerHTML = '';
                },

                FilesAdded: function(up, files) {
                    plupload.each(files, function(file) {
                        document.getElementById('filelist').innerHTML += '<div class="plupload_file" style="margin-top:5px;" id="' + file.id + '">' + file.name + ' <span style="color:darkgray;">(' + plupload.formatSize(file.size) + ')</span> <b></b></div>';
                    });
                },

                UploadProgress: function(up, file) {
                    document.getElementById(file.id).getElementsByTagName('b')[0].innerHTML = '<span>' + file.percent + "%</span>";
                },

                UploadComplete: function (up, files) {
//                    $("#myModal").modal('hide');
                    $("#mainDg").bootstrapTable("refresh");
                },

                Error: function(up, err) {
                    alert(err.message);
                },

                FileUploaded : function (uploader,file,responseObject) {
                    var messageMap = $.parseJSON(responseObject.response);
                    var li = '<li class="list-group-item" style="color:'+ messageMap.color +';">'+ file.name + " : "+  messageMap.message +'</li>';
                    $("#errMsgDiv ul").append(li);
                }
            }
        });

        uploader.init();

    });

</script>