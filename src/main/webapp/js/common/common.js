/**
 * 表格初始化
 * @param config
 * @returns
 */
function getDefaultDataGrid(config){
	
	var oTableInit = new Object();
    //初始化Table
    oTableInit.Init = function () {
        $('#' + config.id).bootstrapTable({
            url: config.url,         //请求后台的URL（*）
            method: 'get',                      //请求方式（*）
            toolbar: '#' + (config.toolbar == undefined ? "toolbar" : config.toolbar),                //工具按钮用哪个容器
            striped: true,                      //是否显示行间隔色
            cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
            pagination: true,                   //是否显示分页（*）
            sortable: false,                     //是否启用排序
            sortOrder: "asc",                   //排序方式
            queryParams: config.queryParams == undefined ? oTableInit.queryParams : config.queryParams,//传递参数（*）
            sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
            pageNumber:1,                       //初始化加载第一页，默认第一页
            pageSize: config.pageSize == undefined ? 10 : config.pageSize,                       //每页的记录行数（*）
            pageList: config.pageList == undefined ? [10, 25, 50, 100,1000] : config.pageList,        //可供选择的每页的行数（*）
            search: false,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
            strictSearch: false,
            showColumns: config.showColumns != undefined,                  //是否显示所有的列
            showRefresh: config.showRefresh != undefined,                  //是否显示刷新按钮
            minimumCountColumns: 2,             //最少允许的列数
            clickToSelect: true,                //是否启用点击选中行
            height:  config.height == undefined ? 546 : config.height,                        //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
            uniqueId: "id",                     //每一行的唯一标识，一般为主键列
            showToggle:config.showToggle != undefined,                    //是否显示详细视图和列表视图的切换按钮
            cardView: false,                    //是否显示详细视图
            detailView: false,                   //是否显示父子表
            showExport: false,
            columns: config.columns,
            onEditableSave: config.editSave,
            onLoadSuccess: config.success,
            onColumnSwitch: config.onColumnSwitch,
            rowStyle: function (row, index) {
                //这里有5个取值代表5中颜色['active', 'success', 'info', 'warning', 'danger'];
                var strclass = "";
                if (index%2 == 1) {
                    strclass = 'active';//还有一个active
                }
                else {
                    return {};
                }
                return {classes: strclass}
            }
        });
    };

    //得到查询的参数
    oTableInit.queryParams = function (params) {
        var temp = {   //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
            limit: params.limit,   //页面大小
            page: Math.floor(params.offset/params.limit)+1  //页码
        };
        return temp;
    };
    return oTableInit;
}


function showModalDialog(config){
	 var $modal = $('#' + config.id);
	 $modal.find(".modal-title").html(config.title);
	 if(config.div != undefined){
		 $modal.find(".modal-body").html($("#" + config.div).html());
	 } else {
		 $modal.find(".modal-body").load(config.url);
	 }
	 var index = config.index != undefined ? config.index : 0;
	 $modal.find(".modal-footer button:eq(" + index + ")").attr("data-operate", config.operate);
     $modal.find(".modal-footer button:eq(" + index + ")").html(config.btnText == undefined ? "保存" : config.btnText);
     if(config.btnClick != undefined){
         $modal.find(".modal-footer button:eq(" + index + ")").attr("onclick", config.btnClick);
     }
     if(config.btnHide){
         $modal.find(".modal-footer button:eq(" + index + ")").hide('fast');
     } else {
         $modal.find(".modal-footer button:eq(" + index + ")").show('fast');
     }
     if(config.resetContent){
         $modal.find(".modal-body").html("<div style='margin-left:100px;color:darkred;'>" + config.resetContent + "</div>");
     }
	 $modal.modal({
         backdrop : "static",
         keyboard : false
     });
}


function formIsChanged(fields) {
    var flag = false;
    $.each(fields, function (index, item) {
        var val = $("#" + item).val();
        var old = $("#" + item).attr("data-oldValue");
        if(val != old){
            flag = true;
            return;
        }
    });
    return flag;
}


//转换日期格式(时间戳转换为datetime格式)
function timestampToDate(cellval, pattern) {
    var dateVal = cellval + "";
    var pattern = "";
    if (cellval != null) {
        var date = new Date(parseInt(dateVal.replace("/Date(", "").replace(")/", ""), 10));
        var month = date.getMonth() + 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
        var currentDate = date.getDate() < 10 ? "0" + date.getDate() : date.getDate();

        var hours = date.getHours() < 10 ? "0" + date.getHours() : date.getHours();
        var minutes = date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
        var seconds = date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds();

        var datePart = date.getFullYear() + "-" + month + "-" + currentDate;
        var timePart = hours + ":" + minutes + ":" + seconds;

        if(pattern == "datetime"){
            return datePart + " " + timePart;
        } else  if(pattern == "date"){
            return datePart;
        } if(pattern == "time"){
            return timePart;
        } else {
            return datePart + " " + timePart;
        }

    }
}


function myalert(title,content) {
    showModalDialog({
        title : title || '提示信息',
        id : 'myModal',
        btnHide : true,
        resetContent: content
    });
}
