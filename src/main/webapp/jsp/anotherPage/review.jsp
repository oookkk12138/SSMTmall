<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>评价</title>
<script src="${pageContext.request.contextPath}/js/jquery/2.0.0/jquery.min.js"></script>
<link href="${pageContext.request.contextPath}/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/bootstrap/3.3.6/bootstrap.min.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/navigation.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/anotherPage/review.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/footerOne.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/footerTwo.css">
</head>
<body>
	
	<jsp:include page="/jsp/publicPage/navigation.jsp"></jsp:include>
	
	<div id="background">
		<div id="pictureAndMessage">
			<div id="picture">
				<img src="${product.fiveImages[0].bigImageUri}">
			</div>
			<div id="message">
				<div id="messageName">${product.name}</div>
				<div id="detailMessage">
					<table>
						<tr>
							<td>价格：</td>
							<td>&nbsp;&nbsp;&nbsp;<span class="redFont">￥${product.promotePrice}</span>元</td>
						</tr>
						<tr>
							<td>配送：</td>
							<td>&nbsp;&nbsp;&nbsp;快递：0.00元</td>
						</tr>
						<tr>
							<td>月销量：</td>
							<td>&nbsp;&nbsp;&nbsp;<span class="redFont">${product.saleCount}</span>件</td>
						</tr>
					</table>
					<div id="orderMessage">
						<div id="ordermessageInner">
							<img src="${pageContext.request.contextPath}/image/anotherPage/reviewLight.png">
							<span id="imageTips">现在查看的是您所购买的商品的信息<br> 于<fmt:formatDate value="${order.payDate}" pattern="yyyy年MM月dd日"/>下单购买了此商品</span>
						</div>
					</div>
				</div>
			</div>
			<div style="clear:both"></div>

			<div id="review">累计评价<span>&nbsp;&nbsp;${total}</span></div>
			<div id="reviewButton">
			<form action="${pageContext.request.contextPath}/review/addreview.do" method="post">
			<!-- 用于与session的uuid比较，令牌值 -->
			<input type="hidden" name="request_uuid" value="uuid"/>
			<div id="buttonDiv">
				<input type="hidden" value="${product.id}" name="productId">
				<input type="hidden" value="${order.id}" name="orderId">
				<div id="first">
					<div id="tips">其他买家，需要你的建议哦！</div>
					<div id="inputReview">
						<div id="inputReviewLeft">评价商品</div>
						<div id="inputReviewRight">
							<textarea name="reviewValue" id="reviewValue"></textarea>
						</div>
					</div>
				</div>
				<div style="clear:both;"></div>
				<div id="second">
					<center>
						<input type="submit" value="提交评价" id="submit">
					</center>
				</div>
			</div>
			</form>
		</div>
		
		<div id="evaluation">
		<c:forEach items="${reviews}" var="review" varStatus="status">
			<div class="comments">
			<p>${review.content}</p>
			<span class="comments-left"><fmt:formatDate value="${review.createDate}" pattern="yyyy-MM-dd HH:mm:ss" /></span> <span
				class="comments-right">${review.user.anonymousName}<span style #cccccc;">
					(匿名)</span></span>
		</div>
		</c:forEach>	
		</div>
			
	</div>
</div>

	<jsp:include page="/jsp/publicPage/footerOne.jsp"></jsp:include>
	<jsp:include page="/jsp/publicPage/footerTwo.jsp"></jsp:include>

	<script src="${pageContext.request.contextPath}/js/anotherPage/reviewBackgroundHeight.js"></script>
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

<!-- 获取评论完成返回的信息 -->
<script>
	var submit = document.getElementById("submit");
	var buttonDiv = document.getElementById("buttonDiv");
	var reviewValue = document.getElementById("reviewValue");
	var evaluation = document.getElementById("evaluation");

	var addReviewSuccessful = "${addReviewSuccessful}";
	var addReviewFail = "${addReviewFail}";
	if(addReviewSuccessful == "addReviewSuccessful"){
		buttonDiv.style.display = "none";
		evaluation.style.display = "block";
		alert("提交评论成功");
	}
	if(addReviewFail == "addReviewFail"){
		buttonDiv.style.display = "none";
		evaluation.style.display = "block";
		alert("请勿重复提交评论");
	}
	
</script>

</body>
</html>