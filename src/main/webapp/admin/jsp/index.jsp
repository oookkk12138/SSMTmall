<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>天猫后台首页</title>
<script src="${pageContext.request.contextPath}/js/jquery/2.0.0/jquery.min.js"></script>
<link href="${pageContext.request.contextPath}/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/bootstrap/3.3.6/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/css/header.css">
</head>
<body>

	<jsp:include page="/admin/jsp/header.jsp"></jsp:include>

	<div class="jumbotron">
  		<div class="container" align="center">
    	<h2 class="text-info" style="font-family:宋体;font-weight:bold;font-size:49px">天猫后台管理系统</h2>
    	<br>
    	<div class="text-muted">与世界分享你的逼格</div>
    	<br>
    	<br>
    	<p><a role="button" href="${pageContext.request.contextPath}/admin/showCategory.do?start=0" class="btn btn-success">进入系统</a></p>
		</div>
	</div>
</body>
</html>