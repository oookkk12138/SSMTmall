<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="parent">
	<a><img src="${pageContext.request.contextPath}/image/publicPage/logo.gif"></a>
	<div id="search">
		<div id="searching">
		<form method="post" action="${pageContext.request.contextPath}/product/showProductByName.do?start=0">
			<input type="text" placeholder="时尚男鞋 太阳镜" onfocus="this.placeholder=''" onblur="this.placeholder='时尚男鞋 太阳镜'" name="searchMessage">
			<button class="searchButton" type="submit">搜索</button>
		</form>
		</div>
		<div>
			<a href="${pageContext.request.contextPath}/category/showProducts.do?categoryId=5">平衡车</a>
			<p>
				<span>|</span>
			</p>
			<a href="${pageContext.request.contextPath}/category/showProducts.do?categoryId=6">扫地机器人</a>
			<p>
				<span>|</span>
			</p>
			<a href="${pageContext.request.contextPath}/category/showProducts.do?categoryId=7">原汁机</a>
			<p>
				<span>|</span>
			</p>
			<a href="${pageContext.request.contextPath}/category/showProducts.do?categoryId=8">冰箱</a>
		</div>
	</div>
</div>
    