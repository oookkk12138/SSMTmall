package service;

import java.util.List;

import pojo.Property;

public interface PropertyService {
	//根据category的id获取属性
	public List<Property> getPropertyByCategoryId(int categoryId);
	//根据categoryId获取所有的属性
	public List<Property> getAllPropertyForAdmin(int categoryId);
	//增加属性
	public void addProperty(String name,Integer categoryId);
	//根据id修改属性
	public void updatePropertyByIdForAdmin(int id,String name);
	//根据id删除属性
	public void deletePropertyByIdForAdmin(int id);
	//获取此条数据所在的位置（删除时start跳转需要用到）
	public int getLocationById(int id);
}
