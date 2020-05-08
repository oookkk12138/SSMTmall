package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.PropertyDao;
import pojo.Property;

@Service
public class PropertyServiceimpl implements PropertyService{

	@Autowired
	PropertyDao propertyDao;
	
	//根据category的id获取属性
	public List<Property> getPropertyByCategoryId(int categoryId) {
		List<Property> properties = propertyDao.getPropertyByCategoryId(categoryId);
		return properties;
	}

	//获取所有的属性
	public List<Property> getAllPropertyForAdmin(int categoryId) {
		List<Property> properties = propertyDao.getAllPropertyByCategoryIdForAdmin(categoryId);
		return properties;
	}

	//增加属性
	public void addProperty(String name, Integer categoryId) {
		propertyDao.addPropertyForAdmin(name,categoryId);
	}

	//根据id修改属性
	public void updatePropertyByIdForAdmin(int id, String name) {
		propertyDao.updatePropertyByIdForAdmin(id,name);
	}

	//根据id删除属性
	public void deletePropertyByIdForAdmin(int id) {
		propertyDao.deletePropertyByIdForAdmin(id);
	}

	//获取此条数据所在的位置（删除时start跳转需要用到）
	public int getLocationById(int id) {
		int location = propertyDao.getPropertyLocation(id);
		return location;
	}
	
	
}
