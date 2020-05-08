<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="header">
	<img src="${pageContext.request.contextPath}/admin/image/tmallbuy.png">
	<div id="topSpan">
		<a href="${pageContext.request.contextPath}/admin/jsp/index.jsp">
			<span>天猫后台</span>
		</a>
		<a href="${pageContext.request.contextPath}/admin/showCategory.do?start=0">
			<span>分类管理</span>
		</a>
		<a href="${pageContext.request.contextPath}/admin/showUser.do?start=0">
			<span>用户管理</span>
		</a>
		<a href="${pageContext.request.contextPath}//admin/showOrder.do?start=0">
			<span>订单管理</span>
		</a>
	</div>
</div>