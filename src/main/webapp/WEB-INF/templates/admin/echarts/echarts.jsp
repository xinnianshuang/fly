<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>银行客户管理系统</title>
    <link href="${pageContext.request.contextPath}/static/h/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/h/css/font-awesome.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/h/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/h/css/style.css" rel="stylesheet">

</head>

<body class="gray-bg">

<div class="wrapper wrapper-content animated fadeInRight">


    <div class="col-sm-8">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>会员统计</h5>
                <div class="ibox-tools">
                    <a class="collapse-link">
                        <i class="fa fa-chevron-up"></i>
                    </a>

                </div>
            </div>
            <div class="ibox-content">
                <div class="echarts" id="echarts-pie-chart"></div>
            </div>
        </div>
    </div>


</div>
</div>
<!-- 全局js -->
<script src="${pageContext.request.contextPath}/static/h/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/h/js/bootstrap.min.js"></script>

<!-- ECharts -->
<script src="${pageContext.request.contextPath}/static/h/js/plugins/echarts/echarts-all.js"></script>

<!-- 自定义js -->
<script src="${pageContext.request.contextPath}/static/h/js/content.js"></script>


<!-- ECharts demo data -->
<!--<script src="static/js/demo/echarts-demo.js"></script>-->
<script>
    function getData() {
        $.ajax({
            url: "${pageContext.request.contextPath}/UserController/echarts",
            type: "post",
            data:{},
            success: function (str) {
                console.log(str);
                var strArray = str.split(",");

                $(function () {
                    var pieChart = echarts.init(document.getElementById("echarts-pie-chart"));
                    var pieoption = {
                        title: {
                            text: 'VIP会员统计',
                            subtext: '实时数据流',
                            x: 'center'
                        },
                        tooltip: {
                            trigger: 'item',
                            formatter: "{a} <br/>{b} : {c} ({d}%)"
                        },
                        legend: {
                            orient: 'vertical',
                            x: 'left',
                            data: ['白银会员', '黄金会员', '白金会员', '钻石会员']
                        },
                        calculable: true,
                        series: [
                            {
                                name: 'VIP会员统计',
                                type: 'pie',
                                radius: '55%',
                                center: ['50%', '60%'],
                                data: [
                                    {value: strArray[0], name: '白银会员'},
                                    {value: strArray[1], name: '黄金会员'},
                                    {value: strArray[2], name: '白金会员'},
                                    {value: strArray[3], name: '钻石会员'}
                                ]
                            }
                        ]
                    };
                    pieChart.setOption(pieoption);
                    $(window).resize(pieChart.resize);


                });



            },
            error:function (){
                alert("网络连接中断")
            }
        });
    }

    getData();
</script>
</body>

</html>
