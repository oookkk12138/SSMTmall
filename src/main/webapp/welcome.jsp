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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/anotherPage/welcome.css">
</head>
<body>
	<div class="jumbotron">
  		<div class="container" align="center">
    	<h2 class="text-info" style="font-family:宋体;font-weight:bold;font-size:49px">天猫整站SSM</h2>
    	<br>
    	<div class="text-muted">
			<a href="https://how2j.cn/k/tmall_ssm/tmall_ssm-1399/1399.html?p=35052"  target="_blank" id="How2J">参考教程：How2J:天猫整站</a>
    	</div>
    	<br>
    	<br>
    	<p>
    		<a role="button" href="${pageContext.request.contextPath}/index.jsp" class="btn btn-success">进入前台展示页面
    		</a>
    		<a role="button" href="${pageContext.request.contextPath}/admin/jsp/index.jsp" class="btn btn-success">进入后台管理数据
    		</a>
    	</p>
		</div>
	</div>
</body>
</html>