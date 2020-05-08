//人气排序以商品库存排序
var sortByRenQi = document.getElementById("sortByRenQi");
var commodity =document.getElementsByClassName("commodity");
var commodityNumber = commodity.length;
var recommendedList = document.getElementById("recommended-list");
var listCommodity = new Array(commodity.length);
var productStockHiddens = document.getElementsByClassName("productStockHidden");
var productStockValues = new Array(productStockHiddens.length);//用于控制循环

sortByRenQi.onclick = function(){
	//commodity加入到数组中
	for(var i = 0;i < listCommodity.length;i++){
		productStockValues[i] = Number(productStockHiddens[i].value);
		listCommodity[i] = commodity[i];
	}

	//把被删的commodity排序并加入到listCommodity中,冒泡算法
	for(var i = 0;i < listCommodity.length;i++){
		for(var j = 0;j < listCommodity.length-i-1;j++){
			if(productStockValues[j] > productStockValues[j+1]){
				var tt = productStockValues[j];
				productStockValues[j] = productStockValues[j+1];
				productStockValues[j+1] = tt;
				var t = listCommodity[j];
				listCommodity[j] = listCommodity[j+1];
				listCommodity[j+1] = t;
			}	
		}
	}

	//删除节点，从后面往前删（从前往后删容易报错）
	for(var i = commodity.length-1;i >= 0;i--){
		commodity[i].remove();
	}

	//增加新的listCommodity
	for(var i = 0;i < commodityNumber;i++){
		recommendedList.append(listCommodity[i]);
	}
}
