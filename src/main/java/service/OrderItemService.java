package service;

import java.util.List;

import pojo.OrderItem;

public interface OrderItemService {
	//根据productid和userid获取orderitem
	public OrderItem getOrderItemByProductIdAndUserId(int productId,int userId);
	//更新orderItem
	public void updateOrderItem(OrderItem orderItem);
	//增加一个orderItem
	public void addOrderItem(OrderItem orderItem);
	//根据userId查询orderItem
	public List<OrderItem> getOrderItemByUserId(int userId);
	//根据orderId获取orderItem
	public List<OrderItem> getOrderItemByOrderId(int orderId);
	//根据id修改number值
	public void updateNumberById(int id,int number);
	//根据id获取orderItem
	public OrderItem getOrderItemById(int id);
	//根据id删除orderItem
	public void deleteOrderItemById(int id);
}
