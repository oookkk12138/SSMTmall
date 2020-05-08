package pojo;

import java.util.Date;
import java.util.List;

public class Product {
	private Integer id;
	private String name;
	private String subtitle;
	private float orignalPrice;
	private float promotePrice;
	private Integer stock;
	private Date createDate;
	private Integer saleCount;
	private Integer categoryId;
	private List<FiveImage> fiveImages;
	private List<SixImage> sixImages;
	private List<Review> reviews;
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Product [id=");
		builder.append(id);
		builder.append(", name=");
		builder.append(name);
		builder.append(", subtitle=");
		builder.append(subtitle);
		builder.append(", orignalPrice=");
		builder.append(orignalPrice);
		builder.append(", promotePrice=");
		builder.append(promotePrice);
		builder.append(", stock=");
		builder.append(stock);
		builder.append(", createDate=");
		builder.append(createDate);
		builder.append(", saleCount=");
		builder.append(saleCount);
		builder.append(", categoryId=");
		builder.append(categoryId);
		builder.append(", fiveImages=");
		builder.append(fiveImages);
		builder.append(", sixImages=");
		builder.append(sixImages);
		builder.append(", reviews=");
		builder.append(reviews);
		builder.append(", category=");
		builder.append(category);
		builder.append("]");
		return builder.toString();
	}
	public Integer getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}
	public List<SixImage> getSixImages() {
		return sixImages;
	}
	public void setSixImages(List<SixImage> sixImages) {
		this.sixImages = sixImages;
	}
	public List<Review> getReviews() {
		return reviews;
	}
	public void setReviews(List<Review> reviews) {
		this.reviews = reviews;
	}
	public List<FiveImage> getFiveImages() {
		return fiveImages;
	}
	public void setFiveImages(List<FiveImage> fiveImages) {
		this.fiveImages = fiveImages;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSubtitle() {
		return subtitle;
	}
	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}
	public float getOrignalPrice() {
		return orignalPrice;
	}
	public void setOrignalPrice(float orignalPrice) {
		this.orignalPrice = orignalPrice;
	}
	public float getPromotePrice() {
		return promotePrice;
	}
	public void setPromotePrice(float promotePrice) {
		this.promotePrice = promotePrice;
	}
	public Integer getStock() {
		return stock;
	}
	public void setStock(Integer stock) {
		this.stock = stock;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Integer getSaleCount() {
		return saleCount;
	}
	public void setSaleCount(Integer saleCount) {
		this.saleCount = saleCount;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	private Category category;
}
