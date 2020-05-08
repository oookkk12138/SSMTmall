package service;

import java.util.Date;
import java.util.List;

import pojo.Order;

public interface OrderService {
	//增加一个order并修改对应的订单项的orderId(立即购买)
	public void addOrderAndUpdateOrderItem(Order order,Integer orderItemId);
	//根据orderId查询order
	public Order getOrderById(int id);
	//更新状态和paydate
	public void updateStatusAndPayDateById(int id,String status,Date payDate);
	//根据userId获取所有的订单
	public List<Order> getAllOrderByUserId(int userId);
	//更新状态和deliverDate
	public void updateStatusAndDeliverDateById(int id,String status,Date deliverDate);
	//更新状态和confirmDate
	public void updateStatusAndConfirmDate(int id,String status,Date confirmDate);
	//更新状态
	public void updateStatusById(int id,String status);
	//增加一个order并修改多个订单项的orderId(购物车)
	public void addOrderAndUpdateOrderItems(Order order,Integer[] orderItemIds);
	//获取所有的订单
	public List<Order> getAllOrderForAdmin();
}
