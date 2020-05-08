package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.CategoryDao;
import pojo.Category;

@Service
public class CategoryServiceImpl implements CategoryService{

	@Autowired
	CategoryDao categoryDao;
	
	//根据id查询category并映射products
	public Category getCategoryById(int id) {
		Category category = categoryDao.getCategoryById(id);
		return category;
	}

	//查询所有的category
	public List<Category> getAllCategoryForAdmin() {
		List<Category> categorys = categoryDao.getAllCategoryForAdmin();
		return categorys;
	}

	//增加一个category
	public void addCategoryForAdmin(String name,String imageUrl) {
		categoryDao.addCategoryForAdmin(name,imageUrl);
	}

	//更新category
	public void updateCategoryForAdmin(int id, String name) {
		categoryDao.updateCategoryForAdmin(id,name);
	}

	//根据id删除category
	public void deleteCategoryByIdForAdmin(int id) {
		categoryDao.deleteCategoryByIdForAdmin(id);
	}

	//获取此category所在第几条记录（删除跳转时用到）
	public int getLocationById(int id) {
		int location = categoryDao.getCategoryLocation(id);
		return location;
	}

	//根据id查询出category
	public Category getCategoryByIdForAdmin(int id) {
		Category category = categoryDao.getCategoryByIdForAdmin(id);
		return category;
	}

}
