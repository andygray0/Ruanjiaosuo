Date.prototype.format = function(format){ 
    var o =  { 
    "M+" : this.getMonth()+1, //month 
    "d+" : this.getDate(), //day 
    "h+" : this.getHours(), //hour 
    "m+" : this.getMinutes(), //minute 
    "s+" : this.getSeconds(), //second 
    "q+" : Math.floor((this.getMonth()+3)/3), //quarter 
    "S" : this.getMilliseconds() //millisecond 
    };
    if(/(y+)/.test(format)){ 
    	format = format.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length)); 
    }
    for(var k in o)  { 
	    if(new RegExp("("+ k +")").test(format)){ 
	    	format = format.replace(RegExp.$1, RegExp.$1.length==1 ? o[k] : ("00"+ o[k]).substr((""+ o[k]).length)); 
	    } 
    } 
    return format; 
};

var E3 = {
	// 编辑器参数
	kingEditorParams : {
		//指定上传文件参数名称
		filePostName  : "uploadFile",
		// //指定上传文件请求的url。
		uploadJson : '/pic/upload.do',
		// //上传类型，分别为image、flash、media、file
		dir : "image",
        // uploadJson : '/kindeditor-4.1.10/jsp/upload_json.jsp',
        // fileManagerJson : '/kindeditor-4.1.10/jsp/file_manager_json.jsp',
        // allowFileManager : true
	},
	// 格式化时间
	formatDateTime : function(val,row){
		var now = new Date(val);
    	return now.format("yyyy-MM-dd hh:mm:ss");
	},
	// 格式化连接
	formatUrl : function(val,row){
		if(val){
			return "<a href='"+val+"' target='_blank'>查看</a>";			
		}
		return "";
	},
    
    init : function(data){
    	// 初始化图片上传组件
    	this.initPicUpload(data);

    },
    // 初始化图片上传组件
    initPicUpload : function(data){
    	$(".picFileUpload").each(function(i,e){
    		var _ele = $(e);
    		_ele.siblings("div.pics").remove();
    		_ele.after('\
    			<div class="pics">\
        			<ul></ul>\
        		</div>');
    		// 回显图片
        	if(data && data.pics){
        		var imgs = data.pics.split(",");
        		for(var i in imgs){
        			if($.trim(imgs[i]).length > 0){
        				_ele.siblings(".pics").find("ul").append("<li><a href='"+imgs[i]+"' target='_blank'><img src='"+imgs[i]+"' width='80' height='50' /></a></li>");
        			}
        		}
        	}
        	//给“上传图片按钮”绑定click事件
        	$(e).click(function(){
        		var form = $(this).parentsUntil("form").parent("form");
        		//打开图片上传窗口
        		KindEditor.editor(E3.kingEditorParams).loadPlugin('multiimage',function(){
        			var editor = this;
        			editor.plugin.multiImageDialog({
						clickFn : function(urlList) {
							var imgArray = [];
							KindEditor.each(urlList, function(i, data) {
								imgArray.push(data.url);
								form.find(".pics ul").append("<li><a href='"+data.url+"' target='_blank'><img src='"+data.url+"' width='80' height='50' /></a></li>");
							});
							form.find("[name=image]").val(imgArray.join(","));
							editor.hideDialog();
						}
					});
        		});
        	});
    	});
    },

    
    createEditor : function(select){
    	return KindEditor.create(select, E3.kingEditorParams);
    },
    
    /**
     * 创建一个窗口，关闭窗口后销毁该窗口对象。<br/>
     * 
     * 默认：<br/>
     * width : 80% <br/>
     * height : 80% <br/>
     * title : (空字符串) <br/>
     * 
     * 参数：<br/>
     * width : <br/>
     * height : <br/>
     * title : <br/>
     * url : 必填参数 <br/>
     * onLoad : function 加载完窗口内容后执行<br/>
     * 
     * 
     */
    createWindow : function(params){
    	$("<div>").css({padding:"5px"}).window({
    		width : params.width?params.width:"80%",
    		height : params.height?params.height:"80%",
    		modal:true,
    		title : params.title?params.title:" ",
    		href : params.url,
		    onClose : function(){
		    	$(this).window("destroy");
		    },
		    onLoad : function(){
		    	if(params.onLoad){
		    		params.onLoad.call(this);
		    	}
		    }
    	}).window("open");
    },
    
    closeCurrentWindow : function(){
    	$(".panel-tool-close").click();
    },
    

    getSelectionsIds : function (select){
    	var list = $(select);
    	var sels = list.datagrid("getSelections");
    	var ids = [];
    	for(var i in sels){
    		ids.push(sels[i].id);
    	}
    	ids = ids.join(",");
    	return ids;
    },
    
    /**
     * 初始化单图片上传组件 <br/>
     * 选择器为：.onePicUpload <br/>
     * 上传完成后会设置input内容以及在input后面追加<img> 
     */
    initOnePicUpload : function(){
    	$(".onePicUpload").click(function(){
			var _self = $(this);
			KindEditor.editor(E3.kingEditorParams).loadPlugin('image', function() {
				this.plugin.imageDialog({
					showRemote : false,
					clickFn : function(url, title, width, height, border, align) {
						var input = _self.siblings("input");
						input.parent().find("img").remove();
						input.val(url);
						input.after("<a href='"+url+"' target='_blank'><img src='"+url+"' width='80' height='50'/></a>");
						this.hideDialog();
					}
				});
			});
		});
    }
};


/*******************************************************************************
 * KindEditor - WYSIWYG HTML Editor for Internet
 * Copyright (C) 2006-2011 kindsoft.net
 *
 * @author Roddy <luolonghao@gmail.com>
 * @site http://www.kindsoft.net/
 * @licence http://www.kindsoft.net/license.php
 *******************************************************************************/

KindEditor.plugin('insertfile', function(K) {
    var self = this, name = 'insertfile',
        allowFileUpload = K.undef(self.allowFileUpload, true),
        allowFileManager = K.undef(self.allowFileManager, false),
        formatUploadUrl = K.undef(self.formatUploadUrl, true),
        uploadJson = K.undef(self.uploadJson, self.basePath + 'jsp/upload_json.jsp'),
        extraParams = K.undef(self.extraFileUploadParams, {}),
        filePostName = K.undef(self.filePostName, 'imgFile'),
        lang = self.lang(name + '.');
    self.plugin.fileDialog = function(options) {
        var fileUrl = K.undef(options.fileUrl, 'http://'),
            fileTitle = K.undef(options.fileTitle, ''),
            clickFn = options.clickFn;
        var html = [
            '<div style="padding:20px;">',
            '<div class="ke-dialog-row">',
            '<label for="keUrl" style="width:60px;">' + lang.url + '</label>',
            '<input type="text" id="keUrl" name="url" class="ke-input-text" style="width:160px;" /> &nbsp;',
            '<input type="button" class="ke-upload-button" value="' + lang.upload + '" /> &nbsp;',
            '<span class="ke-button-common ke-button-outer">',
            '<input type="button" class="ke-button-common ke-button" name="viewServer" value="' + lang.viewServer + '" />',
            '</span>',
            '</div>',
            //title
            '<div class="ke-dialog-row">',
            '<label for="keTitle" style="width:60px;">' + lang.title + '</label>',
            '<input type="text" id="keTitle" class="ke-input-text" name="title" value="" style="width:160px;" /></div>',
            '</div>',
            //form end
            '</form>',
            '</div>'
        ].join('');
        var dialog = self.createDialog({
                name : name,
                width : 450,
                title : self.lang(name),
                body : html,
                yesBtn : {
                    name : self.lang('yes'),
                    click : function(e) {
                        var url = K.trim(urlBox.val()),
                            title = titleBox.val();
                        if (url == 'http://' || K.invalidUrl(url)) {
                            alert(self.lang('invalidUrl'));
                            urlBox[0].focus();
                            return;
                        }
                        if (K.trim(title) === '') {
                            title = url;
                        }
                        clickFn.call(self, url, title);
                    }
                }
            }),
            div = dialog.div;

        var urlBox = K('[name="url"]', div),
            viewServerBtn = K('[name="viewServer"]', div),
            titleBox = K('[name="title"]', div);

        if (allowFileUpload) {
            var uploadbutton = K.uploadbutton({
                button : K('.ke-upload-button', div)[0],
                fieldName : filePostName,
                url : K.addParam(uploadJson, 'dir=file'),
                extraParams : extraParams,
                afterUpload : function(data) {

                    dialog.hideLoading();
                    if (data.error === 0) {
                        debugger;
                        var url = data.url;
                        var fileName = data.fileName;
                        if (formatUploadUrl) {
                            url = K.formatUrl(url, 'absolute');
                        }
                        urlBox.val(url);
                        titleBox.val(url.substr(45,url.length-1));

                        if (self.afterUpload) {
                            self.afterUpload.call(self, url, data, name);
                        }
                        alert(self.lang('uploadSuccess'));
                    } else {
                        alert(data.message);
                    }
                },
                afterError : function(html) {
                    dialog.hideLoading();
                    self.errorDialog(html);
                }
            });
            uploadbutton.fileBox.change(function(e) {
                dialog.showLoading(self.lang('uploadLoading'));
                uploadbutton.submit();
            });
        } else {
            K('.ke-upload-button', div).hide();
        }
        if (allowFileManager) {
            viewServerBtn.click(function(e) {
                self.loadPlugin('filemanager', function() {
                    self.plugin.filemanagerDialog({
                        viewType : 'LIST',
                        dirName : 'file',
                        clickFn : function(url, title) {
                            if (self.dialogs.length > 1) {
                                K('[name="url"]', div).val(url);
                                K('[name="title"]', div).val(title);
                                if (self.afterSelectFile) {
                                    self.afterSelectFile.call(self, url);
                                }
                                self.hideDialog();
                            }
                        }
                    });
                });
            });
        } else {
            viewServerBtn.hide();
        }
        urlBox.val(fileUrl);
        titleBox.val(fileTitle);
        urlBox[0].focus();
        urlBox[0].select();
    };
    self.clickToolbar(name, function() {
        self.plugin.fileDialog({
            clickFn : function(url, title) {
                var html = '<a class="ke-insertfile" href="' + url + '" data-ke-src="' + url + '" target="_blank">' + title + '</a>';
                self.insertHtml(html).hideDialog().focus();
            }
        });
    });
});

