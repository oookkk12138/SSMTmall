//获取order
var order = document.getElementsByClassName("order");
//获取所有订单的span
var allOrders = document.getElementById("allOrders");
//获取待付款的span
var pendingPayment = document.getElementById("pendingPayment");
//获取待发货的span
var pendingShip = document.getElementById("pendingShip");
//获取待收货的span
var pendingReceive = document.getElementById("pendingReceive");
//获取待评价的span
var pendingAssess = document.getElementById("pendingAssess");

//点击所有订单span(显示所有的order)
allOrders.onclick = function(){
	for(var i = 0;i < order.length;i++){
		order[i].style.display = "block";
	}
	allOrders.style.color = "#c40000";
	pendingPayment.style.color = "black";
	pendingShip.style.color = "black";
	pendingReceive.style.color = "black"
	pendingAssess.style.color = "black";
	return false;
}

//点击待付款span
pendingPayment.onclick = function(){
	for(var i = 0;i < order.length;i++){
		order[i].style.display = "block";
	}

	for(var i = 0;i < order.length;i++){
		var operation = order[i].getElementsByClassName("operation")[0];
		if(operation.innerText != "付款"){
			order[i].style.display = "none";
		}
	}
	allOrders.style.color = "black";
	pendingPayment.style.color = "#c40000";
	pendingShip.style.color = "black";
	pendingReceive.style.color = "black";
	pendingAssess.style.color = "black";
	return false;
}

//点击待发货span
pendingShip.onclick = function(){
	for(var i = 0;i < order.length;i++){
		order[i].style.display = "block";
	}

	for(var i = 0;i < order.length;i++){
		var operation = order[i].getElementsByClassName("operation")[0];
		if(operation.innerText != "催卖家发货"){
			order[i].style.display = "none";
		}
	}
	allOrders.style.color = "black";
	pendingPayment.style.color = "black";
	pendingShip.style.color = "#c40000";
	pendingReceive.style.color = "black";
	pendingAssess.style.color = "black";
	return false;
}

//点击待收货span
pendingReceive.onclick = function(){
	for(var i = 0;i < order.length;i++){
		order[i].style.display = "block";
	}

	for(var i = 0;i < order.length;i++){
		var operation = order[i].getElementsByClassName("operation")[0];
		if(operation.innerText != "确认收货"){
			order[i].style.display = "none";
		}
	}
	allOrders.style.color = "black";
	pendingPayment.style.color = "black";
	pendingShip.style.color = "black";
	pendingReceive.style.color = "#c40000";
	pendingAssess.style.color = "black";
	return false;
}

//点击待评价span
pendingAssess.onclick = function(){
	for(var i = 0;i < order.length;i++){
		order[i].style.display = "block";
	}
		
	for(var i = 0;i < order.length;i++){
		var operation = order[i].getElementsByClassName("operation")[0];
		if(operation.innerText != "评价"){
			order[i].style.display = "none";
		}
	}
	allOrders.style.color = "black";
	pendingPayment.style.color = "black";
	pendingShip.style.color = "black";
	pendingReceive.style.color = "black"
	pendingAssess.style.color = "#c40000";
	return false;
}