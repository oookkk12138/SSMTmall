package service;

import java.util.List;

import pojo.Review;

public interface ReviewService {
	//根据product的id查询其下的所有评论
	public List<Review> getReviewByProductId(int productId);
	//增加一个Review
	public void addReview(Review review);
}
