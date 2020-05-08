package pojo;

import java.util.Date;
import java.util.List;

public class Order {
	private Integer id;
	private String orderCode;
	private String address;
	private String post;
	private String receiver;
	private String mobile;
	private String userMessage;
	private Date createDate;
	private Date payDate;
	private Date deliverDate;
	private Date confirmDate;
	private String status;
	private Integer userId;
	private User user;
	private List<OrderItem> orderItems;
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Order [id=");
		builder.append(id);
		builder.append(", orderCode=");
		builder.append(orderCode);
		builder.append(", address=");
		builder.append(address);
		builder.append(", post=");
		builder.append(post);
		builder.append(", receiver=");
		builder.append(receiver);
		builder.append(", mobile=");
		builder.append(mobile);
		builder.append(", userMessage=");
		builder.append(userMessage);
		builder.append(", createDate=");
		builder.append(createDate);
		builder.append(", payDate=");
		builder.append(payDate);
		builder.append(", deliverDate=");
		builder.append(deliverDate);
		builder.append(", confirmDate=");
		builder.append(confirmDate);
		builder.append(", status=");
		builder.append(status);
		builder.append(", userId=");
		builder.append(userId);
		builder.append(", user=");
		builder.append(user);
		builder.append(", orderItems=");
		builder.append(orderItems);
		builder.append("]");
		return builder.toString();
	}
	public List<OrderItem> getOrderItems() {
		return orderItems;
	}
	public void setOrderItems(List<OrderItem> orderItems) {
		this.orderItems = orderItems;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getOrderCode() {
		return orderCode;
	}
	public void setOrderCode(String orderCode) {
		this.orderCode = orderCode;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getUserMessage() {
		return userMessage;
	}
	public void setUserMessage(String userMessage) {
		this.userMessage = userMessage;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Date getPayDate() {
		return payDate;
	}
	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}
	public Date getDeliverDate() {
		return deliverDate;
	}
	public void setDeliverDate(Date deliverDate) {
		this.deliverDate = deliverDate;
	}
	public Date getConfirmDate() {
		return confirmDate;
	}
	public void setConfirmDate(Date confirmDate) {
		this.confirmDate = confirmDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
}
