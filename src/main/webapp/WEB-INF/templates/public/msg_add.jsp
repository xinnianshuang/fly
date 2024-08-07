<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">

		<title></title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/index/list/styles/style.css">

		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/index/tousu/index.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/index/tousu/aui.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/index/tousu/feedbackNote.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/index/jquery-1.12.3.min.js"></script>
		<style>
			.title {
				padding-bottom: 3px;
				margin-top: 20px;
			}
			
			.titleCenter {
				text-align: center;
				font-size: 30px;
			}
			
			.title span {
				border-left: #F06C19 3px solid;
				padding-left: 5px;
				font-size: 20px;
			}
			
			.container {
				/*width: 900px;*/
				margin-top: 5px;
				margin-bottom: 10px;
				color: #333333;
				font-family: 'Microsoft YaHei', verdana, sans-serif;
			}
			
			.type {
				border-top: #D8D8D8 1px solid;
				padding-left: 65px;
				padding-top: 10px;
			}
			
			.selectType span {
				display: inline-block;
				background-color: #F2F2F2;
				width: 200px;
				height: 50px;
				line-height: 50px;
				text-align: center;
				margin-left: 35px;
				cursor: pointer;
			}
			
			.selectType span.selected,
			#submit {
				background-color: #E60013;
				color: white;
				background-image: none;
				text-shadow: none;
			}
			
			.hide {
				display: none!important;
			}
			
			/deep/ .el-dialog__body {
				display: inline-block;
			}
		</style>
	</head>

	<body aria-basefontsize="14" class="hasOldFixed" id="ariaggk7jbnqxl">
		<div class="content" id="content">

			<div class="container">
				<div class="d-subnav clearfix" aria-region="true" aria-regiontype="1" tabindex="0" aria-label="" aria-autolabel="true">
					<a href="${pageContext.request.contextPath}/" target="_top" class="link" tabindex="0">首页</a>
					<span class="hr" tabindex="0"></span>
					<a href="javascript:;" class="link" tabindex="0">反馈</a>
					<!--<span class="hr" tabindex="0"></span>
				        <span class="link on" tabindex="0">个人信息</span></div>-->
				</div>
			</div>

			<div class="container order-list">

				<div class="con-box">

					<div class="con-body">

						<div id="feedbackNoteApp" class="feedbackNote-wrap">
							<div class="el-card ai-main is-never-shadow">
								<div class="el-card__body">
									<div class="container">
										<div class="titleCenter"><span>我要提投诉/建议/表扬</span> <br> <span style="font-size: 12px;">工作时间：上午08:30-12:00 下午13:00-17:30， 紧急事宜请联系24小时热线：99999</span></div>
										<form class="el-form" action="${pageContext.request.contextPath}/" method="post">
											<div class="title"><span>我的信息</span></div>
											<div class="type"></div>
											<div class="el-row is-justify-center is-align-middle el-row--flex">
												<div class="el-col el-col-10">
													<div class="el-form-item is-required">
														<div class="el-form-item__label-wrap" style="margin-left: 28px;"><label for="name" class="el-form-item__label" style="width: auto;">姓名：</label></div>
														<div class="el-form-item__content" style="margin-left: 92px;">
															<div class="el-input" style="width: 70%;">
																<input type="text" autocomplete="off" name="name" id="name" required maxlength="100" class="el-input__inner">

															</div>
														</div>
													</div>
												</div>
												<div class="el-col el-col-10">
													<div class="el-form-item is-required">
														<div class="el-form-item__label-wrap"><label for="phone" class="el-form-item__label" style="width: auto;">联系电话：</label></div>
														<div class="el-form-item__content" style="margin-left: 92px;">
															<div class="el-input" style="width: 70%;">
																<input type="text" autocomplete="off" name="phone" id="phone" required placeholder="电话号码中间用“/”隔开" maxlength="100" class="el-input__inner">
															</div>

														</div>
													</div>
												</div>
											</div>
											<div class="el-row is-justify-center is-align-middle el-row--flex">
												<div class="el-col el-col-10">
													<div class="el-form-item is-required">
														<div class="el-form-item__label-wrap" style="margin-left: 14px;"><label for="num" class="el-form-item__label" style="width: auto;">航班号：</label></div>
														<div class="el-form-item__content" style="margin-left: 92px;">
															<div class="el-input" style="width: 70%;">
																<input type="text" autocomplete="off" name="num" id="num" required maxlength="100" class="el-input__inner">
															</div>
														</div>
													</div>
												</div>
												<div class="el-col el-col-10">
													<div class="el-form-item is-required">
														<div class="el-form-item__label-wrap"><label for="times" class="el-form-item__label" style="width: auto;">乘机日期：</label></div>
														<div class="el-form-item__content" style="margin-left: 92px;">
															<div class="el-input" style="width: 70%;">
																<input type="date" autocomplete="off" name="times" id="times" required maxlength="100" class="el-input__inner">
															</div>
														</div>
													</div>
												</div>
											</div>

											<div class="title"><span>反馈内容</span></div>
											<div class="type"></div>
											<div class="el-row is-justify-center is-align-middle el-row--flex">
												<div class="el-col el-col-20">
													<div class="el-form-item is-required">
														<div class="el-form-item__label-wrap"><label for="content" class="el-form-item__label" style="width: auto;">您的诉求：</label></div>
														<div class="el-form-item__content" style="margin-left: 92px;">
															<div class="el-textarea" style="width: 70%;"><textarea autocomplete="off" required name="mark" id="mark" row="15" maxlength="200" class="el-textarea__inner" style="min-height: 117px; height: 117px;"></textarea>
															</div>
														</div>
													</div>
												</div>
											</div>

											<div class="ai-btn"><button type="button" onclick="addMsg();" class="el-button el-button--primary"><span>提交</span></button></div>
										</form>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>

	</body>
<script>

	function addMsg() {

		var name = document.getElementById("name").value;
		var phone = document.getElementById("phone").value;
		var num = document.getElementById("num").value;
		var mark = document.getElementById("mark").value;
		var times = document.getElementById("times").value;

		if (name==""||name==null){
			alert("名字不能为空！");
			return false;
		}

		if (phone.length!=11){
			alert("手机号码为11位数字！");
			return false;
		}
		if (num==""||num==null){
			alert("航班号不能为空！");
			return false;
		}
		if (times==""||times==null){
			alert("乘机日期不能为空！");
			return false;
		}
		if (mark==""||mark==null){
			alert("内容不能为空！");
			return false;
		}
		$.ajax({
			url: "${pageContext.request.contextPath}/public/addMsg",
			type: "post",
			data:{name:name,phone:phone,num:num,times:times,mark:mark},
			success: function (str) {
				if ("success"==str){
					alert("感谢您的反馈！后续我们或将电话回访您！")
					window.top.location.href="${pageContext.request.contextPath}/";
				}else {
					alert("提交失败！")
				}
			},
			error:function (){
				alert("网络连接失败")
			}
		});
	}
</script>
</html>