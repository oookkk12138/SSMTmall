package pojo;

public class OrderItem {
	private Integer id;
	private Integer number;
	private Integer productId;
	private Integer orderId;
	private Integer UserId;
	private Product product;
	private Order order;
	private User user;
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("OrderItem [id=");
		builder.append(id);
		builder.append(", number=");
		builder.append(number);
		builder.append(", productId=");
		builder.append(productId);
		builder.append(", orderId=");
		builder.append(orderId);
		builder.append(", UserId=");
		builder.append(UserId);
		builder.append(", product=");
		builder.append(product);
		builder.append(", order=");
		builder.append(order);
		builder.append(", user=");
		builder.append(user);
		builder.append("]");
		return builder.toString();
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}
	public Integer getProductId() {
		return productId;
	}
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	public Integer getOrderId() {
		return orderId;
	}
	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}
	public Integer getUserId() {
		return UserId;
	}
	public void setUserId(Integer userId) {
		UserId = userId;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
}
