package service;

import java.util.List;

import pojo.Product;

public interface ProductService {
	//根据id获取商品（映射fiveImage/sixImage）
	public Product getProductById(int id);
	//根据商品名称模糊查询商品（映射fiveImage/sixImage）
	public List<Product> getProductByName(String name);
	//根据id修改库存和月销量（生成订单时用到）
	public void updateStockAndSaleCountById(int id,int number);
	//根据id修改库存（用于入货到100）
	public void updateStockById(int id);
	//根据categoryId获取所有的商品
	public List<Product> getAllProductByCategoryIdForAdmin(int categoryId);
	//增加一个商品
	public void addProductForAdmin(Product product);
	//更新商品
	public void updateProductForAdmin(Product product);
	//根据id删除商品
	public void deleteProductByIdForAdmin(int id);
}
