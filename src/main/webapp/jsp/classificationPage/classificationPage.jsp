<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>${category.name}</title>
<script src="${pageContext.request.contextPath}/js/jquery/2.0.0/jquery.min.js"></script>
<link href="${pageContext.request.contextPath}/css/bootstrap/3.3.6/bootstrap.min.css"
	rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/bootstrap/3.3.6/bootstrap.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/navigation.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/search.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/classificationPage/classificationPage.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/footerOne.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/footerTwo.css">
</head>
<body>

	<jsp:include page="/jsp/publicPage/navigation.jsp"></jsp:include>
	<jsp:include page="/jsp/publicPage/search.jsp"></jsp:include>

	<div id="background">
		<img src="${category.picture}">
		<div id="table-background">
			<table id="first">
				<tr>
					<td style="background: #f1edec;"><span id="sortByZongHe">综合<span
							class="glyphicon glyphicon-arrow-down"></span></span></td>
					<td><span id="sortByRenQi">人气<span
							class="glyphicon glyphicon-arrow-up"></span></span></td>
					<td><span id="sortByNewProduct">新品<span
							class="glyphicon glyphicon-arrow-up"></span></span></td>
					<td><span id="sortBySaleVolume">销量<span
							class="glyphicon glyphicon-arrow-up"></span></span></td>
					<td><span id="sortByMoney">价格<span
							class="glyphicon glyphicon-resize-vertical"></span></span></td>
				</tr>
			</table>

			<table id="second">
				<tr>
					<td width="200px"><input type="text" placeholder="请输入"
						id="begin"></td>
					<td width="50px"
						style="background: #f1edec; width: 10px; height: 15px; padding-deal: 3px;text-align:center;">-</td>
					<td width="200px"><input type="text" placeholder="请输入"
						id="end"></td>
					<td id="tips">输入价格区间后按Enter进行筛选</td>
				</tr>
			</table>
		</div>

		<div id="recommended-list">
			
			<c:forEach items="${category.products}" var="product" varStatus="status">
				<div class="commodity">
				<input type="hidden" value="${product.id}" class="productIdHidden">
				<input type="hidden" value="${product.stock}" class="productStockHidden">
				<input type="hidden" value="<fmt:formatDate value="${product.createDate}" pattern="yyyyMMddHHmmss"/>" class="productCreateDateHidden">
				<a href="${pageContext.request.contextPath}/product/showProduct.do?productId=${product.id}"> <span><img
						src="${product.fiveImages[0].bigImageUri}"
						class="topimg"></span>
				</a>
				<h4>￥<fmt:formatNumber type="number" value="${product.promotePrice}" pattern="0.00" maxFractionDigits="2"/></h4>
				<a href="${pageContext.request.contextPath}/product/showProduct.do?productId=${product.id}">
					<div id="productName"><p>${product.name}</p></div>
				</a> <a href=""> <span class="Tmall">天猫专卖</span>
				</a> <span class="deal">月成交<strong style="color: #b57c5b">${product.saleCount}</strong>笔
				</span> <span class="assess">评价<strong style="color: #3388bb">${fn:length(product.reviews)}</strong></span>
				<a href="#"> <span class="img"><img
						src="${pageContext.request.contextPath}/image/classificationPage/wangwang.png"></span>
				</a>
			</div>
			</c:forEach>

		</div>
	</div>

	<jsp:include page="/jsp/publicPage/footerOne.jsp"></jsp:include>
	<jsp:include page="/jsp/publicPage/footerTwo.jsp"></jsp:include>

	<script src="${pageContext.request.contextPath}/js/classificationPage/selectProduct.js"></script>
	<script src="${pageContext.request.contextPath}/js/classificationPage/sortByMoney.js"></script>
	<script src="${pageContext.request.contextPath}/js/classificationPage/sortBySaleVolume.js"></script>
	<script src="${pageContext.request.contextPath}/js/classificationPage/sortByNewProduct.js"></script>
	<script src="${pageContext.request.contextPath}/js/classificationPage/sortByZongHe.js"></script>
	<script src="${pageContext.request.contextPath}/js/classificationPage/sortByRenQi.js"></script>
	<script src="${pageContext.request.contextPath}/js/classificationPage/tdBackGround.js"></script>
	<script src="${pageContext.request.contextPath}/js/classificationPage/backgroundHeight.js"></script>
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