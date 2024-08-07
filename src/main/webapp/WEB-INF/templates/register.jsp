<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">

		<title>会员登录_CH航空</title>
		<link rel="stylesheet" href="static/index/list/styles/style.css">
	<script type="text/javascript" src="static/index/jquery-1.12.3.min.js"></script>
	</head>

	<body aria-basefontsize="14" class="hasOldFixed" id="arianqs67kbnv1s">

		<div class="content login-pg" id="content">
			<div class="container login-body">
				<div class="login-wid" id="page-memberLogin" aria-region="true" aria-regiontype="3" tabindex="0" aria-label="交互区" aria-autolabel="true">
					<div class="crew-dialog-t">
						<ul class="dialog-tab clearfix">
							<li class="active" tabindex="0" role="tab" aria-haspopup="true" aria-owns="#page-memberLogin > div.box-login > div:nth-child(1)" aria-expandshowmethod="click" aria-enterownsmethod="1" setedaria="true" aria-ownsfor="[id='aria1curono1c68']" aria-sourceowns="true" id="ariafnixr5smoyo" aria-label="" aria-autolabel="true">
								<a class="link" href="${pageContext.request.contextPath}/" target="_top" tabindex="0"><i class="icon-aircraft" tabindex="0"></i>CH欢迎您，请注册</a></li>
						</ul>
					</div>
					<div class="box-login">
						<div class="login-sec show" id="aria1curono1c68" aria-owns="[id='ariafnixr5smoyo']" aria-autoowns="true" aria-popup="true">
							<div class="psw-login">
								
								<div class="row-form">
									<label class="input-box clearfix"><span class="input-box-info" tabindex="0"><i class="icon-user" tabindex="0"></i></span>
										<input id="username" type="text" class="input-box-area" placeholder="账号" tabindex="0">
									</label>
								</div>
								
								<div class="row-form">
									<label class="input-box clearfix"><span class="input-box-info" tabindex="0"><i class="icon-lock" tabindex="0"></i></span>
										<input id="password" maxlength="6" type="password" class="input-box-area" placeholder="密码" tabindex="0">
									</label>
								</div>
								
									<div class="row-form">
									<label class="input-box clearfix"><span class="input-box-info" tabindex="0"><i class="icon-user" tabindex="0"></i></span>
										<input id="password1" type="text" class="input-box-area" placeholder="重复密码" tabindex="0">
									</label>
								</div>
								
									<div class="row-form">
									<label class="input-box clearfix"><span class="input-box-info" tabindex="0"><i class="icon-user" tabindex="0"></i></span>
										<input id="name" type="text" class="input-box-area" placeholder="名字" tabindex="0">
									</label>
								</div>
								
									<div class="row-form">
									<label class="input-box clearfix"><span class="input-box-info" tabindex="0"><i class="icon-user" tabindex="0"></i></span>
										<input id="card" type="text" class="input-box-area" placeholder="身份证" tabindex="0">
									</label>
								</div>
								
								<div class="row-form">
									<label class="input-box clearfix"><span class="input-box-info" tabindex="0"><i class="icon-user" tabindex="0"></i></span>
										<input id="phone" type="text" class="input-box-area" placeholder="电话" tabindex="0">
									</label>
								</div>
								<div class="row-form">
									男<input type="radio" name="sex" class="sex" value="男" checked tabindex="0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									女<input type="radio" name="sex" class="sex" value="女" tabindex="0">
								</div>
								<div class="row-form"></div>

								<div class="btns">
									<a class="btn btn-white" href="javascript:;" onclick="toRegister();" tabindex="0">注册账号</a>
									<a id="Page_userLoginByPwd" class="btn btn-white item-btn" href="${pageContext.request.contextPath}/loginPage" target="_top" tabindex="0">登录</a>
								</div>
							</div>
							<div class="box-btn footer-box footer-font clearfix">
								<a class="link" href="${pageContext.request.contextPath}/" target="_top" tabindex="0">返回首页</a>
								<div class="quick-login">
									<!--<a class="link" href="https://xxx/hainanair/ibe/common/checkUserInfoRebackPw.do" tabindex="0">注册账号</a>-->
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>

	</body>
<script>

	function toRegister() {
		var username = document.getElementById("username").value;
		var password = document.getElementById("password").value;
		var password1 = document.getElementById("password1").value;
		var name = document.getElementById("name").value;
		var phone = document.getElementById("phone").value;
		var card = document.getElementById("card").value;
		var sexs = document.getElementsByClassName('sex');//取得radio的数组进行依次判断
		var sex = null;

		for (var i = 0; i < sexs.length; i++) {
			if (sexs[i].checked == true) {//如果选中，那么就弹出信息
				sex = sexs[i].value;
			}
		}

		//var patn = /^[A-Za-z0-9]+$/;
		if (username==""||username==null){
			alert("账号不能为空！");
			return false;
		}
		if (username.length<6){
			alert("账号长度不能小于6位字符！");
			return false;
		}
		if (password==""||password==null){
			alert("密码不能为空！");
			return false;
		}

		if (password.length<6){
			alert("密码长度不能小于6位字符！");
			return false;
		}
		if (password != password1) {
			alert("俩次密码不一样！");
			return false;
		}
		if (name==""||name==null){
			alert("名字不能为空！");
			return false;
		}

		if (phone.length!=11){
			alert("手机号码为11位数字！");
			return false;
		}
		if (card.length!=18){
			alert("身份证为18位字符！");
			return false;
		}

		$.ajax({
			url: "${pageContext.request.contextPath}/public/register",
			type: "post",
			data:{username:username,password:password,name:name,phone:phone,card:card,sex:sex},
			success: function (str) {
				if ("success"==str){
					alert("注册成功！请完善个人信息等待审核！")
					window.location.href="${pageContext.request.contextPath}/loginPage";
				}else {
					alert("注册失败！或者账号已经存在！")
				}
			},
			error:function (){
				alert("网络连接失败")
			}
		});
	}
</script>
</html>