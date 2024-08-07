<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/index/list/styles/style.css">

		<script type="text/javascript" language="javascript">
			var usercookies = "我们使用Cookies";
			var cookiesdescribe1 = "为了提供个性化的展示与改善您的浏览体验，本网站使用cookie。继续浏览我们的网站，即表示您同意我们的";
			var cookiesurlname = "cookie政策";
			var cookiesdescribe2 = "隐私条款";
			var cookiesurls = "";
			var cookiesdescribe3 = "以及";
			var cookiePrivacysurl = "";
			var cookiejuhao = "。";
		</script>

	</head>

	<body aria-basefontsize="14" class="hasOldFixed" id="ariaq5j21osxsm8">

		<div class="content" id="content">
				
			
			<div class="container">
				<div class="steps flt-steps flt-steps5" aria-region="true" aria-regiontype="1" tabindex="0" aria-label="视窗区" aria-autolabel="true">
					<div class="steps1">
						<div class="inner">
							<i class="icon-search" tabindex="0"></i><span class="dot" tabindex="0">航班查询</span>
						</div>
					</div>
					<div class="steps2">
						<div class="inner">
							<i class="icon-aircraft" tabindex="0"></i><span class="dot" tabindex="0">航班选择</span>
						</div>
					</div>
					<div class="steps3">
						<div class="inner">
							<i class="icon-flight" tabindex="0"></i><span class="dot" tabindex="0">航班概况</span>
						</div>
					</div>
					<div class="steps4">
						<div class="inner">
							<i class="icon-pen" tabindex="0"></i><span class="dot" tabindex="0">填写信息</span>
						</div>
					</div>

					<div class="steps5">
						<div class="inner">
							<i class="icon-correct" tabindex="0"></i><span class="dot" tabindex="0">预订成功</span>
						</div>
					</div>
				</div>
				<br />
				<div>
					<i class="icon-aircraft" tabindex="0"></i>
					<span style="font-size: 20px;">恭喜!预订成功!可以在<a href="${pageContext.request.contextPath}/OrdersController/userList" style="color: #4BAFE1;">我的订单</a>中查看!</span>
		       </div>
		

			</div>

		</div>

		<script type="text/javascript" src="${pageContext.request.contextPath}/static/index/detail/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/index/detail/main.js"></script>

	</body>

</html>