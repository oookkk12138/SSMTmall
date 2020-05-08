package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.PropertyValueDao;
import pojo.PropertyValue;

@Service
public class PropertyValueServiceImpl implements PropertyValueService{

	@Autowired
	PropertyValueDao propertyValueDao;
	
	//根据product的id获取属性值
	public List<PropertyValue> getPropertyValueByProductId(int productId) {
		List<PropertyValue> propertyValues = propertyValueDao.getPropertyValueByProductId(productId);
		return propertyValues;
	}

	//根据productId获取所有的属性值
	public List<PropertyValue> getAllPropertyValueByProductIdForAdmin(int productId) {
		List<PropertyValue> propertyValues = propertyValueDao.getAllPropertyValueByProductIdForAdmin(productId);
		return propertyValues;
	}

	//根据productId和propertyId获取属性值
	public PropertyValue getPropertyValueByProductIdAndPropertyId(int productId, int propertyId) {
		PropertyValue propertyValue = propertyValueDao.getPropertyValueByProductIdAndPropertyIdForAdmin(productId,propertyId);
		return propertyValue;
	}

	//增加一个属性值
	public void addPropertyValueForAdmin(Integer productId, Integer propertyId, String value) {
		propertyValueDao.addPropertyValueForAdmin(productId,propertyId,value);
	}

	//根据productId和propertyId修改属性值
	public void updatePropertyValueForAdmin(Integer productId, Integer propertyId, String value) {
		propertyValueDao.updatePropertyValueForAdmin(productId,propertyId,value);
	}

}
