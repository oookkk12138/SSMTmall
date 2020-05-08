package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ProductDao;
import pojo.Product;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	ProductDao productDao;
	
	//根据id获取商品（映射fiveImage/sixImage）
	public Product getProductById(int id) {
		Product product = productDao.getProductById(id);
		return product;
	}

	//根据商品名称模糊查询商品（映射fiveImage/sixImage）
	public List<Product> getProductByName(String name) {
		List<Product> products = productDao.getProductByName(name);
		return products;
	}

	//根据id修改库存和月销量（生成订单时用到）
	public void updateStockAndSaleCountById(int id, int number) {
		productDao.updateStockAndSaleCountById(id,number);
	}

	//根据id修改库存（用于入货到100）
	public void updateStockById(int id) {
		productDao.updateStockById(id);
	}

	//根据categoryId获取所有的商品
	public List<Product> getAllProductByCategoryIdForAdmin(int categoryId) {
		List<Product> products = productDao.getAllProductByCategoryIdForAdmin(categoryId);
		return products;
	}

	//增加一个商品
	public void addProductForAdmin(Product product) {
		productDao.addProductForAdmin(product);
	}

	//更新商品
	public void updateProductForAdmin(Product product) {
		productDao.updateProductForAdmin(product);
	}

	//根据id删除商品
	public void deleteProductByIdForAdmin(int id) {
		productDao.deleteProductByIdForAdmin(id);
	}
	
}
