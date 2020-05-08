import java.util.List;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import pojo.Category;
import pojo.Review;
import service.CategoryService;

public class Test {
	public static void main(String[] args) {
		ClassPathXmlApplicationContext factory = new ClassPathXmlApplicationContext("applicationContext.xml");
		CategoryService categoryService = factory.getBean(CategoryService.class);
		Category category = categoryService.getCategoryById(1);
		List<Review> reviews = category.getProducts().get(4).getReviews();
		System.out.println(reviews.size());
		for(Review i : reviews) {
			System.out.println(i.getId());
		}
	}
}
