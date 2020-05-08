var sortByMoney = document.getElementById("sortByMoney");
var h = document.getElementsByTagName("h4");
var commodity =document.getElementsByClassName("commodity");
var commodityNumber = commodity.length;
var recommendedList = document.getElementById("recommended-list");
var listH = new Array(h.length);//用来控制新的节点排序
var listCommodity = new Array(commodity.length);
var order = "ASC";//价格从大到小还是从小到大


sortByMoney.onclick = function(){
	if(order == "ASC"){
		//获取价格数，同时把commodity加入到数组中
		for(var i = 0;i < listH.length;i++){
			var g = h[i].innerText.replace("￥","");
			g = parseFloat(g);
			listH[i] = g;
			listCommodity[i] = commodity[i];
		}

		//把被删的commodity排序并加入到listCommodity中,冒泡算法
		for(var i = 0;i < listCommodity.length;i++){
			for(var j = 0;j < listCommodity.length-i-1;j++){
				if(listH[j] > listH[j+1]){
					var t = listH[j];
					var tt = listCommodity[j]
					listH[j] = listH[j+1];
					listCommodity[j] = listCommodity[j+1];
					listH[j+1] = t;
					listCommodity[j+1] = tt;
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
			order = "DESC";
		}
	}else{
		//获取价格数，同时把commodity加入到数组中
		for(var i = 0;i < listH.length;i++){
			var g = h[i].innerText.replace("￥","");
			g = parseFloat(g);
			listH[i] = g;
			listCommodity[i] = commodity[i];
		}

		//把被删的commodity排序并加入到listCommodity中
		for(var i = 0;i < listCommodity.length;i++){
			for(var j = 0;j < listCommodity.length-i-1;j++){
				if(listH[j] < listH[j+1]){
					var t = listH[j];
					var tt = listCommodity[j]
					listH[j] = listH[j+1];
					listCommodity[j] = listCommodity[j+1];
					listH[j+1] = t;
					listCommodity[j+1] = tt;
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
			order = "ASC";
		}
	}
	
}