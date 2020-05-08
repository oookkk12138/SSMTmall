package dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import pojo.Order;

@Repository
public interface OrderDao {
	//增加一个Order
	public void addOrder(Order order);
	//根据orderId查询order
	public Order getOrderById(int id);
	//根据id修改状态
	public void updateStatusById(@Param("id") int id,@Param("status") String status);
	//根据id修改payDate
	public void updatePayDateById(@Param("id") int id,@Param("payDate") Date payDate);
	//根据用户id获取所用的订单(除了状态是已删除的订单)
	public List<Order> getAllOrderByUserId(int userId);
	//根据id修改发货日期
	public void updateDeliverDateById(@Param("id") int id,@Param("deliverDate") Date deliverDate);
	//根据id修改确认收货日期
	public void updateConfirmDateById(@Param("id") int id,@Param("confirmDate") Date confirmDate);
	//获取所有的订单
	public List<Order> getAllOrderForAdmin();
}
