package dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import pojo.OrderItem;

@Repository
public interface OrderItemDao {
	//根据productId和userId查询出orderItem
	public OrderItem getOrderItemByProductIdAndUserId(@Param("productId") int productId,@Param("userId") int userId);
	//根据orderItem的id修改number(动态SQL)
	public void updateOrderItem(OrderItem orderItem);
	//增加一个OrderItem
	public void insertOrderItem(OrderItem orderItem);
	//根据userid查询出orderItem(orderId为空)
	public List<OrderItem> getOrderItemByUserId(int userId);
	//根据orderId获取orderitem
	public List<OrderItem> getOrderItemByOrderId(int orderId);
	//根据orderItemId修改number值
	public void updateNumberById(@Param("id") int id,@Param("number") int number);
	//根据id获取orderItem
	public OrderItem getOrderItemById(int id);
	//根据id删除orderItem
	public void deleteOrderItemById(int id);
}
