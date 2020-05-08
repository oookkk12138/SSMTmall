package dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import pojo.PropertyValue;

@Repository
public interface PropertyValueDao {
	//根据product的id获取属性值
	public List<PropertyValue> getPropertyValueByProductId(int productId);
	//根据productId获取所有的属性值
	public List<PropertyValue> getAllPropertyValueByProductIdForAdmin(int productId);
	//根据productId和propertyId获取属性值
	public PropertyValue getPropertyValueByProductIdAndPropertyIdForAdmin(@Param("productId") int productId,@Param("propertyId") int propertyId);
	//增加一个属性值
	public void addPropertyValueForAdmin(@Param("productId") Integer productId,@Param("propertyId") Integer propertyId,@Param("value") String value);
	//根据productId和propertyId修改属性值
	public void updatePropertyValueForAdmin(@Param("productId") Integer productId,@Param("propertyId") Integer propertyId,@Param("value") String value);
	
}
