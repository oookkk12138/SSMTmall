package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ReviewDao;
import pojo.Review;

@Service
public class ReviewServiceImpl implements ReviewService{

	@Autowired
	ReviewDao reviewDao;
	
	//根据product的id查询其下的所有评论
	public List<Review> getReviewByProductId(int productId) {
		List<Review> reviews = reviewDao.getReviewByProductId(productId);
		return reviews;
	}

	//增加一个评论
	public void addReview(Review review) {
		reviewDao.addReview(review);
	}

}
