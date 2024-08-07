<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>CH航空-后台管理</title>
    <link href="${pageContext.request.contextPath}/static/h/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/h/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/h/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/h/css/style.css" rel="stylesheet">
</head>

<body class="fixed-sidebar full-height-layout gray-bg" style="overflow:hidden">
<div id="wrapper">
    <!--左侧导航开始-->
    <c:if test="${sessionScope.power=='admin'}">
    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="nav-close"><i class="fa fa-times-circle"></i>
        </div>
        <div class="sidebar-collapse">
            <ul class="nav" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element">

                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <span class="clear">
                               <span class="text-muted text-xs block"> 欢迎您，${sessionScope.user.name}<b class="caret"></b></span>
                                </span>
                        </a>
                        <ul class="dropdown-menu animated fadeInRight m-t-xs">
                            <li class="divider"></li>
                            <li><a onclick="logout();" href="javascript:;">安全退出</a> </li>
                        </ul>
                    </div>
                    <div class="logo-element">
                    </div>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/adminIndex">
                        <i class="fa fa-home"></i>
                        <span class="nav-label">主页</span>
                    </a>
                </li>

                <li>
                    <a href="#">
                        <i class="fa fa fa-user"></i>
                        <span class="nav-label">个人中心</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a class="J_menuItem" href="${pageContext.request.contextPath}/AdminController/info">个人信息</a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="#">
                        <i class="fa fa fa-users"></i>
                        <span class="nav-label">用户管理</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a class="J_menuItem" href="${pageContext.request.contextPath}/UserController/list">用户列表</a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="#">
                        <i class="fa fa fa-plane"></i>
                        <span class="nav-label">航班管理</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a class="J_menuItem" href="${pageContext.request.contextPath}/FlyController/list">航班列表</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="${pageContext.request.contextPath}/FlyController/html">航班新增</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa fa-file-image-o"></i>
                        <span class="nav-label">订单管理</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a class="J_menuItem" href="${pageContext.request.contextPath}/OrdersController/list">订单列表</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="${pageContext.request.contextPath}/OrdersController/list?condition=已预订">等待出票</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="${pageContext.request.contextPath}/OrdersController/list?condition=已出票">已经出票</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa fa-pencil-square-o"></i>
                        <span class="nav-label">反馈管理</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a class="J_menuItem" href="${pageContext.request.contextPath}/MsgController/list">反馈列表</a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="#">
                        <i class="fa fa fa-bullhorn"></i>
                        <span class="nav-label">公告管理</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a class="J_menuItem" href="${pageContext.request.contextPath}/AnnouncementController/list">公告列表</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="${pageContext.request.contextPath}/AnnouncementController/html">公告新增</a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="#">
                        <i class="fa fa fa-pie-chart"></i>
                        <span class="nav-label">统计管理</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a class="J_menuItem" href="${pageContext.request.contextPath}/UserController/echartsHtml">统计信息</a>
                        </li>
                    </ul>
                </li>



            </ul>
        </div>
    </nav>
    <!--左侧导航结束-->
    </c:if>



    <!--右侧部分开始-->
    <div id="page-wrapper" class="gray-bg dashbard-1">
        <div class="row border-bottom">
            <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header"><a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
                    <div class="form-group" style="margin-top: 20px;">
                        <h3 style="margin-left: 50%">CH航空后台管理系统</h3>
                    </div>
                </div>

            </nav>
        </div>
        <!--在这-->
        <div class="row J_mainContent" id="content-main">
            <iframe class="J_iframe" name="iframe0" width="100%" height="100%" src="${pageContext.request.contextPath}/adminIndexMain"></iframe>
        </div>
        <div class="footer">
            <div class="pull-right">&copy;2023</div>
        </div>
    </div>
    <!--右侧部分结束-->
</div>

<!-- 全局js -->
<script src="${pageContext.request.contextPath}/static/h/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/h/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/static/h/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="${pageContext.request.contextPath}/static/h/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="${pageContext.request.contextPath}/static/h/js/plugins/layer/layer.min.js"></script>

<!-- 自定义js -->
<script src="${pageContext.request.contextPath}/static/h/js/hplus.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/h/js/contabs.js"></script>
<!--时间js-->
<%--<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/fly_time.js"></script>--%>
<!-- 第三方插件 -->
<script src="${pageContext.request.contextPath}/static/h/js/plugins/pace/pace.min.js"></script>
<!--弹窗js-->
<script src="${pageContext.request.contextPath}/static/h/js/plugins/layer/layer.min.js"></script>
</body>
<script>

    //退出
    function logout() {
            //弹窗
            parent.layer.confirm('确认退出？', {
                btn: ['确认', '取消'], //按钮
                shade: false //不显示遮罩
            }, function() {
                //parent.layer.msg('确认', {
                    //icon: 1
                    window.top.location="${pageContext.request.contextPath}/public/logout";
               // });
            }, function() {
                parent.layer.msg('取消', {
                    shift: 6
                });
            });
        }



</script>
</html>
