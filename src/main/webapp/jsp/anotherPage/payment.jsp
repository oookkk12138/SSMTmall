<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>付款</title>
<script src="${pageContext.request.contextPath}/js/jquery/2.0.0/jquery.min.js"></script>
<link href="${pageContext.request.contextPath}/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/bootstrap/3.3.6/bootstrap.min.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/navigation.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/anotherPage/payment.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/footerOne.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/footerTwo.css">
</head>
<body>

	<jsp:include page="/jsp/publicPage/navigation.jsp"></jsp:include>

	<div id="simpleLogo">
		<img src="${pageContext.request.contextPath}/image/anotherPage/simpleLogo.png">
	</div>
	<div id="center">
		<div id="saoYisao">
			<div>扫一扫付款(元)</div>
			<div><span><fmt:formatNumber type="number" value="${param.totalMoney}" pattern="0.00" maxFractionDigits="2"/></span></div>
		</div>
		<div id="QRCode">
			<img src="${pageContext.request.contextPath}/image/anotherPage/QRCode.png">
		</div>
		<div id="confirm">
			<form method="post" action="${pageContext.request.contextPath}/order/payment.do">
				<input type="hidden" value="${param.totalMoney}" name="totalMoney">
				<input type="hidden" value="${param.orderId}" name="orderId">
				<button>确认支付</button>
			</form>
		</div>
	</div>
	
	<jsp:include page="/jsp/publicPage/footerOne.jsp"></jsp:include>
	<jsp:include page="/jsp/publicPage/footerTwo.jsp"></jsp:include>
	
	<script src="${pageContext.request.contextPath}/js/publicPage/footerOne.js"></script>
	<script src="${pageContext.request.contextPath}/js/publicPage/footerTwo.js"></script>
	
<!-- 用于判断是否登录了，修改对应位置的字体和样式 -->
<script>
	var userName = "${sessionScope.user.name}";
	var orderItemNumber = "${sessionScope.orderItemNumber}";
	var login = document.getElementById("login");
	var register = document.getElementById("register");
	var logout = document.getElementById("logout");
	var loginA = document.getElementById("loginA");
	var shoppingCartStrong = document.getElementById("shoppingCartStrong");
		
	if(userName != ""){
		login.innerText = userName;
		shoppingCartStrong.innerText = orderItemNumber;
		shoppingCartStrong.style.color = "#c40000";
		login.style.color = "#c40000";
		register.innerText = "退出";
		loginA.removeAttribute("href");
		loginA.style.cursor = "default";
		logout.href = "${pageContext.request.contextPath}/user/logout.do";
	}
		
	logout.onclick = function(){
		if(login.innerText == ""){
			login.innerText = "请登录";
			register.innerText = "免费注册";
			logout.href = "${pageContext.request.contextPath}/jsp/anotherPage/register.jsp";
		}
	}
</script>
	
</body>
</html>