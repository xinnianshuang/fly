<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link href="${pageContext.request.contextPath}/static/h/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/h/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/h/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/h/css/font-awesome.css" rel="stylesheet">
</head>


<body class="gray-bg">
    <div class="wrapper wrapper-content  animated fadeInRight article">
        <div class="row">
            <div class="col-lg-10 col-lg-offset-1">
                <div class="ibox">
                    <div class="ibox-content">
                        <div class="pull-right">
                            <button class="btn btn-white btn-xs" type="button"><a  href="javascript:;" onclick="javascript:history.back(-1);">返回</a></button>
                        </div>
                        <div class="text-center article-title">
                               <h3>
                                   投诉/建议/表扬
                                </h3>
                            工作受理时间：上午08:30-12:00 下午13:00-17:30
                        </div>
                        <p>
                            反馈人：${requestScope.msg.name}
                        </p>
                        <p>
                            联系电话：${requestScope.msg.phone}
                        </p>
                        <p>
                            航班号：${requestScope.msg.num}
                        </p>
                        <p>
                            乘机时间：${requestScope.msg.times}
                        </p>
                        <p>
                            反馈时间：${requestScope.msg.dates}
                        </p>
                        <p>
                            内容：${requestScope.msg.mark}
                        </p>
                        <hr>


                    </div>
                </div>
            </div>
        </div>

    </div>

</body>

</html>
