<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>index_content</title>

    <link rel="stylesheet" href="../../../css/reset.css">
    <link href="../../../js/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="../../../js/bootstrap-table/bootstrap-table.css" rel="stylesheet" type="text/css"/>
    <link href="../../../img/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../../../css/index_content.css">
    <style>
        .echTable{
            height:250px;
            max-width: 1200px;
        }
    </style>
</head>
<body>
<div class="cont">
    <div class="topDataNum">
        <ul>
            <li class="dataMon"><span class="dataMon-sp1">雷达采集入库数据</span><span class="dataMon-sp2">660</span><span
                    class="dataMon-sp3">条</span></li>
            <li class="dataMon"><span class="dataMon-sp1">活跃采集点</span><span class="dataMon-sp2">25</span><span
                    class="dataMon-sp3">个</span></li>
            <li class="dataMon"><span class="dataMon-sp1">数据清洗数量</span><span class="dataMon-sp2">3289</span><span
                    class="dataMon-sp3">条</span></li>
            <li class="dataMon"><span class="dataMon-sp1">人工清洗待分配数据</span><span class="dataMon-sp2">1336</span><span
                    class="dataMon-sp3">条</span></li>
        </ul>
    </div>

    <div class="yearData">
        <div class="yData">年度数据</div>
        <div class="allData">
            <span>总采集数据量</span>
            <span> 6501847</span>
        </div>
        <div class="insData">
            <span>信息化数据量</span>
            <span> 1735134</span>
        </div>
    </div>

    <div id="numChart" class="numChart">
        <div id="echTable" class="echTable"></div>
    </div>

    <div class="footDataTab">
        <div class="tb_head"><i class="fa fa-table" aria-hidden="true"></i><div class="tb_head_data">数据实时入库情况</div></div>
        <table id="tb_departments" style="height: 100%;width: 100%;" class="table table-hover"></table>
    </div>
</div>

</body>
<script src="../../../js/jquery-1.11.0.min.js"></script>
<script src="../../../js/bootstrap/js/bootstrap.js"></script>
<script src="../../../js/bootstrap-table/bootstrap-table.js"></script>
<script src="../../../js/bootstrap-table/locale/bootstrap-table-zh-CN.js"></script>
<script src="../../../js/echarts.js"></script>
<script>
    $(function(){
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('echTable'));
        option = {
            tooltip: {
                trigger: 'axis',
                axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                    type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                }
            },
            legend: {
                data: ['信息化数量', '总采集数量'],
                left: '4%',
                top: '2%',
                textStyle: {
                    color: '#999999',
                    fontSize: '14'
                }
            },
            grid: {
                top: '35',
                left: '1%',
                right: '4%',
                bottom: '3%',
                containLabel: true,
                show: false
            },
            xAxis: {
                type: 'value',
                splitLine: {
                    show: false,
                    lineStyle: {
                        color: ['gray']
                    }
                },
                axisLabel: {
                    show: true,
                    textStyle: {
                        color: '#999999',
                        fontSize: '14'
                    }
                },
                axisLine: {
                    lineStyle: {
                        color: '#4ecbea',
                        width: 2
                    }
                },
                axisTick: {
                    inside: true
                },
                splitNumber: 5
            },
            yAxis: {
                type: 'category',
                data: ['2013', '2014', '2015', '2016', '2017'],
                axisLabel: {
                    show: true,
                    textStyle: {
                        color: '#999999',
                        fontSize: '14'
                    }
                },
                axisLine: {
                    lineStyle: {
                        color: '#4ecbea',
                        width: 2
                    }
                },
                axisTick: {
                    show: false
                }
            },
            series: [
                {
                    name: '信息化数量',
                    type: 'bar',
                    itemStyle: {
                        normal: {
                            color: '#00b5e2'
                        }
                    },
                    stack: '总量',
                    label: {
                        normal: {
                            show: true,
                            position: 'insideRight'
                        }
                    },
                    data: [193896, 266059, 494414, 638864, 141901]
                },
                {
                    name: '总采集数量',
                    type: 'bar',
                    itemStyle: {
                        normal: {
                            color: '#0f6fa2'
                        }
                    },
                    stack: '总量',
                    label: {
                        normal: {
                            show: true,
                            position: 'insideRight'
                        }
                    },
                    data: [620895, 930236, 1642699, 2687999, 620018]
                }
            ]
        };
        myChart.setOption(option);

    });


    $(function () {
        //1.初始化Table
        var oTable = new TableInit();
        oTable.Init();
    });
    //1.初始化Table
    var TableInit = function () {
        var oTableInit = new Object();
        //初始化Table
        oTableInit.Init = function () {
            $('#tb_departments').bootstrapTable({
                url: '/modify/urlconlist.do',         //请求后台的URL（*）
                method: 'get',                      //请求方式（*）
                datashowcolumns: false,
                striped: true,                      //是否显示行间隔色
                cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
                pagination: true,                   //是否显示分页（*）
                sortable: false,                     //是否启用排序
                // sortOrder: "asc",                   //排序方式
                queryParams: oTableInit.queryParams,//传递参数（*）
                sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
                pageNumber: 1,                       //初始化加载第一页，默认第一页
                pageSize: 10,                       //每页的记录行数（*）
                pageList: [10],        //可供选择的每页的行数（*）
                search: false,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
                strictSearch: false,
                showColumns: false,                  //是否显示所有的列
                showRefresh: false,                  //是否显示刷新按钮
                minimumCountColumns: 2,             //最少允许的列数
                clickToSelect: true,                //是否启用点击选中行
                //height: 332,                        //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
                uniqueId: "ID",                     //每一行的唯一标识，一般为主键列
                showToggle: false,                    //是否显示详细视图和列表视图的切换按钮
                cardView: false,                    //是否显示详细视图
                detailView: false,                   //是否显示父子表
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
                columns: [{
                    field: 'irSid',
                    title: 'ID',
                    width: 80
                }, {
                    field: 'irStartid',
                    title: '起始频道'
                }, {
                    field: 'irSitename',
                    title: '网站名',
                    width: 150
                }, {
                    field: 'irChannel',
                    title: '网站栏目',
                    width: 100
                }, {
                    field: 'irUrltitle',
                    title: '公告标题'
                    // formatter: function (value, row, index) {
                    //     if(value.length>35){
                    //     return value.substring(0,35)+"…";
                    //     }
                    //     else return value;
                    // }
                }, {
                    field: 'irUrldate',
                    title: '发布日期',
                    sortable: true,
                    width: 100,
                    //——修改——获取日期列的值进行转换
                    formatter: function (value, row, index) {
                        var newDate = new Date();
                        newDate.setTime(value);
                        return newDate.toJSON().substring(0, 10);
                    }
                }, {
                    field: 'irUrlname',
                    title: 'URL',
                    width: 80,
                    formatter: function (value, row, index) {
                        return "<a href=" + value + ">链接地址</a>";
                    }
                }]
            });
        };
        function changeDateFormat(cellval) {
            if (cellval != null) {
                var date = new Date(parseInt(cellval.replace("/Date(", "").replace(")/", ""), 10));
                var month = date.getMonth() + 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
                var currentDate = date.getDate() < 10 ? "0" + date.getDate() : date.getDate();
                return date.getFullYear() + "-" + month + "-" + currentDate;
            }
        }

        //得到查询的参数
        oTableInit.queryParams = function (params) {
            var temp = {   //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
                limit: params.limit,   //页面大小
                page: Math.floor(params.offset / params.limit) + 1  //页码
            };
            return temp;
        };
        return oTableInit;
    };

</script>
</html>