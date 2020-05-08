package service;

import java.util.List;

import pojo.Category;

public interface CategoryService {
	//根据id查询category并映射(products/fiveimage/review)
	public Category getCategoryById(int id);
	//查询所有的category
	public List<Category> getAllCategoryForAdmin();
	//增加一个category
	public void addCategoryForAdmin(String name,String imageUrl);
	//更新category
	public void updateCategoryForAdmin(int id,String name);
	//根据id删除category
	public void deleteCategoryByIdForAdmin(int id);
	//获取此category所在第几条记录（删除跳转时用到）
	public int getLocationById(int id);
	//根据id查询出category
	public Category getCategoryByIdForAdmin(int id);
}
