//综合排序以商品id从小往大排
var sortByZongHe = document.getElementById("sortByZongHe");
var commodity =document.getElementsByClassName("commodity");
var commodityNumber = commodity.length;
var recommendedList = document.getElementById("recommended-list");
var productIdHiddens = document.getElementsByClassName("productIdHidden");
var listCommodity = new Array(commodity.length);
var productIdValues = new Array(productIdHiddens.length);//用于控制循环

sortByZongHe.onclick = function(){
	//commodity加入到数组中
	for(var i = 0;i < listCommodity.length;i++){
		productIdValues[i] = Number(productIdHiddens[i].value);
		listCommodity[i] = commodity[i];
	}
	
	//把被删的commodity排序并加入到listCommodity中,冒泡算法
	for(var i = 0;i < listCommodity.length;i++){
		for(var j = 0;j < listCommodity.length-i-1;j++){
			if(productIdValues[j] > productIdValues[j+1]){
				var tt = productIdValues[j];
				productIdValues[j] = productIdValues[j+1];
				productIdValues[j+1] = tt;
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
