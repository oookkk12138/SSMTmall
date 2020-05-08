package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.OrderItemDao;
import pojo.OrderItem;

@Service
public class OrderItemServiceImpl implements OrderItemService{

	@Autowired
	private OrderItemDao orderItemDao;
	
	//根据productid和userid获取orderitem
	public OrderItem getOrderItemByProductIdAndUserId(int productId, int userId) {
		OrderItem orderItem = orderItemDao.getOrderItemByProductIdAndUserId(productId,userId);
		return orderItem;
	}

	//更新OrderItem
	public void updateOrderItem(OrderItem orderItem) {
		orderItemDao.updateOrderItem(orderItem);
	}

	//增加一个orderItem
	public void addOrderItem(OrderItem orderItem) {
		orderItemDao.insertOrderItem(orderItem);
	}

	//根据userId查询orderItem
	public List<OrderItem> getOrderItemByUserId(int userId) {
		List<OrderItem> orderItems = orderItemDao.getOrderItemByUserId(userId);
		return orderItems;
	}

	//根据orderId获取orderItem
	public List<OrderItem> getOrderItemByOrderId(int orderId) {
		List<OrderItem> orderItems = orderItemDao.getOrderItemByOrderId(orderId);
		return orderItems;
	}

	//根据id修改number
	public void updateNumberById(int id, int number) {
		orderItemDao.updateNumberById(id,number);
	}

	//根据id获取orderItem
	public OrderItem getOrderItemById(int id) {
		OrderItem orderItem = orderItemDao.getOrderItemById(id);
		return orderItem;
	}

	//根据id删除orderItem
	public void deleteOrderItemById(int id) {
		orderItemDao.deleteOrderItemById(id);
	}



}
