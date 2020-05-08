<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>填写信息</title>
<script src="${pageContext.request.contextPath}/js/jquery/2.0.0/jquery.min.js"></script>
<link href="${pageContext.request.contextPath}/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/bootstrap/3.3.6/bootstrap.min.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/navigation.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/search.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/anotherPage/settlement.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/footerOne.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/footerTwo.css">
</head>
<body>

	<jsp:include page="/jsp/publicPage/navigation.jsp"></jsp:include>
	<jsp:include page="/jsp/publicPage/search.jsp"></jsp:include>

	<form action="${pageContext.request.contextPath}/order/addOrder.do" method="post">
	<input type="hidden" value="${orderItem.id}" name="orderItemId">
	<input type="hidden" value="<fmt:formatNumber value="${product.promotePrice * number}" pattern="0.00" maxFractionDigits="2"/>" name="totalMoney" type="number">
	<div align="center">
		<div id="picture">
			<img src="${pageContext.request.contextPath}/image/anotherPage/simpleLogo.png">
			<img src="${pageContext.request.contextPath}/image/anotherPage/buyflow.png">
		</div>
		<div id="message">
			<div id="addressTop">输入收货地址</div>
			<table>
				<tr>
					<td>详细地址<span class="redStar">*</span></td>
					<td><textarea name="address" placeholder="建议您如实填写详细收货地址，例如接到名称，门牌号码" onfocus="this.placeholder=''" onblur="this.placeholder='建议您如实填写详细收货地址，例如接到名称，门牌号码'"></textarea></td>
				</tr>
				<tr>
					<td>邮政编码</td>
					<td><input type="text" name="post" placeholder="如果您不清楚邮递区号，请填写000" onfocus="this.placeholder=''" onblur="this.placeholder='如果您不清楚邮递区号，请填写000'"></td>
				</tr>
				<tr>
					<td>收货人姓名<span class="redStar">*</span></td>
					<td><input type="text" name="receiver" placeholder="长度不超过25个字符" onfocus="this.placeholder=''" onblur="this.placeholder='长度不超过25个字符'"></td>
				</tr>
				<tr>
					<td>手机号码<span class="redStar">*</span></td>
					<td><input type="text" name="mobile" placeholder="请输入11位手机号码" onfocus="this.placeholder=''" onblur="this.placeholder='请输入11位手机号码'"></td>
				</tr>
			</table>
		</div>
	</div>

	<div id="confirmOrder">确认订单</div>
	<div id="orderMessage" align="center">
		<table width="60%">
			<thead>
				<tr>
					<th style="text-align:left;">
						<img src="${pageContext.request.contextPath}/image/anotherPage/tmallbuy.png" id="tmallbuy">
						<a href="" class="marketLink">店铺:天猫店铺</a>
						<a href="" class="marketLink">
							<span class="wangwangGif"></span>
						</a></th>
					<th>单价</th>
					<th>数量</th>
					<th>小计</th>
					<th>配送方式</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td width="50%">
						<img src="${product.fiveImages[0].littleImageUri}" class="orderPic">
						<div class="detailOrder">
							<span>
							<a href="${pageContext.request.contextPath}/product/showProduct.do?productId=${product.id}">${product.name}</a>
							</span><br>
							<span class="littlePic">
								<img src="${pageContext.request.contextPath}/image/anotherPage/creditcard.png" title="支持信用卡支付" class="orderProductInfo">
								<img src="${pageContext.request.contextPath}/image/anotherPage/7day.png" title="消费者保障服务,承诺7天退货" class="orderProductInfo">
								<img src="${pageContext.request.contextPath}/image/anotherPage/promise.png" title="消费者保障服务,承诺如实描述" class="orderProductInfo">
							</span>
						</div>
					</td>
					<td width="10%"><fmt:formatNumber type="number" value="${product.promotePrice}" pattern="0.00" maxFractionDigits="2"/></td>
					<td width="5%">${number}</td>
					<td class="orderUnitSum" width="10%"><fmt:formatNumber type="number" value="${product.promotePrice * number}" pattern="0.00" maxFractionDigits="2"/></td>
					<td width="25%">
						<label>
							<input type="radio" checked="checked" value="">普通配送
						</label>
						<select>
							<option>快递 免邮费</option>
						</select>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	<div>
		<div id="leavingMessage">
			给卖家留言:
			<img src="${pageContext.request.contextPath}/image/anotherPage/leaveMessage.png" id="leavePic">
			<div class="flowright">店铺合计(含运费):<fmt:formatNumber type="number" value="${product.promotePrice * number}" pattern="0.00" maxFractionDigits="2"/></div>
			<div id="showNone">
				<textarea style="display:block" name="userMessage"></textarea>
				<div>还可以输入200个字符</div>
			</div>
		</div>
		<div style="clear:both;"></div>
		<div id="realLeavingMessage">
			<div class="flowright">实付款：<span id="money"><fmt:formatNumber type="number" value="${product.promotePrice * number}" pattern="0.00" maxFractionDigits="2"/></span></div>
			<div style="clear:both"></div>	
		<div>
			<button>提交订单</button>
		</div>
		</div>
	</div>
	</form>
	
	<jsp:include page="/jsp/publicPage/footerOne.jsp"></jsp:include>
	<jsp:include page="/jsp/publicPage/footerTwo.jsp"></jsp:include>
	
	<script src="${pageContext.request.contextPath}/js/anotherPage/settlement.js"></script>
	
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