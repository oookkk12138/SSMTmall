package service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.PropertyValue;

public interface PropertyValueService {
	//根据product的id获取属性值
	public List<PropertyValue> getPropertyValueByProductId(int productId);
	//根据productId获取所有的属性值
	public List<PropertyValue> getAllPropertyValueByProductIdForAdmin(int productId);
	//根据productId和propertyId获取属性值
	public PropertyValue getPropertyValueByProductIdAndPropertyId(int productId,int propertyId);
	//增加一个属性值
	public void addPropertyValueForAdmin(Integer productId,Integer propertyId,String value);
	//根据productId和propertyId修改属性值
	public void updatePropertyValueForAdmin(Integer productId,Integer propertyId,String value);
}
