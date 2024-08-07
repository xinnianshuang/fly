<%@ page import="java.util.Calendar" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
		<title>CH航空-首页</title>
		<link rel="stylesheet" type="text/css" href="static/index/swiper-2.7.6.min.css" />
		<link rel="stylesheet" type="text/css" href="static/index/jquery-ui-1.10.4.custom.css" />
		<link rel="stylesheet" type="text/css" href="static/index/global.css" />
		<link rel="stylesheet" type="text/css" href="static/index/index.css" />
		<link rel="stylesheet" type="text/css" href="static/index/trip-box.css" />
		<script type="text/javascript" src="static/index/jquery-1.12.3.min.js"></script>
		<script type="text/javascript" src="static/index/global.js"></script>
		<script type="text/javascript" src="static/index/swiper-2.7.6.min.js"></script>
		<script type="text/javascript" src="static/index/jquery-ui-1.10.4.custom.min.js"></script>
		<script type="text/javascript" src="static/index/index.js"></script>
		<script type="text/javascript" src="static/index/ticket_box.js"></script>
		<script type="text/javascript" src="static/index/airport.js"></script>
		<script type="text/javascript" src="static/index/autocomplete.js"></script>
	</head>

	<body>

		<!-- header-->
		<div class="header" style="">
			<div class="container clearfix">
				<h1 class="logo"><a href="${pageContext.request.contextPath}/" title=""><img src="${pageContext.request.contextPath}/static/index/img/logo.png" alt="CH航空" /></a></h1>
				<div class="hd-r">
				
					<div class="logbox">
						<c:if test="${empty sessionScope.power}">
						<div class="login" id="unSigned" style="display: block;"><i class="icon icon-yonghu"></i>
							<a href="${pageContext.request.contextPath}/loginPage" target="_top" title="登录"  id="btnLoginId" class="btn-login">登录</a><span class="vertical-line"></span>
							<a href="${pageContext.request.contextPath}/registerPage" target="_top" title="注册"  id="btnRegistId" class="btn-regist">注册</a><span class="vertical-line"></span>
							<a href="${pageContext.request.contextPath}/public/adminLoginPage" id="btnRegistId" title="后台登录"  target="_top" class="btn-regist">后台登录</a>
						</div>
						</c:if>
						<c:if test="${not empty sessionScope.power}">
							<div class="logout on" id="signed" > <span title="欢迎来到CH航空！" class="login-welc"><a href="${pageContext.request.contextPath}/" target="_top">欢迎来到CH航空！</a></span>
							<a href="${pageContext.request.contextPath}/UserController/info" title="个人中心"  target="mark" class="login-avatar" id="userName">${sessionScope.user.name}</a>
							<a href="${pageContext.request.contextPath}/OrdersController/userList" title="我的订单"  target="mark" class="login-order" id="myUserOrder">我的订单</a>
							<a href="${pageContext.request.contextPath}/public/logout" onclick="return confirm('确定退出登录？')" title="退出" target="_top" id="logoutId" class="btn-logout">退出</a>
						</div>
						</c:if>
					</div>
				</div>
			</div>
		</div>
		<div class="nav">
			<div class="container clearfix">
				<ul class="nav-list clearfix">
					
					<li class="nav-children nav-children10">
						<a href="${pageContext.request.contextPath}/" title="首页" class="nav-name" target="_top">首页</a>
					</li>
				
					<li class="nav-children nav-children8">
						<a href="#" title="飞行+" class="nav-name">飞行+</a>
						<div class="down-menu">
							<div class="down-menu-bj clearfix">
								<div class="container">
									
									<dl class="down-menu-con">
										<dt>                     
											<a href="${pageContext.request.contextPath}/more" target="mark" title="">
												<span class="icon icon-flightPlus01"></span>    
												<strong>提前预订</strong>             
											</a>                   
										</dt> 
									</dl>
									
								</div>
							</div>
						</div>
					</li>
					<li class="nav-children nav-children10">
						<a href="${pageContext.request.contextPath}/public/msgHtml" title="投诉与建议"  class="nav-name" target="mark">投诉与建议</a>
					</li>
				</ul>
			</div>
		</div>
	
	
	
		<div>
			<iframe src="${pageContext.request.contextPath}/main" name="mark" style="width:calc(100%); height: calc(100%); border: 0; margin: 0; padding: 0; min-height:800PX;overflow-y:scroll"></iframe>
		</div>


	</body>

</html>