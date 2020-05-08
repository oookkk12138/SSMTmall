<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>确认收货</title>
<script src="${pageContext.request.contextPath}/js/jquery/2.0.0/jquery.min.js"></script>
<link href="${pageContext.request.contextPath}/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/bootstrap/3.3.6/bootstrap.min.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/navigation.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/search.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/anotherPage/confirmReceipt.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/footerOne.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/footerTwo.css">
</head>
<body>

	<jsp:include page="/jsp/publicPage/navigation.jsp"></jsp:include>
	<jsp:include page="/jsp/publicPage/search.jsp"></jsp:include>

	<div id="confirmPageDiv">
		<div id="confirmPayPic">
			<img src="${pageContext.request.contextPath}/image/anotherPage/comformPayFlow.png">
			<div id="firstTime"><fmt:formatDate value="${order.createDate}" pattern="yyyy-MM-dd hh:mm:ss"/></div>
			<div id="secondTime"><fmt:formatDate value="${order.payDate}" pattern="yyyy-MM-dd hh:mm:ss"/></div>
			<div id="thirdTime"><fmt:formatDate value="${order.deliverDate}" pattern="yyyy-MM-dd hh:mm:ss"/></div>
		</div>
		<div id="confirmIConfirm">我已收到货,同意支付宝付款</div>
		<div id="orderInfo">订单信息</div>
		<div id="orderTableDiv">
			<table>
				<thead>
					<tr>
						<th colspan="2">宝贝</th>
						<th>单价</th>
						<th>数量</th>
						<th>商品总价</th>
						<th>运费</th>
					</tr>
					<tbody>
						<c:forEach items="${orderItems}" var="orderItem" varStatus="status">
						<tr>
							<td><img src="${products[status.count-1].fiveImages[0].bigImageUri}" width="50px"></td>
							<td>
								<a href="${pageContext.request.contextPath}/html/productPage/ProductPageServlet?productId=${products[status.count-1].id}">
									${products[status.count-1].name}
								</a>
							</td>
							<td>
￥<fmt:formatNumber type="number" value="${products[status.count-1].promotePrice}" pattern="0.00" maxFractionDigits="2"/></td>
							<td>${orderItem.number}</td>
							<td><span class="productPrice">￥<fmt:formatNumber type="number" value="${products[status.count-1].promotePrice * orderItem.number}" pattern="0.00" maxFractionDigits="2"/></span></td>
							<td>快递:0.00</td>
						</tr>
						</c:forEach>
					</tbody>
				</thead>
			</table>
		</div>
		<div id="rightFlow">
			<span>实付款： <b> ￥<fmt:formatNumber type="number" value="${totalMoney}" pattern="0.00" maxFractionDigits="2"/></b></span>
		</div>
	</div>
	<div style="clear:both"></div>

	<div id="detailedInfo">
		<table>
			<tr>
				<td>订单编号:</td>
				<td>${order.orderCode}
					<img src="${pageContext.request.contextPath}/image/anotherPage/confirmOrderTmall.png">
				</td>
			</tr>
			<tr>
				<td>卖家昵称:</td>
				<td>天猫商铺
					<a href=""><span class="confirmPayOrderDetailWangWangGif"></span></a>
				</td>
			</tr>
			<tr>
				<td>收货信息:</td>
				<td>${order.address} ${order.mobile} ${order.post}</td>
			</tr>
			<tr>
				<td>成交时间:</td>
				<td><fmt:formatDate value="${confirmDate}" pattern="yyyy-MM-dd hh:mm:ss"/></td>
			</tr>
		</table>
		<div id="surePay">
			<div id="confirmPayWanging">请收到货后，再确认收货！否则您可能钱货两空！</div>
			<div><button onclick="jump();">确认支付</button></div>
		</div>
	</div>
	
	<jsp:include page="/jsp/publicPage/footerOne.jsp"></jsp:include>
	<jsp:include page="/jsp/publicPage/footerTwo.jsp"></jsp:include>
	
	<script src="${pageContext.request.contextPath}/js/publicPage/footerOne.js"></script>
	<script src="${pageContext.request.contextPath}/js/publicPage/footerTwo.js"></script>
	
</body>

<!-- 点击确认支付跳转页面 -->
<script>
	var jump = function(){
		window.location.href = "${pageContext.request.contextPath}/jsp/anotherPage/finishPayment.jsp";
	}
</script>
	
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

</html>