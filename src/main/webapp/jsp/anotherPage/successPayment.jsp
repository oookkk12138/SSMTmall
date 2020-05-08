<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>支付完成</title>
<script src="${pageContext.request.contextPath}/js/jquery/2.0.0/jquery.min.js"></script>
<link href="${pageContext.request.contextPath}/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/bootstrap/3.3.6/bootstrap.min.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/navigation.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/search.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/anotherPage/successPayment.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/footerOne.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/footerTwo.css">
</head>
<body>

	<jsp:include page="/jsp/publicPage/navigation.jsp"></jsp:include>
	<jsp:include page="/jsp/publicPage/search.jsp"></jsp:include>

	<div id="all">
		<div id="head">
			<img src="${pageContext.request.contextPath}/image/anotherPage/paySuccess.png">
			<span>您已成功付款</span>
		</div>
		<div id="body">
			<ul>
				<li>收货地址：${order.address}</li>
				<li>实付款：<span>
<fmt:formatNumber type="number" value="${totalMoney}" pattern="0.00" maxFractionDigits="2"/></span></li>
				<li>预计：${date2}送达</li>
			</ul>
			<div id="choice">您可以
				<a href="${pageContext.request.contextPath}/order/showOrders.do">查看已买到的宝贝</a>
				<a href="${pageContext.request.contextPath}/order/showOrders.do">查看交易详情</a>
			</div>
		</div>
		<div id="dottedLine"></div>
		<div id="footer">
			<img src="${pageContext.request.contextPath}/image/anotherPage/warning.png">
			<span><b>安全提醒：</b>下单后，<span style="color:#c40000;font-weight:bold;">用QQ给您发送链接办理退款的都是骗子！</span>天猫不存在系统升级，订单异常等问题，谨防假冒客服电话诈骗！</span>
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