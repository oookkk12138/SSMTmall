<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav id="nav">
	<a href="${pageContext.request.contextPath}/index.jsp">
		<div class="left">
			<span class="glyphicon glyphicon-home red"></span>天猫首页
		</div>
	</a> <span class="left">喵，欢迎来到天猫</span> <a
		href="${pageContext.request.contextPath}/jsp/anotherPage/login.jsp" id="loginA">
		<div class="left" id="login">请登录</div>
	</a> <a href="${pageContext.request.contextPath}/jsp/anotherPage/register.jsp" id="logout">
		<div class="left" id="register">免费注册</div>
	</a> <a href="${pageContext.request.contextPath}/order/showOrders.do">
		<div class="right" style="padding-right: 200px">我的订单</div>
	</a> <a href="${pageContext.request.contextPath}/orderItem/showShoppingCart.do">
		<div class="right">
			<span class="glyphicon glyphicon-shopping-cart red"></span>购物车<strong id="shoppingCartStrong">0</strong>件
		</div>
	</a>
</nav>