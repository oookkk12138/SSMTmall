<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>产品图片管理</title>
<script src="${pageContext.request.contextPath}/js/jquery/2.0.0/jquery.min.js"></script>
<link href="${pageContext.request.contextPath}/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/bootstrap/3.3.6/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/css/header.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/css/productImageManager.css">
</head>
<body>

	<jsp:include page="/admin/jsp/header.jsp"></jsp:include>

	<div id="background">
		<div>
			<div id="topNavigation">
				<ol class="breadcrumb">
  					<li><a href="${pageContext.request.contextPath}/admin/showCategory.do?start=0">分类管理</a></li>
  					<li><a href="#">${product.name}</a></li>
  					<li class="active">图片管理</li>
				</ol>
			</div>
		</div>

		<div id="leftDiv">
			<div id="leftTopDiv">
			<form  action="${pageContext.request.contextPath}/admin/addFiveImage.do" method="post" enctype="multipart/form-data">
				<input type="hidden" value="${param.productId}" name="productId">
				<table>
					<thead>
						<tr>
							<td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;新增<span style="color:blue">fiveImage</span>(详情区图片)</td>
						</tr>
					</thead>
					<tr>
						<td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;请选择本地图片 尺寸400*400为佳</td>
					</tr>
					<tr>
						<td colspan="2">&nbsp;&nbsp;<input type="file" name="picture" style="margin-left:20px;"></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><button id="submit" type="submit" class="btn-success">提交</button></td>
					</tr>
				</table>
				</form>
			</div>

			<div id="leftButtomDiv">
				<table class="table table-striped table-bordered table-hover  table-condensed">
				<thead>
					<tr class="success">
						<td>ID</td>
						<td>fiveImage</td>
						<td>删除</td>
					</tr>
				</thead>
				<c:forEach items="${product.fiveImages}" var="fiveImage">
					<tr>
						<td><span>${fiveImage.id}</span></td>
						<td><img src="${fiveImage.bigImageUri}" height="60px"></td>
						<td><a href="${pageContext.request.contextPath}/admin/deleteFiveImage.do?id=${fiveImage.id}&productId=${product.id}" onclick="return confirm('确定删除？')"><span class="glyphicon glyphicon-trash"></span></a></td>
					</tr>
				</c:forEach>
				</table>
			</div>
		</div>

		<div id="rightDiv">
			<div id="leftTopDiv">
			<form  action="${pageContext.request.contextPath}/admin/addSixImage.do" method="post" enctype="multipart/form-data">
				<input type="hidden" value="${param.productId}" name="productId">
				<table>
					<thead>
						<tr>
							<td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;新增<span style="color:blue">sixImage</span>(评论区图片)</td>
						</tr>
					</thead>
					<tr>
						<td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;请选择本地图片 尺寸400*400为佳</td>
					</tr>
					<tr>
						<td colspan="2">&nbsp;&nbsp;<input type="file" name="picture" style="margin-left:20px;"></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><button id="submit" type="submit" class="btn-success">提交</button></td>
					</tr>
				</table>
			</form>
			</div>
		

			<div id="leftButtomDiv">
				<table class="table table-striped table-bordered table-hover  table-condensed">
				<thead>
					<tr class="success">
						<td>ID</td>
						<td>sixImage</td>
						<td>删除</td>
					</tr>
				</thead>
				<c:forEach items="${product.sixImages}" var="sixImage">
					<tr>
						<td><span>${sixImage.id}</span></td>
						<td><img src="${sixImage.imageUri}" height="60px"></td>
						<td><a href="${pageContext.request.contextPath}/admin/deleteSixImage.do?id=${sixImage.id}&productId=${product.id}"><span class="glyphicon glyphicon-trash"></span></a></td>
					</tr>
				</c:forEach>
				</table>
			</div>
		</div>
	</div>
</body>

<!-- 显示各种提示信息 -->
<script>
	var message = "${param.message}";
	if(message == "success"){
		alert("添加图片完成");
	}
	if(message == "error"){
		alert("文件格式需要为jpg或png格式");
	}
</script>

</html>