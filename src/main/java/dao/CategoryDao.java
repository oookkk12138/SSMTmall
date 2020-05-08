package dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import pojo.Category;
import pojo.Order;

@Repository
public interface CategoryDao {
	//根据categoryId查询出category（首页点击分类列表时用到）(四表关联category/product/fiveimage/review)
	public Category getCategoryById(int id);
	//查询所有的category
	public List<Category> getAllCategoryForAdmin();
	//增加一个category
	public void addCategoryForAdmin(@Param("name") String name,@Param("imageUrl") String imageUrl);
	//更新category
	public void updateCategoryForAdmin(@Param("id") int id,@Param("name") String name);
	//根据id删除category
	public void deleteCategoryByIdForAdmin(int id);
	//查询此条记录在数据库中是第几条（删除时start跳转需要用到）
	public int getCategoryLocation(int id);
	//根据id查询出category
	public Category getCategoryByIdForAdmin(int id);
}
