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
<div class="wrapper wrapper-content animated fadeInRight">

    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">

                    <h5><i class="fa fa fa-user"></i> 个人中心 > 个人信息</h5>
                    <div class="ibox-tools">
                        <a class="collapse-link">
                            <i class="fa fa-chevron-up"></i>
                        </a>

                    </div>
                </div>
                <div class="ibox-content">
                    <form action="${pageContext.request.contextPath}/AdminController/updateInfo" method="post" class="form-horizontal">
                        <span style="color: red">${requestScope.message}</span>
                        <input type="hidden" name="id" id="id" value="${sessionScope.user.id}">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">账号</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name=""  value="${sessionScope.user.username}" required disabled>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">名字</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="name" id="name" value="${sessionScope.user.name}" required >
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">密码</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="password" id="password" value="${sessionScope.user.password}" required >
                            </div>
                        </div>

                        <div class="hr-line-dashed"></div>
                        <div class="form-group">

                            <div class="col-sm-4 col-sm-offset-2">
                                <button class="btn btn-primary" type="submit">提交</button>
                                <button class="btn btn-white" type="reset">重置</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 全局js -->
<script src="${pageContext.request.contextPath}/static/h/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/h/js/bootstrap.min.js"></script>

<!-- 自定义js -->
<script src="${pageContext.request.contextPath}/static/h/js/content.js"></script>
<!--弹窗js-->
<script src="${pageContext.request.contextPath}/static/h/js/plugins/layer/layer.min.js"></script>


</body>


</html>
