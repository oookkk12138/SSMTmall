package handler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import pojo.Category;
import pojo.Order;
import pojo.Product;
import pojo.Property;
import pojo.PropertyValue;
import pojo.Review;
import service.ProductService;
import service.PropertyService;
import service.PropertyValueService;
import service.ReviewService;

@Controller
public class ProductController {

	@Autowired
	ProductService productService;
	
	@Autowired
	ReviewService reviewService;
	
	@Autowired
	PropertyService propertyService;
	
	@Autowired
	PropertyValueService propertyValueService;
	
	//根据id获取商品并显示到视图上
	@RequestMapping("/product/showProduct.do")
	public ModelAndView productShowProduct(Integer productId) {
		//获取商品
		Product product = productService.getProductById(productId);
		//获取评论总数
		List<Review> list = reviewService.getReviewByProductId(productId);
		PageInfo<Review> pageInfo = new PageInfo<Review>(list);
		int total = (int) pageInfo.getTotal();
		//获取评论
		PageHelper.offsetPage(0,20);
		List<Review> reviews = reviewService.getReviewByProductId(productId);
		//获取属性
		List<Property> properties = propertyService.getPropertyByCategoryId(product.getCategoryId());
		//获取属性值
		List<PropertyValue> propertyValues = propertyValueService.getPropertyValueByProductId(productId);
		ModelAndView mav = new ModelAndView();
		mav.addObject("product",product);
		mav.addObject("reviews",reviews);
		mav.addObject("total",total);
		mav.addObject("properties",properties);
		mav.addObject("propertyValues",propertyValues);
		mav.setViewName("productPage/productPage");
		return mav;
	}
	
	//查询商品
	@RequestMapping("/product/showProductByName.do")
	public ModelAndView showProductByName(int start,String searchMessage) {
		//获取总数
		List<Product> list = productService.getProductByName(searchMessage);
		PageInfo<Product> pageInfo = new PageInfo<Product>(list);
		//总数×5是因为一个product中有5个fiveimage
		int total = (int) pageInfo.getTotal() * 30;
		//判断边界
		if(start > total) {
			//获取最大的页数(81~89为8)
			start = total / 600 * 600;
		}
		if(start == total) {
			//（90为9，所以要减一）
			start = (total / 600 - 1) * 600;
		}
		if(start <= 0) {
			//判断最小边界
			start = 0;
		}
		//使用600去分页是因为一个product对应了5个fiveimage和6个sixImage，实际上是只有20个product
		PageHelper.offsetPage(start,600);
		//把获取到的searchMessage拿去模糊查询
		List<Product> products = productService.getProductByName(searchMessage);
		System.out.println(products.get(0).getId());
		System.out.println("start:" + start);
		System.out.println("total:" + total);
		ModelAndView mav = new ModelAndView();
		mav.addObject("products",products);
		mav.addObject("searchMessage",searchMessage);
		mav.addObject("start",start);
		mav.addObject("total",total);
		mav.setViewName("/anotherPage/search");
		return mav;
	}
	
	
}
