<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>产品属性管理</title>
<script src="${pageContext.request.contextPath}/js/jquery/2.0.0/jquery.min.js"></script>
<link href="${pageContext.request.contextPath}/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/bootstrap/3.3.6/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/css/header.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/css/productPropertyManager.css">
</head>
<body>

	<jsp:include page="/admin/jsp/header.jsp"></jsp:include>

	<div id="background">
		<div id="topNavigation">
			<ol class="breadcrumb">
  				<li><a href="${pageContext.request.contextPath}/admin/showCategory.do?start=0">分类管理</a></li>
  				<li><a href="${pageContext.request.contextPath}/admin/propertyValueManage.do?productId=${product.id}&categoryId=${categoryId}">${product.name}</a></li>
  				<li class="active">商品属性值管理 </li>
			</ol>
		</div>
		
		<div id="tableDiv">
			<form method="get" action="${pageContext.request.contextPath}/admin/updatePropertyValue.do">
				<input type="hidden" value="${product.id}" name="productId">
				<input type="hidden" value="${categoryId}" name="categoryId">
				<table>
					<tr>
						<c:forEach items="${properties}" var="property" varStatus="status" begin="0" end="1">
							<input type="hidden" value="${property.id}" name="propertyId">
							<td style="font-weight:bold">${property.name}：</td>
							<td><input name="value" type="text" value="${propertyValues[status.count-1+0].value}"></td>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach items="${properties}" var="property" varStatus="status" begin="2" end="3">
							<input type="hidden" value="${property.id}" name="propertyId">
							<td style="font-weight:bold">${property.name}：</td>
							<td><input type="text" name="value" value="${propertyValues[status.count-1+2].value}"></td>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach items="${properties}" var="property" varStatus="status" begin="4" end="5">
							<input type="hidden" value="${property.id}" name="propertyId">
							<td style="font-weight:bold">${property.name}：</td>
							<td><input type="text" name="value" value="${propertyValues[status.count-1+4].value}"></td>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach items="${properties}" var="property" varStatus="status" begin="6" end="7">
							<input type="hidden" value="${property.id}" name="propertyId">
							<td style="font-weight:bold">${property.name}：</td>
							<td><input type="text" name="value" value="${propertyValues[status.count-1+6].value}"></td>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach items="${properties}" var="property" varStatus="status" begin="8" end="9">
							<input type="hidden" value="${property.id}" name="propertyId">
							<td style="font-weight:bold">${property.name}：</td>
							<td><input type="text" name="value" value="${propertyValues[status.count-1+8].value}"></td>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach items="${properties}" var="property" varStatus="status" begin="10" end="11">
							<input type="hidden" value="${property.id}" name="propertyId">
							<td style="font-weight:bold">${property.name}：</td>
							<td><input type="text" name="value" value="${propertyValues[status.count-1+10].value}"></td>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach items="${properties}" var="property" varStatus="status" begin="12" end="13">
							<input type="hidden" value="${property.id}" name="propertyId">
							<td style="font-weight:bold">${property.name}：</td>
							<td><input type="text" name="value" value="${propertyValues[status.count-1+12].value}"></td>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach items="${properties}" var="property" varStatus="status" begin="14" end="15">
							<input type="hidden" value="${property.id}" name="propertyId">
							<td style="font-weight:bold">${property.name}：</td>
							<td><input type="text" name="value" value="${propertyValues[status.count-1+14].value}"></td>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach items="${properties}" var="property" varStatus="status" begin="16" end="17">
							<input type="hidden" value="${property.id}" name="propertyId">
							<td style="font-weight:bold">${property.name}：</td>
							<td><input type="text" name="value" value="${propertyValues[status.count-1+16].value}"></td>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach items="${properties}" var="property" varStatus="status" begin="18" end="19">
							<input type="hidden" value="${property.id}" name="propertyId">
							<td style="font-weight:bold">${property.name}：</td>
							<td><input type="text" name="value" value="${propertyValues[status.count-1+18].value}"></td>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach items="${properties}" var="property" varStatus="status" begin="20" end="21">
							<input type="hidden" value="${property.id}" name="propertyId">
							<td style="font-weight:bold">${property.name}：</td>
							<td><input type="text" name="value" value="${propertyValues[status.count-1+20].value}"></td>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach items="${properties}" var="property" varStatus="status" begin="22" end="23">
							<input type="hidden" value="${property.id}" name="propertyId">
							<td style="font-weight:bold">${property.name}：</td>
							<td><input type="text" name="value" value="${propertyValues[status.count-1+22].value}"></td>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach items="${properties}" var="property" varStatus="status" begin="24" end="25">
							<input type="hidden" value="${property.id}" name="propertyId">
							<td style="font-weight:bold">${property.name}：</td>
							<td><input type="text" name="value" value="${propertyValues[status.count-1+24].value}"></td>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach items="${properties}" var="property" varStatus="status" begin="26" end="27">
							<input type="hidden" value="${property.id}" name="propertyId">
							<td style="font-weight:bold">${property.name}：</td>
							<td><input type="text" name="value" value="${propertyValues[status.count-1+26].value}"></td>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach items="${properties}" var="property" varStatus="status" begin="28" end="29">
							<input type="hidden" value="${property.id}" name="propertyId">
							<td style="font-weight:bold">${property.name}：</td>
							<td><input type="text" name="value" value="${propertyValues[status.count-1+28].value}"></td>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach items="${properties}" var="property" varStatus="status" begin="30" end="31">
							<input type="hidden" value="${property.id}" name="propertyId">
							<td style="font-weight:bold">${property.name}：</td>
							<td><input name="value" type="text"  value="${propertyValues[status.count-1+30].value}"></td>
						</c:forEach>
					</tr>
					
					<tr>
						<td colspan="4"><button type="submit" class="btn-success">确认修改</button></td>
					</tr>
				</table>
			</form>
		</div>


	</div>
</body>
</html>