var YDataGrid = function(config){

    config = config || {};

    var dataGrid = config.dataGrid || {}
    //Actions
    var actionUrl =  config.action || {}
    var Action = {
        'save': actionUrl.save ||'save.do',
        'getId': actionUrl.getById||'getById.do',
        'remove': actionUrl.remove||'delete.do',
        'update':actionUrl.update || 'update.do',
        'uploadPic':actionUrl.uploadPic || 'uploadPic.do',
        'updateUploadPic':actionUrl.updateUploadPic || 'updateUploadPic.do'
    }

    //Grid DataList
    var Grid = $('#data-list');
    //Form
    var Form = {
        search:$("#searchForm"),
        list:$("#listForm"),
        edit:$("#editForm")}
    //Win 窗口
    var Win = { edit:$("#edit-win")}

    //处理函数
    var Handler = {
        //serach 查询事件
        search: function(callback){
            Events.refresh();
            //回调函数
            if(jQuery.isFunction(callback)){
                callback();
            }
            return false;
        },
        //add按钮事件
        add: function(callback){
            Win.edit.dialog('open').dialog('setTitle','New');
            //Form.edit[0].reset();
            if($('#content')) {
                $('#content').val('');
            }
            //回调函数
            if(jQuery.isFunction(callback)){
                callback();
            }
        },
        //edit 按钮事件
        edit:  function(callback){
            var record = Utils.getCheckedRows();
            if (Utils.checkSelectOne(record)){
                var data ={};
                var idKey = dataGrid.idField || 'id'; //主键名称
                data[idKey] = (record[0][idKey]);
                Manager.getById(Action.getId,data,function(result){
                    Form.edit.form('load',result);
                    Win.edit.dialog('open').dialog('setTitle','Edit');
                    //回调函数
                    if(jQuery.isFunction(callback)){
                        callback(result);
                    }
                });
            }
        },
        //刷新Grid 数据
        refresh: function(callback){
            var param = Form.search.serializeObject();
            Grid.datagrid('reload',param);
            //回调函数
            if(jQuery.isFunction(callback)){
                callback();
            }
        },
        //删除记录
        remove: function(callback){
            var records = Utils.getCheckedRows();
            if (Utils.checkSelect(records)){
                $.messager.confirm('Confirm','Are you sure you want to delete record?',function(r){
                    if (r){
                        var idKey = dataGrid.idField || 'id'; //主键名称
                        var  data = $("input[name='"+idKey+"']", Form.list ).fieldSerialize(); //序列化字段
                        Manager.deleteForm(Action.remove,data,function(result){
                            Events.refresh();
                            //回调函数
                            if(jQuery.isFunction(callback)){
                                callback(result);
                            }
                        });
                    }
                });
            }
        },//保存调用方法
        save : function(beforeSubmit,callback) {

            $("#loading").ajaxStart(function(){
                $(this).show();
            }).ajaxComplete(function(){
                $(this).hide();
            });
            var id = $(":text[id='id']").val();
            var uploadUrl,formUrl;
            if(id != null && id != '') {
                uploadUrl = Action.updateUploadPic;
                formUrl = Action.update;
            } else {
                uploadUrl = Action.uploadPic;
                formUrl = Action.save;
            }
            //alert("uploadUrl==============="+uploadUrl);
            if(config.needUpload) {
                var subItem;
                if(config.hasSubType) {
                    subItem = $('#subType').combobox('getValue');
                }
                //alert("subItem="+subItem);
                //alert("uploadUrl="+uploadUrl);
                $.ajaxFileUpload({
                        url:uploadUrl,
                        secureuri:false,
                        fileElementId:'path1',
                        dataType: 'json',
                        data:{name:'logan', id:'id',subItem:subItem},
                        success: function (data, status) {
                            //alert("success!!");
                            var res = data.responseXML.body.innerText;
                            var resObj = jQuery.parseJSON(res);
                            if(resObj.success != 'true') {
                                alert('upload failed.');
                                return;
                            }
                            //上传成功
                            if(jQuery.isFunction(beforeSubmit)){
                                alert("shangchuan----");
                                beforeSubmit(resObj);
                            }

                            if(!Form.edit.form('validate')){
                                return;
                            }
                            Form.edit.attr('action',formUrl);
                            var parentId =$('#search_parentId').val();
                            $("#edit_parentId").val(parentId)
                            Manager.saveForm(Form. edit, function(r) {
                                Win.edit.dialog('close');
                                Events.refresh();
                                Form.edit.resetForm();
                                //回调函数
                                if(jQuery.isFunction(callback)){
                                    callback(r);
                                }
                            });
                        },
                        error: function (data, status, e) {
                            var res = data.responseXML.body.innerText;
                            var resObj = jQuery.parseJSON(res);
                            if(resObj.success != 'true') {
                                alert('upload failed.');
                                return;
                            }
                            //上传成功
                            if(jQuery.isFunction(beforeSubmit)){
                                beforeSubmit(resObj);
                            }

                            if(!Form.edit.form('validate')){
                                return;
                            }
                            Form.edit.attr('action',formUrl);
                            var parentId =$('#search_parentId').val();
                            $("#edit_parentId").val(parentId)
                            Manager.saveForm(Form. edit, function(r) {
                                Win.edit.dialog('close');
                                Events.refresh();
                                Form.edit.resetForm();
                                //回调函数
                                if(jQuery.isFunction(callback)){
                                    callback(r);
                                }
                            });
                        }
                    }
                )
            } else {
                if(!Form.edit.form('validate')){
                    return;
                }
                Form.edit.attr('action',formUrl);
                var parentId =$('#search_parentId').val();
                $("#edit_parentId").val(parentId)
                Manager.saveForm(Form. edit, function(r) {
                    Win.edit.dialog('close');
                    Events.refresh();
                    Form.edit.resetForm();
                    //回调函数
                    if(jQuery.isFunction(callback)){
                        callback(r);
                    }
                });
            }

        },
        //关闭按钮事件
        close : function (callback){
            $.messager.confirm('Confirm','Are you sure you want close Window?',function(r){
                if (r){
                    Win.edit.dialog('close');
                    //回调函数
                    if(jQuery.isFunction(callback)){
                        callback(data);
                    }
                }
            });
        }
    }

    //Grid 工具类
    var Utils = {
        getCheckedRows : function(){
            return Grid.datagrid('getChecked');
        },
        checkSelect : function(rows){//检查grid是否有勾选的行, 有返回 true,没有返回true
            var records =  rows;
            if(records && records.length > 0){
                return true;
            }
            Manager.alert('警告','未选中记录.','warning');
            return false;

        },
        checkSelectOne : function(rows){//检查grid是否只勾选了一行,是返回 true,否返回true
            var records = rows;
            if(!Utils.checkSelect(records)){
                return false;
            }
            if(records.length == 1){
                return true;
            }
            Manager.alert('警告','只能选择一行记录.','warning');
            return false;
        }
    }


    //自定义事件
    var evt= config.event || {};


    //默认事件
    var Events ={
        //serach 查询事件
        search: evt.search || Handler.search,
        //add按钮事件
        add: evt.add || Handler.add,
        //edit 按钮事件
        edit: evt.edit || Handler.edit,
        //刷新Grid 数据
        refresh: evt.refresh || Handler.refresh,
        //删除记录
        remove: evt.remove || Handler.remove,
        //保存调用方法
        save: evt.save || Handler.save,
        //关闭按钮事件
        close : evt.close ||  Handler.close
    }

    //按钮控制 btnType 用来控制按钮是否显示,后台根据授权控制是否显示
    var bar_add ={
        id:'btnadd',
        text:'新增',
        iconCls:'icon-add',
        btnType:'add',
        handler: Events.add
    };
    var bar_edit = {
        id:'btnedit',
        text:'编辑',
        iconCls:'icon-edit',
        btnType:'edit',
        handler: Events.edit
    };
    var bar_remove = { id:'btnremove',
        text:'删除',
        iconCls:'icon-remove',
        btnType:'remove',
        handler:Events.remove
    };
    var toolbarConfig;
    if(config.hasAddBtn){
        toolbarConfig = [bar_add,bar_edit,bar_remove];
    } else {
        toolbarConfig = [bar_edit,bar_remove];
    }
    var getToolbar = function (){
        var tbars = [];
        if (dataGrid.toolbar != undefined && dataGrid.toolbar.length > 0) {
            for ( var i = 0; i < dataGrid.toolbar.length; i++) {
                var bar = dataGrid.toolbar[i];
                if(!bar){
                    continue;
                }
                if(bar.btnType=='add'){
                    tbars.push({id:bar.id || bar_add.id,text:bar.text || bar_add.text ,iconCls: bar.iconCls || bar_add.iconCls, btnType: bar.btnType || bar_add.btnType,handler:bar.handler || bar_add.handler});
                    continue;
                }
                if(bar.btnType=='edit'){
                    tbars.push({id:bar.id || bar_edit.id,text:bar.text || bar_edit.text ,iconCls: bar.iconCls || bar_edit.iconCls,btnType: bar.btnType || bar_edit.btnType,handler:bar.handler || bar_edit.handler});
                    continue;
                }
                if(bar.btnType=='remove'){
                    tbars.push({id:bar.id || bar_remove.id,text:bar.text || bar_remove.text ,iconCls: bar.iconCls || bar_remove.iconCls,btnType: bar.btnType || bar_remove.btnType,handler:bar.handler || bar_remove.handler});
                    continue;
                }
                tbars.push({id:bar.id,text:bar.text,iconCls:bar.iconCls,btnType: bar.btnType,handler:bar.handler,disabled:bar.disabled});
            }
        }else{
            tbars = toolbarConfig;
        }
        return tbars;
    }

    //初始化表格
    var initGrid = function(){
        var dataconfig = {
            title: dataGrid.title || 'Data List',
            iconCls: dataGrid.iconCls || 'icon-save',
            height: dataGrid.height || 460,
            nowrap: true,
            autoRowHeight: false,
            striped: true,
            collapsible:true,
            remoteSort: false,
            pagination:true,
            rownumbers:true,
            singleSelect:false,
            checkOnSelect:false,
            selectOnCheck:false,
            url: dataGrid.url,
            method: dataGrid.method || 'post',
            loadMsg: dataGrid.loadMsg || 'Loading in ...',
            idField: dataGrid.idField,
            columns: dataGrid.columns,
            //toolbar: getToolbar(),
            onLoadSuccess: dataGrid.onLoadSuccess || function(){
                //Grid.datagrid('unselectAll');
                //Grid.datagrid('uncheckAll');
            },

            onSelect:function(rowIndex, rowData){
                //选择一行
                var rows = Grid.datagrid('getRows');
                $.each(rows,function(i){
                    if(i != rowIndex){
                        Grid.datagrid('uncheckRow',i);
                        Grid.datagrid('unselectRow',i);
                    }
                })
                Grid.datagrid('checkRow',rowIndex);
            }
        };
        Grid.datagrid(dataconfig);
    }
    //初始化Grid按钮 按钮控制
    var initTbar = function(){
        var tbars = getToolbar();
        Grid.datagrid({'toolbar':tbars});
    };
    var initTbar2 = function(){
        var tbars = getToolbar();
        var _url = urls['msUrl'] + '/getActionBtn.do';
        var data = {'url':window.location.href};
        //查询页面授权的btnType
        Manager.ajaxJson(_url,data,function(data){
            if(data.success){
                if(data.allType){
                    Grid.datagrid({'toolbar':tbars});
                }else{
                    var newBars = [];
                    jQuery.inArray("John", data.types);
                    for(var i=0;i< tbars.length; i++){
                        var bar = tbars[i];
                        //btnType 为空显示
                        if(!bar.btnType){
                            newBars.push(bar);
                        }else{
                            //判断btnType是否存在,存在则显示
                            if($.inArray(bar.btnType, data.types) >= 0 ){
                                newBars.push(bar);
                            }
                        }
                    }
                    if(newBars.length > 0){
                        Grid.datagrid({'toolbar':newBars});
                    }
                }
            }else{
                Manager.alert('提示',data.msg);
            }
        });
    }

    //初始话form
    var initForm = function(){
        if(Form.search && Form.search[0]){
            Form.search.find("#btn-search").click(Events.search); //保存事件
        }
    }

    var initWin = function(){
        if(Win.edit && Win.edit[0]){
            //判断页面是否设置buttons，如果没有设置默认按钮
            var btns = Win.edit.attr("buttons");
            if(!btns){
                //设置 保存,关闭按钮
                Win.edit.dialog({
                    buttons:[
                        {
                            text:'Save',
                            iconCls:"icon-ok",
                            handler:Events.save
                        },{
                            text:'Close',
                            iconCls:"icon-cancel",
                            handler:Events.close
                        }
                    ]
                });
            }
            //Win.edit.find("#btn-submit").click(Events.save); //保存事件
            //Win.edit.find("#btn-close").click(Events.close);//关闭窗口
        }
    }

    //this 返回属性
    this.win = Win;
    this.form = Form;
    this.grid = Grid;
    this.utils = Utils;
    this.handler = Handler;


    //初始化方法
    this.init = function(){
        initGrid();
        initTbar();
        initForm();
        initWin();
    }
    //调用初始化
    return this;
};