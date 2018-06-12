<%--
  Created by IntelliJ IDEA.
  User: zhaoao
  Date: 2018/1/26
  Time: 12:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%--<%--%>
<%--String contextPath = request.getContextPath();--%>
<%--%>--%>
<%--<%--%>
<%--String id = request.getParameter("id");--%>
<%--if (id == null) {--%>
<%--id = "";--%>
<%--}--%>
<%--%>--%>
<!DOCTYPE html>
<html>
<head>
    <script type="text/javascript" src="../js/jquery-1.11.0.min.js"></script>

    <script type="text/javascript" src="../js/plupload-2.0.0/js/plupload.full.min.js"></script>
    <script type="text/javascript" src="../js/plupload-2.0.0/js/i18n/zh_CN.js"></script>
    <meta charset="UTF-8">
<body>
<h1>上传文件</h1>

<div id="fileDiv">
    <div><button id="browse">选择文件</button></div>
    <div id="filelist"></div>
</div>
<button id="start_upload">开始上传</button>

</body>
<script type="text/javascript">
    //实例化一个plupload上传对象
    var uploader = new plupload.Uploader({
        //这个是选择文件的button
        browse_button : 'browse',
        //服务器端的上传地址
        url : '/uploadFile.do',
        multi_selection: false
    });
    //在实例对象上调用init()方法进行初始化
    uploader.init();

    //文件添加时，在容器里显示待上传的文件列表
    uploader.bind('FilesAdded',
        function(uploader, files) {
            for (var i in files) {
                //在页面迭代显示
                $('#filelist').append('<div><input type="hidden" name="attachmentId" id="id'+files[i].id+'"/>'+files[i].name + ' (' + plupload.formatSize(files[i].size) + ')<div id="'+files[i].id+'"></div></div></br>');
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
            $('#id'+file.id).val(result.response);
        }
    );

    //全部完成后的事件
    uploader.bind('FileUploaded',
        function(up, files,res) {
            try {
                var json = jQuery.parseJSON(res.response);   // 后端返回的标志
                var obj = JSON.parse(json);
                alert(obj.result);
                $.post("/cover.do?fn="+obj.result, function(data) {
                    alert(data);
                });
            } catch(e) {
                upFlag = false;
            }
        }
    );


    //给"开始上传"按钮注册事件
    document.getElementById('start_upload').onclick = function(){
        uploader.start(); //调用实例对象的start()方法开始上传文件，当然你也可以在其他地方调用该方法
    }
</script>
</html>
