<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div id="detail-pop-data-size-count">

    <div>
        <div id="toolbar">

        </div>
        <div>
            <table id="detailOfmainDg" style="background:rgb(255,255,255);" class="table table-hover"></table>
        </div>
    </div>

</div>


<script type="text/javascript">

$(function () {

    // 初始化表
    var tableInit = getDefaultDataGrid({
        id: 'detailOfmainDg',
        url: '/personWashDataCount/findByPageForDetailInfo.do?' + "year=" + ${year} + "&month=" + ${month},
        height: '350',
        columns: [
            {
                field: "taskName",
                title: "分配任务",
                align: 'center'
            },
            {
                field: "recordCount",
                title: "数据量(条)",
                align: 'center'
            },
            {
                field: "item1",
                title: "1项数据量(条)",
                align: 'center'
            },
            {
                field: "item2",
                title: "2项数据量(条)",
                align: 'center'
            },
            {
                field: "item3",
                title: "3项数据量(条)",
                align: 'center'
            },
            {
                field: "item4",
                title: "4项数据量(条)",
                align: 'center'
            },
            {
                field: "item5",
                title: "5项数据量以上(条)",
                align: 'center'
            },
            {
                field: "itemCount",
                title: "数据量(项)",
                align: 'center'
            }
        ]
    });
    tableInit.Init();

});

</script>