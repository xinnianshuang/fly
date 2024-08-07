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

                    <h5><i class="fa fa fa-users"></i> 用户管理 > 用户更新</h5>
                    <div class="ibox-tools">
                        <a class="collapse-link">
                            <i class="fa fa-chevron-up"></i>
                        </a>

                    </div>
                </div>
                <div class="ibox-content">
                    <form action="${pageContext.request.contextPath}/UserController/update" method="post" class="form-horizontal">
                        <input type="hidden" name="uid" id="uid" value="${requestScope.user.uid}">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">账号</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name=""  value="${requestScope.user.username}" required disabled>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">名字</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="name" id="name" value="${requestScope.user.name}" required >
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">密码</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="password" id="password" value="${requestScope.user.password}" required >
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">身份证</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="card" id="card" maxlength="18" value="${requestScope.user.card}" required >
                            </div>
                        </div>
                        <div class="form-group text-left">
                            <div class="checkbox i-checks">
                                <label class="col-sm-2 control-label" style="font-weight: bold">性别</label>
                                <div class="col-sm-10">
                                    <input type="radio" name="sex" value="男"  ${requestScope.user.sex=='男'?'checked':''}><i></i> 男&nbsp;&nbsp;&nbsp;
                                    <input type="radio" name="sex" value="女"  ${requestScope.user.sex=='女'?'checked':''}><i></i> 女&nbsp;&nbsp;&nbsp;
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">年龄</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="age" id="age" maxlength="2"  onkeyup="value=value.replace(/[^\d]/g,'')" value="${requestScope.user.age}" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">电话</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="phone" id="phone" maxlength="11"  value="${requestScope.user.phone}" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">地址</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="address" id="address"  value="${requestScope.user.address}" required>
                            </div>
                        </div>
                        <div class="form-group text-left">
                            <div class="checkbox i-checks">
                                <label class="col-sm-2 control-label">会员</label>

                                    <div class="col-sm-10">
                                    <select class="form-control" name="vip">
                                        <option value="${requestScope.user.vip}">${requestScope.user.vip}</option>
                                        <option value="白银会员">白银会员</option>
                                        <option value="黄金会员">黄金会员</option>
                                        <option value="白金会员">白金会员</option>
                                        <option value="钻石会员">钻石会员</option>
                                    </select>
                                    </div>

                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">积分</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="integral" id="integral"  onkeyup="value=value.replace(/[^\d]/g,'')" value="${requestScope.user.integral}" required>
                            </div>
                        </div>
                        <div class="form-group text-left">
                            <div class="checkbox i-checks">
                                <label class="col-sm-2 control-label">状态</label>
                                <label class="no-padding">
                                    <input type="radio" name="status" value="正常"  ${requestScope.user.status=='正常'?'checked':''}><i></i> 正常&nbsp;&nbsp;&nbsp;
                                    <input type="radio" name="status" value="冻结"  ${requestScope.user.status=='冻结'?'checked':''}><i></i> 冻结&nbsp;&nbsp;&nbsp;
                                </label>
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
