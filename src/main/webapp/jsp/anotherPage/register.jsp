<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>注册</title>
<script src="${pageContext.request.contextPath}/js/jquery/2.0.0/jquery.min.js"></script>
<link href="${pageContext.request.contextPath}/css/bootstrap/3.3.6/bootstrap.min.css"
	rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/bootstrap/3.3.6/bootstrap.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/navigation.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/search.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/anotherPage/register.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/footerOne.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/footerTwo.css">
</head>
<body>

	<jsp:include page="/jsp/publicPage/navigation.jsp"></jsp:include>
	<jsp:include page="/jsp/publicPage/search.jsp"></jsp:include>

	<div id="backgroundPic">
		<img src="${pageContext.request.contextPath}/image/anotherPage/login/loginBackground.png">
	</div>
	<form action="${pageContext.request.contextPath}/user/register.do" method="post">
		<div id="registerDiv">
			<div id="warning">用户名已被注册</div>
			<div id="settingName">设置会员名</div>
			<div id="left">
				<div class="leftDiv">登录名</div>
				<div class="leftDiv">
					<span style="font-weight: bold">设置登陆密码</span>
				</div>
				<div class="leftDiv">登陆密码</div>
				<div class="leftDiv">密码确认</div>
			</div>
			<div id="right">
				<div class="rightDiv">
					<input type="text" placeholder="会员名一旦设置成功,无法修改" id="firstInput"
						name="name">
				</div>
				<div class="rightDiv">登陆时验证,保护账号信息</div>
				<div class="rightDiv">
					<input type="text" placeholder="设置你的登陆密码" id="secondInput"
						name="password1">
				</div>
				<div class="rightDiv">
					<input type="text" placeholder="请再次输入你的密码" id="thirdInput"
						name="password2">
				</div>
			</div>
			<div style="clear: both"></div>
			<button id="submit">提交</button>
		</div>
	</form>
	
	<jsp:include page="/jsp/publicPage/footerOne.jsp"></jsp:include>
	<jsp:include page="/jsp/publicPage/footerTwo.jsp"></jsp:include>

	<script src="${pageContext.request.contextPath}/js/anotherPage/register.js"></script>
	<script src="${pageContext.request.contextPath}/js/publicPage/footerOne.js"></script>
	<script src="${pageContext.request.contextPath}/js/publicPage/footerTwo.js"></script>

<!-- 判断后台传过来的数据进行对应的信息显示 -->
<script>
	var name = "${name}";
	var password = "${password}";
	var userName = "${requestScope.user.name}";
	if(name == "error"){
		var warning = document.getElementById("warning");
		warning.innerText = "用户名不能为空";
		warning.style.visibility = "visible";
	}
	else if(password == "error"){
		var warning = document.getElementById("warning");
		warning.innerText = "密码不能为空";
		warning.style.visibility = "visible";
	}
	else if(userName != ""){
		var warning = document.getElementById("warning");
		warning.innerText = userName + "已被注册了";
		warning.style.visibility = "visible";
	}		
</script>

</body>
</html>