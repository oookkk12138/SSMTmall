<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>购物车</title>
<script src="${pageContext.request.contextPath}/js/jquery/2.0.0/jquery.min.js"></script>
<link href="${pageContext.request.contextPath}/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/bootstrap/3.3.6/bootstrap.min.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/navigation.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/search.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/anotherPage/shoppingCart.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/footerOne.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/footerTwo.css">
</head>
<body>

	<jsp:include page="/jsp/publicPage/navigation.jsp"></jsp:include>
	<jsp:include page="/jsp/publicPage/search.jsp"></jsp:include>

<div id="background">
<form action="${pageContext.request.contextPath}/orderItem/payForShoppingCart.do" method="get">
	<div id="topDiv">
		<table>
			<thead>
				<tr>
					<td>
						<img src="${pageContext.request.contextPath}/image/anotherPage/cartNotSelected.png" class="cartNotSelected" id="TreadCartNotSelected">
						<img src="${pageContext.request.contextPath}/image/anotherPage/cartSelected.png" class="cartSelected" id="TreadCartSelected">
						全选
					</td>
					<td>商品信息</td>
					<td>单价</td>
					<td>数量</td>
					<td>金额</td>
					<td>操作</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${orderItems}" var="orderItem" varStatus="status">
					<tr>
						<input class="inputHidden" type="hidden" value="${orderItem.id}">
						<td>
							<img src="${pageContext.request.contextPath}/image/anotherPage/cartSelected.png" class="cartSelected">
							<img src="${pageContext.request.contextPath}/image/anotherPage/cartNotSelected.png" class="cartNotSelected" onclick="clickCartNotSelected();">
							<img src="${products[status.count-1].fiveImages[0].bigImageUri}" class="commodityImage">
						</td>
						<td>
							<a href="">
								<span>${products[status.count-1].name }</span>
							</a>
							<div id="images">
								<span>
									<img src="${pageContext.request.contextPath}/image/anotherPage/creditcard.png" title="支持信用卡支付">
								</span>
								<span>
									<img src="${pageContext.request.contextPath}/image/anotherPage/7day.png" title="消费者保障服务,承诺7天退货">
								</span>
								<span>
									<img src="${pageContext.request.contextPath}/image/anotherPage/promise.png" title="消费者保障服务,承诺如实描述">
								</span>
							</div>
						</td>
						<td>
							<div id="oldPrice">
								<span><fmt:formatNumber type="number" value="${products[status.count-1].orignalPrice}" pattern="0.00" maxFractionDigits="2"/></span>
							</div>
							<div class="newPrice"><fmt:formatNumber type="number" value="${products[status.count-1].promotePrice}" pattern="0.00" maxFractionDigits="2"/></div>
						</td>
						<td>
							<div id="inputBtn">
								<a href="" class="decrease">-</a>
								<input type="text" value="${orderItem.number}" class="inputnum" onblur="if(this.value=='') value=${orderItem.number};" name="inputNumberValue">
								<a href="" class="increase">+</a>
							</div>
						</td>
						<td>
							<span class="total"><fmt:formatNumber type="number" value="${products[status.count-1].promotePrice}" pattern="0.00" maxFractionDigits="2"/></span>
						</td>
						<td>
							<a href="${pageContext.request.contextPath}/orderItem/deleteFromShoppingCart.do?orderItemId=${orderItem.id}" style="text-decoration:none;"><span>删除</span></a>
						</td>
					</tr>
					<!-- 这是第一个商品 -->
				</c:forEach>

			</tbody>
		</table>
	</div>

	<div id="bottomDiv">
		<span id="left">
			<img src="${pageContext.request.contextPath}/image/anotherPage/cartNotSelected.png" class="cartNotSelected" id="divCartNotSelected">
			<img src="${pageContext.request.contextPath}/image/anotherPage/cartSelected.png" class="cartSelected" id="divCartSelected">
			全选
		</span>
		<span id="right">
			已选商品 <span style="color:#c40000;font-weight:bold;font-size:16px;" id="commodityNumber">0</span> 件 合计 (不含运费): <span style="color:#c40000;font-weight:bold;font-size:20px;margin-right:20px;" id="buttomMoneySpan">￥0.00</span>
			<button id="buttomButton" disabled="disabled">结算</button>
		</span>
	</div>
	</form>
</div>

	<jsp:include page="/jsp/publicPage/footerOne.jsp"></jsp:include>
	<jsp:include page="/jsp/publicPage/footerTwo.jsp"></jsp:include>
	
	<script src="${pageContext.request.contextPath}/js/publicPage/footerOne.js"></script>
	<script src="${pageContext.request.contextPath}/js/publicPage/footerTwo.js"></script>

</body>

<script>
//右下角的价格span
var buttomMoneySpan = document.getElementById("buttomMoneySpan");
//表格头的没钩的图片
var TreadCartNotSelected = document.getElementById("TreadCartNotSelected");
//表格头的有钩的图片
var TreadCartSelected = document.getElementById("TreadCartSelected");
//获取最下面div中的没钩的图片
var divCartNotSelected = document.getElementById("divCartNotSelected");
//获取最下面div中的有钩的图片
var divCartSelected = document.getElementById("divCartSelected");
//所有没钩的图片
var cartNotSelected = document.getElementsByClassName("cartNotSelected");
//所有有钩的图片
var cartSelected = document.getElementsByClassName("cartSelected");
//tbody中的tr集合
var tbodyTr = document.getElementsByTagName("tbody")[0].getElementsByTagName("tr");
//右下角的button
var buttomButton = document.getElementById("buttomButton");
//获取数量框中的数量值
var inputnum = document.getElementsByClassName("inputnum");
//获取每一个tr中的价格
var total = document.getElementsByClassName("total");
//获取下面已选商品的那个span
var commodityNumber = document.getElementById("commodityNumber");
//获取newprice
var newPrice = document.getElementsByClassName("newPrice");
//获取隐藏的input
var inputHidden = document.getElementsByClassName("inputHidden");

//把El中的product的库存保存到js的数组中(因为el表达式取不到js的变量)
var ProductArray = new Array(${fn:length(products)});
//这个变量作为此数组的下标
var ProductArrayI = 0;
<c:forEach items="${products}" var="product" varStatus="status">
	ProductArray[ProductArrayI] = ${product.stock};
	ProductArrayI++;
</c:forEach>

//thread中点击没钩的图片
TreadCartNotSelected.onclick = function(){
	if(tbodyTr.length != 0){
		//修改右下角的button
		buttomButton.style.background = "#c40000";
		buttomButton.removeAttribute("disabled");
		//把tbody中的tr颜色改变
		for(var i = 0;i < tbodyTr.length;i++){
			tbodyTr[i].style.background = "#FFF8E1";
		}
		//把所有有钩的图片显示
		for(var i = 0;i < cartSelected.length;i++){
			cartSelected[i].style.visibility = "visible";
		}
		//修改右上角的span值和右下角的span值和右下角的数量值
		var sumNumber = 0;
		var sumMoney = 0;
		for(var i = 0;i < tbodyTr.length;i++){
			var inputnumValue = inputnum[i].value;
			var totalValue = newPrice[i].innerText;
			totalValue = totalValue.replace("￥","");
			sumNumber = parseFloat(sumNumber) + parseFloat(inputnumValue);
			sumMoney = (inputnumValue * totalValue) + sumMoney;
			inputHidden[i].setAttribute("name","orderItemId");
		}
		commodityNumber.innerText = sumNumber;
		buttomMoneySpan.innerText = "￥" + sumMoney.toFixed(2);
	}
}

//thread中点击有钩的图片
TreadCartSelected.onclick = function(){
	//修改右下角的button
	buttomButton.style.background = "#AAAAAA";
	buttomButton.setAttribute("disabled","disabled");
	//把tbody中的tr颜色改变
	for(var i = 0;i < tbodyTr.length;i++){
		tbodyTr[i].style.background = "white";
		inputHidden[i].removeAttribute("name");
	}
	//把所有有钩的图片隐藏
	for(var i = 0;i < cartSelected.length;i++){
		cartSelected[i].style.visibility = "hidden";
	}
	//修改右上角的span值和右下角的span值和右下角的数量值
	commodityNumber.innerText = "0";
	buttomMoneySpan.innerText = "￥" + "0.00";
	
}

//点击最下面div中没钩的图片
divCartNotSelected.onclick = function(){
	if(tbodyTr.length != 0){
		//修改右下角的button
		buttomButton.style.background = "#c40000";
		buttomButton.removeAttribute("disabled");
		//把tbody中的tr颜色改变
		for(var i = 0;i < tbodyTr.length;i++){
			tbodyTr[i].style.background = "#FFF8E1";
		}
		//把所有有钩的图片显示
		for(var i = 0;i < cartSelected.length;i++){
			cartSelected[i].style.visibility = "visible";
		}
		//修改右上角的span值和右下角的span值和右下角的数量值
		var sumNumber = 0;
		var sumMoney = 0;
		for(var i = 0;i < tbodyTr.length;i++){
			var inputnumValue = inputnum[i].value;
			var totalValue = newPrice[i].innerText;
			totalValue = totalValue.replace("￥","");
			sumNumber = parseFloat(sumNumber) + parseFloat(inputnumValue);
			sumMoney = (inputnumValue * totalValue) + sumMoney;
			inputHidden[i].setAttribute("name","orderItemId");
		}
		commodityNumber.innerText = sumNumber;
		buttomMoneySpan.innerText = "￥" + sumMoney.toFixed(2);
	}
}

//点击最下面div中有钩的图片
divCartSelected.onclick = function(){
	//修改右下角的button
	buttomButton.style.background = "#AAAAAA";
	buttomButton.setAttribute("disabled","disabled");
	//把tbody中的tr颜色改变
	for(var i = 0;i < tbodyTr.length;i++){
		tbodyTr[i].style.background = "white";
		inputHidden[i].removeAttribute("name");
	}
	//把所有有钩的图片隐藏
	for(var i = 0;i < cartSelected.length;i++){
		cartSelected[i].style.visibility = "hidden";
	}
	//修改右上角的span值和右下角的span值和右下角的数量值
	commodityNumber.innerText = "0";
	buttomMoneySpan.innerText = "￥" + "0.00";
}



//把每一行的数量值放到map中
var mapNumber = new Map();
for(var i = 0;i < tbodyTr.length;i++){
	mapNumber.set(i,0);
}
//把每一行的money值保存到map中
var mapMoney = new Map();
for(var i = 0;i < tbodyTr.length;i++){
	mapMoney.set(i,0);
}

//焦点移入时，控制数量不能大于库存容量
for(var i= 0;i < inputnum.length;i++){
	inputnum[i].onfocus = function(o){
		return function(){
			inputnum[o].value = "";
			if("oninput" in inputnum[o]){
				//支持谷歌等浏览器
		 		inputnum[o].addEventListener("input",getWord,false);
		 	}else{
				//支持IE浏览器
	    		inputnum[o].onpropertychange = getWord;
			}
			function getWord(){
				if(inputnum[o].value == ""){
					
				}
				if(inputnum[o].value > ProductArray[o]) {
					inputnum[o].value = ProductArray[o];
				}
				if(inputnum[o].value < 1 || isNaN(inputnum[o].value)) {
					inputnum[o].value = 1;
	    		}
	    		if(inputnum[o].value >= 1 && inputnum[o].value <= ProductArray[o]){
	    			//修改右上角的span值和右下角的span值和右下角的数量值
					var inputnumValue = inputnum[o].value;
					var totalValue = newPrice[o].innerText;
					totalValue = totalValue.replace("￥","");
					total[o].innerText = "￥" + totalValue * inputnumValue;
					mapNumber.set(o,inputnumValue);
					mapMoney.set(o,totalValue);
					//这两个变量用于遍历
					var number = 0;
					var money = 0.00;
      				//修改右上角的span值和右下角的span值和右下角的数量值
      				for(var j = 0;j < tbodyTr.length;j++){
      					if(cartSelected[1 + j].style.visibility == "visible"){
      						var inputnumValue = inputnum[j].value;
      						number = parseFloat(number) + parseFloat(inputnumValue);
      						var totalValue = newPrice[j].innerText;
							totalValue = totalValue.replace("￥","");
							total[j].innerText = "￥" + (totalValue * inputnumValue).toFixed(2);
      						money = money + parseFloat(inputnumValue) * parseFloat(totalValue);
      					}
      				}
      				commodityNumber.innerText = number;
      				buttomMoneySpan.innerText = "￥" + money.toFixed(2);
	    		}
	    	}
		}
	}(i);			
}

//点击每一个tr中没钩的图片
for(var i = 0;i < tbodyTr.length;i++){
  cartNotSelected[1 + i].onclick = function(o){
    return function(){
    	inputHidden[o].setAttribute("name","orderItemId");
    	//修改右下角的button
		buttomButton.style.background = "#c40000";
		buttomButton.removeAttribute("disabled");
    	//这两个变量用于遍历
    	var number = 0;
    	var money = 0.00;
      	//把本列有钩的图片显示
      	cartSelected[1 + o].style.visibility = "visible";
      	//修改本列中的背景色
      	tbodyTr[o].style.background = "#FFF8E1";
      	//修改右上角的span值和右下角的span值和右下角的数量值
      	for(var j = 0;j < tbodyTr.length;j++){
      		if(cartSelected[1 + j].style.visibility == "visible"){
      			var inputnumValue = inputnum[j].value;
      			number = parseFloat(number) + parseFloat(inputnumValue);
      			var totalValue = newPrice[j].innerText;
				totalValue = totalValue.replace("￥","");
				total[j].innerText = "￥" + (totalValue * inputnumValue).toFixed(2);
      			money = money + parseFloat(inputnumValue) * parseFloat(totalValue);
      			
      		}
      	}
      	commodityNumber.innerText = number;
      	buttomMoneySpan.innerText = money.toFixed(2);
    }
  }(i);
}

//点击每一个tr中有钩的图片(通过mapSumNumber的关系去修改)
for(var i = 0;i < tbodyTr.length;i++){
	cartSelected[1 + i].onclick = function(o){
		return function(){
			inputHidden[o].removeAttribute("name");
			//把本行有钩的图片隐藏
      		cartSelected[1 + o].style.visibility = "hidden";
      		//修改本列中的背景色
      		tbodyTr[o].style.background = "white";
      		//此变量用于判断trbody中是否还有钩的图片
      		var selectedNumber = true;
      		//这两个变量用于遍历
			var number = 0;
			var money = 0.00;
      		//修改右上角的span值和右下角的span值和右下角的数量值
      		for(var j = 0;j < tbodyTr.length;j++){
      			if(cartSelected[1 + j].style.visibility == "visible"){
      				var inputnumValue = inputnum[j].value;
      				number = parseFloat(number) + parseFloat(inputnumValue);
      				var totalValue = newPrice[j].innerText;
					totalValue = totalValue.replace("￥","");
					total[j].innerText = "￥" + (totalValue * inputnumValue).toFixed(2);
      				money = money + parseFloat(inputnumValue) * parseFloat(totalValue);
      				//有至少一个钩就是false
      				selectedNumber = false;
      			}
      		}
      		commodityNumber.innerText = number;
      		buttomMoneySpan.innerText = "￥" + money.toFixed(2);
      		if(selectedNumber){
      			//修改右下角的button
				buttomButton.style.background = "#AAAAAA";
				buttomButton.setAttribute("disabled","disabled");
      		}
		}
	}(i);
}	

//获取+的按钮并且处理+的onclick事件
var increases = document.getElementsByClassName("increase");
for(var i = 0;i < increases.length;i++){
	increases[i].onclick = function(o){
		return function(){
			if(inputnum[o].value < ProductArray[o]){
      			//点击+按钮就把数值+1
				var inputnumValue = inputnum[o].value;
				inputnum[o].value = parseInt(inputnumValue) + parseInt(1);
				//这两个变量用于遍历
				var number = 0;
				var money = 0.00;
      			//修改右上角的span值和右下角的span值和右下角的数量值
      			for(var j = 0;j < tbodyTr.length;j++){
      				if(cartSelected[1 + j].style.visibility == "visible"){
      					var inputnumValue = inputnum[j].value;
      					number = parseFloat(number) + parseFloat(inputnumValue);
      					var totalValue = newPrice[j].innerText;
						totalValue = totalValue.replace("￥","");
						total[j].innerText = "￥" + (totalValue * inputnumValue).toFixed(2);
      					money = money + parseFloat(inputnumValue) * parseFloat(totalValue);
      				}
      			}
      			commodityNumber.innerText = number;
      			buttomMoneySpan.innerText = "￥" + money.toFixed(2);
			}else{
				alert("所选数量不能大于库存数量");
			}
			return false;
		}
	}(i);
}

//获取-的按钮并且处理-的onclick事件
var decreases = document.getElementsByClassName("decrease");
for(var i = 0;i < decreases.length;i++){
	decreases[i].onclick = function(o){
		return function(){
			if(inputnum[o].value > 1){
      			//点击+按钮就把数值+1
				var inputnumValue = inputnum[o].value;
				inputnum[o].value = parseInt(inputnumValue) - parseInt(1);
				//这两个变量用于遍历
				var number = 0;
				var money = 0.00;
      			//修改右上角的span值和右下角的span值和右下角的数量值
      			for(var j = 0;j < tbodyTr.length;j++){
      				if(cartSelected[1 + j].style.visibility == "visible"){
      					var inputnumValue = inputnum[j].value;
      					number = parseFloat(number) + parseFloat(inputnumValue);
      					var totalValue = newPrice[j].innerText;
						totalValue = totalValue.replace("￥","");
						total[j].innerText = "￥" + (totalValue * inputnumValue).toFixed(2);
      					money = money + parseFloat(inputnumValue) * parseFloat(totalValue);
      				}
      			}
      			commodityNumber.innerText = number;
      			buttomMoneySpan.innerText = "￥" + money.toFixed(2);
			}else{
				alert("所选数量不能小于1");
			}
			return false;
		}
	}(i);
}
</script>

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

</html>