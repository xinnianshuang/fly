<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
		<title></title>
		<link href="${pageContext.request.contextPath}/static/h/css/bootstrap.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/static/h/css/font-awesome.css" rel="stylesheet">
		<!-- Morris -->
		<link href="${pageContext.request.contextPath}/static/h/css/plugins/morris/morris-0.4.3.min.css" rel="stylesheet">
		<!-- Gritter -->
		<link href="${pageContext.request.contextPath}/static/h/js/plugins/gritter/jquery.gritter.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/static/h/css/animate.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/static/h/css/style.css" rel="stylesheet">
	</head>

	<body class="gray-bg">
		<div class="wrapper wrapper-content">
			<div class="row">

				<div class="col-sm-12">
					<div class="ibox float-e-margins">
						<div class="ibox-title">
							<h5>欢迎使用CH航空后台管理系统</h5>
							<div class="ibox-tools">
								<a class="collapse-link">
									<i class="fa fa-chevron-up"></i>
								</a>
							</div>
						</div>

						<div class="ibox-content timeline">

							<div class="timeline-item">
								<div class="row">
									<div class="col-xs-3 date">
										<i class="fa fa-comments"></i>
									</div>
									<div class="col-xs-7 content">
										<p class="m-b-xs"><strong>温馨提示</strong>
										</p>
										<p>
											管理要及时注意查看用户的反馈及时和用户电话沟通
										</p>
									</div>

								</div>
							</div>


							<div class="timeline-item">
								<div class="row">
									<div class="col-xs-3 date">
										<i class="fa fa-comments"></i>
									</div>
									<div class="col-xs-7 content">
										<p class="m-b-xs"><strong>温馨提示</strong>
										</p>
										<p>
											管理对于个别违规用户，可以进行冻结账号处理
										</p>
									</div>

								</div>
							</div>



							<div class="timeline-item">
								<div class="row">
									<div class="col-xs-3 date">
										<i class="fa fa-comments"></i>
									</div>
									<div class="col-xs-7 content">
										<p class="m-b-xs"><strong>温馨提示</strong>
										</p>
										<p>
											管理要及时更新航班的最新信息等！
										</p>
									</div>

								</div>
							</div>

						</div>
					</div>
				</div>

			</div>
		</div>

		<!-- 全局js -->
		<script src="${pageContext.request.contextPath}/static/h/js/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/static/h/js/bootstrap.min.js"></script>

		<!-- Flot -->
		<script src="${pageContext.request.contextPath}/static/h/js/plugins/flot/jquery.flot.js"></script>
		<script src="${pageContext.request.contextPath}/static/h/js/plugins/flot/jquery.flot.tooltip.min.js"></script>
		<script src="${pageContext.request.contextPath}/static/h/js/plugins/flot/jquery.flot.spline.js"></script>
		<script src="${pageContext.request.contextPath}/static/h/js/plugins/flot/jquery.flot.resize.js"></script>
		<script src="${pageContext.request.contextPath}/static/h/js/plugins/flot/jquery.flot.pie.js"></script>

		<!-- Peity -->
		<script src="${pageContext.request.contextPath}/static/h/js/plugins/peity/jquery.peity.min.js"></script>
		<script src="${pageContext.request.contextPath}/static/h/js/demo/peity-demo.js"></script>

		<!-- 自定义js -->
		<script src="${pageContext.request.contextPath}/static/h/js/content.js?v=1.0.0"></script>

		<!-- jQuery UI -->
		<script src="${pageContext.request.contextPath}/static/h/js/plugins/jquery-ui/jquery-ui.min.js"></script>

		<!-- GITTER -->
		<script src="${pageContext.request.contextPath}/static/h/js/plugins/gritter/jquery.gritter.min.js"></script>

		<!-- EayPIE -->
		<script src="${pageContext.request.contextPath}/static/h/js/plugins/easypiechart/jquery.easypiechart.js"></script>

		<!-- Sparkline -->
		<script src="${pageContext.request.contextPath}/static/h/js/plugins/sparkline/jquery.sparkline.min.js"></script>

		<!-- Sparkline demo data  -->
		<script src="${pageContext.request.contextPath}/static/h/js/demo/sparkline-demo.js"></script>

	</body>

</html>