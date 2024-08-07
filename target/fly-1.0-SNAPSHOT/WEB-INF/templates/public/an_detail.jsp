<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	
		<title></title>

		<link rel="stylesheet" href="static/index/list/styles/main.css">
		<link rel="stylesheet" href="static/index/list/styles/style.css" />
		
		
	</head>

	<body class="wrap-res hasOldFixed" aria-basefontsize="12" >
	
				
		<div class="content-has-bg" id="content">
			
				
			<div class="container">
			<div class="d-subnav clearfix" aria-region="true" aria-regiontype="1" tabindex="0" aria-label="" aria-autolabel="true">
				<a href="${pageContext.request.contextPath}/" target="_top" class="link" tabindex="0">首页</a>
				<span class="hr" tabindex="0"></span>
				<a href="javascript:;" class="link" tabindex="0">公告</a>
				<!--<span class="hr" tabindex="0"></span>
				<span class="link on" tabindex="0">个人信息</span></div>-->
			</div>	
			
			<div class="width-control">
				<div class="wrapper">
					<div class="sale-main">
						<div class="wrap-content-bg no-bg">
							<div class="wrap-content-con">
								<div class="img-box click-banner" tabindex="0" aria-region="true" aria-regiontype="1" aria-enterownsmethod="0" aria-label="视窗区" aria-autolabel="true">
									<img src="${pageContext.request.contextPath}/static/images/nav-bg04-m.png" style="margin-left: 40%;" >
									<a class="click-space ariaskiptheme" href="javascript:;" tabindex="0"></a>
								</div>
								<div class="area-box area-box-dn" tabindex="0" aria-region="true" aria-regiontype="6" aria-enterownsmethod="0" aria-label="正文区,注意事项" aria-autolabel="true">
									<div class="area-hd">
										<h3 class="area-title" tabindex="0" style="color: red;">${requestScope.announcement.title}</h3>&nbsp;&nbsp;&nbsp;发布时间:${requestScope.announcement.dates}
									</div>
									<div class="area-box-item">
										<div class="area-con f14">

											<ol class="contents-ol">
												${requestScope.announcement.mark}
											</ol>

										</div>
									</div>
								
								</div>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br />	<br />	<br />	<br />	<br />	<br />
	</body>

</html>