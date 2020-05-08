package service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.OrderDao;
import dao.OrderItemDao;
import pojo.Order;
import pojo.OrderItem;

@Service
public class OrderServiceImpl implements OrderService{

	@Autowired
	private OrderDao orderDao;
	
	@Autowired
	private OrderItemDao orderItemDao;
	
	//增加一个order并修改对应的订单项的orderId
	@Transactional
	public void addOrderAndUpdateOrderItem(Order order,Integer orderItemId) {
		orderDao.addOrder(order);
		OrderItem orderItem = new OrderItem();
		orderItem.setId(orderItemId);
		orderItem.setOrderId(order.getId());
		orderItemDao.updateOrderItem(orderItem);
	}

	//根据id查询order
	public Order getOrderById(int id) {
		Order order = orderDao.getOrderById(id);
		return order;
	}

	//更新状态和payDate
	@Transactional
	public void updateStatusAndPayDateById(int id, String status, Date payDate) {
		orderDao.updateStatusById(id,status);
		orderDao.updatePayDateById(id,payDate);
	}

	//根据userId获取所有的order
	public List<Order> getAllOrderByUserId(int userId) {
		List<Order> orders = orderDao.getAllOrderByUserId(userId);
		return orders;
	}

	//更新状态和发货日期
	@Transactional
	public void updateStatusAndDeliverDateById(int id, String status, Date deliverDate) {
		orderDao.updateStatusById(id,status);
		orderDao.updateDeliverDateById(id,deliverDate);
	}

	//更新状态和确认收货日期
	public void updateStatusAndConfirmDate(int id, String status, Date confirmDate) {
		orderDao.updateStatusById(id,status);
		orderDao.updateConfirmDateById(id,confirmDate);
	}

	//更新状态
	public void updateStatusById(int id,String status) {
		orderDao.updateStatusById(id,status);
	}

	//增加一个order并修改多个订单项的orderId(购物车)
	@Transactional
	public void addOrderAndUpdateOrderItems(Order order, Integer[] orderItemIds) {
		orderDao.addOrder(order);
		for(int i = 0;i < orderItemIds.length;i++) {
			OrderItem orderItem = new OrderItem();
			orderItem.setId(orderItemIds[i]);
			orderItem.setOrderId(order.getId());
			orderItemDao.updateOrderItem(orderItem);
		}
	}

	//获取所有的订单
	public List<Order> getAllOrderForAdmin() {
		List<Order> orders = orderDao.getAllOrderForAdmin();
		return orders;
	}
	
}
