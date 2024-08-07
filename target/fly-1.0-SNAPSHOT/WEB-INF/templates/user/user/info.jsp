<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">

		<title></title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/index/list/styles/style.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/index/bootstrap.min.css" />
	</head>

	<body aria-basefontsize="14" class="hasOldFixed" id="ariaggk7jbnqxl">
		<div class="content" id="content">

			<div class="container">
				<div class="d-subnav clearfix" aria-region="true" aria-regiontype="1" tabindex="0" aria-label="" aria-autolabel="true">
					<a href="${pageContext.request.contextPath}/" target="_top" class="link" tabindex="0">首页</a>
					<span class="hr" tabindex="0"></span>
					<a href="javascript:;" class="link" tabindex="0">个人中心</a>
					<!--<span class="hr" tabindex="0"></span>
				        <span class="link on" tabindex="0">个人信息</span></div>-->
				</div>
			</div>

			<div class="container order-list">

				<div class="confirm-title-sec">
					<span class="blod-line" tabindex="0"></span><span tabindex="0">我的信息</span>
				</div>

				<!--<input id="search" class="btn btn-default ariaskiptheme" type="button" value="立即查询" name="search" onclick="valibookingSearchForm();">-->

				<div class="con-box">

					<div class="con-body">



						<form action="${pageContext.request.contextPath}/UserController/updateInfo" method="post">
							<input type="hidden" name="uid" value="${sessionScope.user.uid}">
							<span style="color: red">${requestScope.message}</span>
							<div class="input-group animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
								<span class="input-group-addon" id="basic-addon1">账号</span>
								<input type="text" class="form-control" placeholder="" value="${sessionScope.user.username}" aria-describedby="basic-addon1" disabled >
							</div>
							<br />
							<div class="input-group animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
								<span class="input-group-addon" id="basic-addon1">会员</span>
								<input type="text" class="form-control" placeholder="" value="${sessionScope.user.vip}" aria-describedby="basic-addon1" disabled style="color: red">
							</div>
							<br />
							<div class="input-group animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
								<span class="input-group-addon" id="basic-addon1">积分</span>
								<input type="text" class="form-control" placeholder="" value="${sessionScope.user.integral}" aria-describedby="basic-addon1" disabled style="color: red">
							</div>
							<br />
							<div class="input-group animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
								<span class="input-group-addon" id="basic-addon1">名字</span>
								<input type="text" class="form-control" placeholder="" name="name" value="${sessionScope.user.name}" required  aria-describedby="basic-addon1">
							</div>
							<br />
							<div class="input-group animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
								<span class="input-group-addon" id="basic-addon1">密码</span>
								<input type="text" class="form-control" placeholder=""  name="password" value="${sessionScope.user.password}" required aria-describedby="basic-addon1">
							</div>
							<br />
							<div class="input-group animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
								<span class="input-group-addon" id="basic-addon1">地址</span>
								<input type="text" class="form-control" placeholder=""  name="address" value="${sessionScope.user.address}" required aria-describedby="basic-addon1">
							</div>
							<br />
							<div class="input-group animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
								<span class="input-group-addon" id="basic-addon1">电话</span>
								<input type="text" class="form-control" placeholder=""  name="phone" maxlength="11" value="${sessionScope.user.phone}" required aria-describedby="basic-addon1">
							</div>
							<br />
							<div class="input-group animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
								<span class="input-group-addon" id="basic-addon1">身份证</span>
								<input type="text" class="form-control" placeholder=""  name="card" maxlength="18" value="${sessionScope.user.card}" required  aria-describedby="basic-addon1">
							</div>
							<br />
							<div class="row animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
								<div class="col-lg-6 in-gp-tb">
									<div class="input-group">
										<span >性别：&nbsp;&nbsp;</span>
										<input type="radio" name="sex" class="sex" value="女" ${sessionScope.user.sex=='女'?'checked':''}>女&nbsp;&nbsp;&nbsp;
										<input type="radio" name="sex" class="sex" value="男" ${sessionScope.user.sex=='男'?'checked':''}>男
									</div>
								</div>
							</div>
							<br />

							<div class="input-group animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
								<span class="input-group-addon" id="basic-addon1">年龄</span>
								<input type="text" class="form-control" placeholder="" maxlength="2" name="age" value="${sessionScope.user.age}" required onkeyup="value=value.replace(/[^\d]/g,'')" aria-describedby="basic-addon1">
							</div>
							<br />

							<div class="input-group animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">

								<input type="submit" value="提交" class="form-control" placeholder="" aria-describedby="basic-addon1">
							</div>
						</form>


					</div>
				</div>
			</div>
		</div>

	</body>

</html>