<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/index/list/styles/style.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/index/bootstrap.min.css" />
	</head>

	<body aria-basefontsize="14" class="hasOldFixed" id="ariaggk7jbnqxl">
		<div class="content" id="content">

			<div class="container">
				<div class="d-subnav clearfix" aria-region="true" aria-regiontype="1" tabindex="0" aria-label="" aria-autolabel="true">
					<a href="${pageContext.request.contextPath}/" target="_top" class="link" tabindex="0">首页</a>
					<span class="hr" tabindex="0"></span>
					<a href="javascript:;" class="link" tabindex="0">我的订单</a>
					<!--<span class="hr" tabindex="0"></span>
				        <span class="link on" tabindex="0">个人信息</span></div>-->
				</div>
			</div>

			<div class="container order-list">

				<div class="confirm-title-sec">
					<span class="blod-line" tabindex="0"></span><span tabindex="0">我的订单</span>
				</div>

				<!--<input id="search" class="btn btn-default ariaskiptheme" type="button" value="立即查询" name="search" onclick="valibookingSearchForm();">-->

				<div class="con-box">

					<div class="con-body">
						<c:if test="${empty requestScope.page.items[0]}">
						<div class="order-table show-this" id="no-result">对不起！没有搜索到订单</div>
						</c:if>
				

							<div class="table-responsive">

								<!--表格内容start-->
								<table class="table table-bordered">
									<thead>
										<tr>
											<th>乘机人</th>
											<th>出发</th>
											<th>到达</th>
											<th>出发时间</th>
											<th>到达时间</th>
											<th>时长</th>
											<th>经济/商务</th>
											<th>价格</th>
											<th>航班号</th>
											<th>机型</th>
											<th>订单状态</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
									<c:forEach items="${requestScope.page.items}" var="o">
										<tr>
											<td>${o.oname}</td>
											<td>${o.fly.start_city}</td>
											<td>${o.fly.end_city}</td>
											<td>${o.start_date}&nbsp;${o.fly.start_time}</td>
											<td>${o.end_date}&nbsp;${o.fly.end_time}</td>
											<td>${o.fly.duration}</td>
											<td style="color: red">${o.types}</td>
											<td>${o.price}</td>
											<td>${o.fly.fly_card}</td>
											<td>${o.fly.type}</td>
											<c:if test="${o.ostatus == '已预订'}">
												<td style="color: #22bb22">${o.ostatus}</td>
											</c:if>
											<c:if test="${o.ostatus == '已退订'}">
												<td style="color: red">${o.ostatus}</td>
											</c:if>
											<c:if test="${o.ostatus == '已出票'}">
												<td >${o.ostatus}</td>
											</c:if>

											<td>
												<div class="btn-group">
													<c:if test="${o.ostatus=='已预订'}">
													<a href="${pageContext.request.contextPath}/OrdersController/userUpdateStatus?oid=${o.oid}&status=已退订"><span class="label label-warning" onclick="return confirm('确定退订？')" title="退订">退订</span></a>
													<a href="${pageContext.request.contextPath}/OrdersController/userUpdateStatus?oid=${o.oid}&status=已出票"><span class="label label-warning" onclick="return confirm('确定出票？')" title="出票">出票</span></a>
													</c:if>
													<c:if test="${o.ostatus=='已退订' || o.ostatus=='已出票'}">
													<a href="${pageContext.request.contextPath}/OrdersController/userDelete?oid=${o.oid}"><span class="label label-warning" onclick="return confirm('确定删除当前数据？')" title="删除">删除</span></a>
													</c:if>
												</div>
											</td>

										</tr>
									</c:forEach>
									</tbody>
								</table>
								<!--表格内容end-->
								<%--分页条start--%>
								<div style="text-align: center" id="page_nav">
									<%--转到第几页第一种写法from表单 这里使用的--%>

									<a href="javascript:;" onclick="getData(1);">首页</a>

									<c:if test="${requestScope.page.pageNo>1}">
										<a href="javascript:;" onclick="getData(${requestScope.page.pageNo-1});">上一页</a>
									</c:if>

									<c:if test="${requestScope.page.pageNo<requestScope.page.pageTotal}">
										<a href="javascript:;" onclick="getData(${requestScope.page.pageNo+1});">下一页</a>
									</c:if>

									<a href="javascript:;" onclick="getData(${requestScope.page.pageTotal});">末页</a>&nbsp;第${requestScope.page.pageNo}页&nbsp;共${requestScope.page.pageTotal}页&nbsp;${requestScope.page.pageTotalCount}条记录

								</div>
								<%--分页条end--%>
						

						</div>

					</div>
				</div>
			</div>
		</div>

	</body>
<script>
	//点击
	function getData(pageNo){
		window.location.href = "${pageContext.request.contextPath}/OrdersController/userList?pageNoString=" + pageNo;
	}
</script>
</html>