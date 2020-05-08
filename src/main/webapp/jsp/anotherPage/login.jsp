<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>登录</title>
<script src="${pageContext.request.contextPath}/js/jquery/2.0.0/jquery.min.js"></script>
<link href="${pageContext.request.contextPath}/css/bootstrap/3.3.6/bootstrap.min.css"
	rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/bootstrap/3.3.6/bootstrap.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/anotherPage/logIn.css">
</head>
<body>
	<div id="tianmao">
		<img src="${pageContext.request.contextPath}/image/anotherPage/login/simpleLogo.png">
	</div>
	<div id="backgroundPic">
		<img src="${pageContext.request.contextPath}/image/anotherPage/login/loginBackground.png">
		<div id="logIn">
			<form action="${pageContext.request.contextPath}/user/login.do" method="post">
				<div id="warning">账号密码错误</div>
				<div id="title">账号登陆</div>
				<div id="accountNumber">
					<span id="accountNumberGlyphicon"> <span
						class="glyphicon glyphicon-user"></span>
					</span> <input type="text" placeholder="手机/会员名/邮箱" class="inputJS"
						id="namberJS" name="name">
				</div>
				<div id="password">
					<span id="passwordGlyphicon"> <span
						class="glyphicon glyphicon-lock"></span>
					</span> <input type="text" placeholder="密码" class="inputJS" id="passwordJS" name="password">
				</div>
				<div id="tis">
					<div id="leftFlow">
						<a href="${pageContext.request.contextPath}/jsp/anotherPage/findPassword.jsp">忘记登陆密码</a>
					</div>
					<div id="rightFlow">
						<a href="${pageContext.request.contextPath}/jsp/anotherPage/register.jsp">免费注册</a>
					</div>
				</div>
				<div style="clear: both"></div>
				<button class="btn btn-block redButton" type="submit">登陆</button>
			</form>
		</div>
	</div>
	<script src="${pageContext.request.contextPath}/js/anotherPage/logIn.js"></script>

<!-- 判断是否密码错误，若密码错误就显示出密码错误的字体 -->
<script>
	var login = "${message}";
	if(login == "error"){
		var warning = document.getElementById("warning");
		warning.style.visibility = "visible";
	}
</script>

</body>
</html>