package handler;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import pojo.Category;
import pojo.Order;
import pojo.OrderItem;
import pojo.Product;
import pojo.Property;
import pojo.PropertyValue;
import pojo.User;
import service.CategoryService;
import service.FiveImageService;
import service.OrderItemService;
import service.OrderService;
import service.ProductService;
import service.PropertyService;
import service.PropertyValueService;
import service.SixImageService;
import service.UserService;

@Controller
public class AdminController {
	
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	PropertyService propertyService;
	
	@Autowired
	ProductService productService;
	
	@Autowired
	PropertyValueService propertyValueService;
	
	@Autowired
	FiveImageService fiveImageService;
	
	@Autowired
	SixImageService sixImageService;
	
	@Autowired
	UserService userService;
	
	@Autowired
	OrderService orderService;
	
	@Autowired
	OrderItemService orderItemService;

	@RequestMapping("/admin/showCategory.do")
	public ModelAndView showCategory(Integer start) {
		//获取总数
		List<Category> list = categoryService.getAllCategoryForAdmin();
		PageInfo<Category> pageInfo = new PageInfo<Category>(list);
		int total = (int) pageInfo.getTotal();
		//判断边界
		if(start > total) {
			start = total / 5 * 5;
		}
		if(start == total) {
			//（90为9，所以要减一）
			start = (total / 5 - 1) * 5;
		}
		if(start <= 0) {
			//判断最小边界
			start = 0;
		}
		PageHelper.offsetPage(start,5);
		List<Category> categorys = categoryService.getAllCategoryForAdmin();
		ModelAndView mav = new ModelAndView();
		mav.addObject("categorys",categorys);
		mav.addObject("start",start);
		mav.addObject("total",total);
		mav.setViewName("forward:/admin/jsp/categoryManager.jsp");
		return mav;
	}
	
	//增加一个category（包括上传图片）
	@RequestMapping(value= {"/admin/addCategory.do","post"})
	public ModelAndView addCategory(String categoryName,Part categoryPicture,HttpServletRequest request){
		//获取文件名
		String categoryPictureName = categoryPicture.getSubmittedFileName();
		System.out.println(categoryPictureName);
		//定义最终保存的文件名
		String fileName = null;
		//获取tomcat工作目录
		String tomcatPath = request.getSession().getServletContext().getRealPath("upload");
		System.out.println(tomcatPath);
		//判断文件传来的格式起对应的后缀名
		if(categoryPictureName.endsWith("jpg")) {
			fileName = System.currentTimeMillis() + ".jpg";
		}else if(categoryPictureName.endsWith(".png")) {
			fileName = System.currentTimeMillis() + ".png";
		}else {
			ModelAndView mav = new ModelAndView("redirect:/admin/showCategory.do?message=error&start=0");
			return mav;
		}
		//判断tomcat下的upload文件夹是否存在，若不存在就创建
		File tomcatPathFolder = new File(tomcatPath);
		if(!tomcatPathFolder.exists()) {
			tomcatPathFolder.mkdir();
		}
		//获取tomcat下的upload下的刚上传的那个图片
		File tomcatPathFile = new File(tomcatPathFolder,fileName);
		//写入文件
		try {
			categoryPicture.write(tomcatPathFile.toString());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//上传完图片之后进行数据库中添加category
		String imageUrl = "/SSMTmall/upload/" + fileName;
		categoryService.addCategoryForAdmin(categoryName,imageUrl);
		//跳转到最后一页
		List<Category> list = categoryService.getAllCategoryForAdmin();
		PageInfo<Category> pageInfo = new PageInfo<Category>(list);
		int start = (int) pageInfo.getTotal() + 1;
		//使用重定向防止表单重复提交
		ModelAndView mav = new ModelAndView("redirect:/admin/showCategory.do?message=success&start=" + start);
		return mav;
	}
	
	//更新category
	@RequestMapping("/admin/updateCategory.do")
	public ModelAndView updateCategory(Integer categoryId,String categoryName,Integer start) {
		categoryService.updateCategoryForAdmin(categoryId,categoryName);
		ModelAndView mav = new ModelAndView("redirect:/admin/showCategory.do?&start=" + start);
		return mav;
	}
	
	//删除category
	@RequestMapping("/admin/deleteCategory.do")
	public ModelAndView deleteCategory(Integer categoryId) {
		int start = categoryService.getLocationById(categoryId);
		categoryService.deleteCategoryByIdForAdmin(categoryId);
		start = categoryId / 5 * 5;
		if(categoryId % 5 != 0) {
			start = categoryId / 5 * 5;
		}else {
			start = (categoryId / 5 - 1) * 5;
		}
		ModelAndView mav = new ModelAndView("redirect:/admin/showCategory.do?&start=" + start);
		return mav;
	}
	
	//显示属性
	@RequestMapping("/admin/showProperty.do")
	public ModelAndView showProperty(int start,int categoryId) {
		//获取总数
		List<Property> list = propertyService.getAllPropertyForAdmin(categoryId);
		PageInfo<Property> pageInfo = new PageInfo<Property>(list);
		int total = (int) pageInfo.getTotal();
		//判断边界
		if(start > total) {
			start = total / 5 * 5;
		}
		if(start == total) {
			//（90为9，所以要减一）
			start = (total / 5 - 1) * 5;
		}
		if(start <= 0) {
			//判断最小边界
			start = 0;
		}
		PageHelper.offsetPage(start,5);
		List<Property> properties = propertyService.getAllPropertyForAdmin(categoryId);
		Category category = categoryService.getCategoryByIdForAdmin(categoryId);
		ModelAndView mav = new ModelAndView();
		mav.addObject("properties",properties);
		mav.addObject("start",start);
		mav.addObject("total",total);
		mav.addObject("category",category);
		mav.setViewName("forward:/admin/jsp/propertyManager.jsp");
		return mav;
	}
	
	//增加属性
	@RequestMapping("/admin/addProperty.do")
	public ModelAndView addProperty(String propertyName,Integer categoryId) {
		propertyService.addProperty(propertyName,categoryId);
		//跳转到最后一页
		List<Property> list = propertyService.getAllPropertyForAdmin(categoryId);
		PageInfo<Property> pageInfo = new PageInfo<Property>(list);
		int start = (int) pageInfo.getTotal() + 1;
		//使用重定向防止表单重复提交
		ModelAndView mav = new ModelAndView("redirect:/admin/showProperty.do?message=success&start=" + start + "&categoryId=" + categoryId);
		return mav;
	}
	
	//更新属性
	@RequestMapping("/admin/updateProperty.do")
	public ModelAndView updateProperty(Integer propertyId,String propertyName,Integer categoryId,Integer start) {
		propertyService.updatePropertyByIdForAdmin(propertyId,propertyName);
		ModelAndView mav = new ModelAndView("redirect:/admin/showProperty.do?&start=" + start + "&categoryId=" + categoryId);
		return mav;
	}
	
	//删除属性
	@RequestMapping("/admin/deleteProperty.do")
	public ModelAndView deleteProperty(Integer propertyId,Integer categoryId) {
		int start = propertyService.getLocationById(propertyId);
		propertyService.deletePropertyByIdForAdmin(propertyId);
		start = propertyId / 5 * 5;
		if(propertyId % 5 != 0) {
			start = propertyId / 5 * 5;
		}else {
			start = (propertyId / 5 - 1) * 5;
		}
		ModelAndView mav = new ModelAndView("redirect:/admin/showProperty.do?&start=" + start + "&categoryId=" + categoryId);
		return mav;
	}
	
	//显示商品
	@RequestMapping("/admin/showProduct.do")
	public ModelAndView showProduct(Integer start,Integer categoryId) {
		//获取总数
		List<Product> list = productService.getAllProductByCategoryIdForAdmin(categoryId);
		PageInfo<Product> pageInfo = new PageInfo<Product>(list);
		//总数×5是因为一个product中有5个fiveimage和6个sixImage
		int total = (int) pageInfo.getTotal() * 30;
		//判断边界
		if(start > total) {
			//获取最大的页数(81~89为8)
			start = total / 150 * 150;
		}
		if(start == total) {
			//（90为9，所以要减一）
			start = (total / 150 - 1) * 150;
		}
		if(start <= 0) {
			//判断最小边界
			start = 0;
		}
		//使用150去分页是因为一个product对应了5个fiveimage和6个sixImage，实际上是只有5个product
		PageHelper.offsetPage(start,150);
		List<Product> products = productService.getAllProductByCategoryIdForAdmin(categoryId);
		Category category = categoryService.getCategoryByIdForAdmin(categoryId);
		ModelAndView mav = new ModelAndView();
		mav.addObject("products",products);
		mav.addObject("start",start);
		mav.addObject("total",total);
		mav.addObject("category",category);
		mav.setViewName("forward:/admin/jsp/productManager.jsp");
		return mav;
	}
	
	//增加商品
	@RequestMapping("/admin/addProduct.do")
	public ModelAndView addProduct(String productName,String productSubtitle,float productOrignalPrice,float productPromotePrice,Integer productStock,Integer categoryId) {
		Product product = new Product();
		product.setName(productName);
		product.setSubtitle(productSubtitle);
		product.setOrignalPrice(productOrignalPrice);
		product.setPromotePrice(productPromotePrice);
		product.setStock(productStock);
		product.setCategoryId(categoryId);
		Date createDate = new Date();
		product.setCreateDate(createDate);
		productService.addProductForAdmin(product);
		//跳转到最后一页
		List<Product> list = productService.getAllProductByCategoryIdForAdmin(categoryId);
		PageInfo<Product> pageInfo = new PageInfo<Product>(list);
		int start = (int) (pageInfo.getTotal() + 1) * 30;
		//使用重定向防止表单重复提交
		ModelAndView mav = new ModelAndView("redirect:/admin/showProduct.do?message=success&start=" + start + "&categoryId=" + categoryId);
		return mav;
	}
	
	//显示商品属性和属性值
	@RequestMapping("/admin/propertyValueManage.do")
	public ModelAndView propertyValueManage(Integer categoryId,Integer productId) {
		//获取属性
		List<Property> properties = propertyService.getAllPropertyForAdmin(categoryId);
		//获取属性值
		List<PropertyValue> propertyValues = propertyValueService.getAllPropertyValueByProductIdForAdmin(productId);
		//获取商品
		Product product = productService.getProductById(productId);
		ModelAndView mav = new ModelAndView();
		mav.addObject("categoryId",categoryId);
		mav.addObject("properties",properties);
		mav.addObject("propertyValues",propertyValues);
		mav.addObject("product",product);
		mav.setViewName("forward:/admin/jsp/propertyValueManager.jsp");
		return mav;
	}
	
	//修改属性值
	@RequestMapping("/admin/updatePropertyValue.do")
	public ModelAndView updatePropertyValue(Integer categoryId,Integer productId,Integer[] propertyId,String[] value) {
		Integer[] propertyIds = propertyId;
		String[] values = value;
		//进行修改或增加
		for(int i = 0;i < propertyIds.length;i++) {
			PropertyValue propertyValue = propertyValueService.getPropertyValueByProductIdAndPropertyId(productId,propertyIds[i]);
			//没有属性就添加，否则就修改
			if(propertyValue == null) {
				propertyValueService.addPropertyValueForAdmin(productId,propertyIds[i],values[i]);
			}else {
				propertyValueService.updatePropertyValueForAdmin(productId,propertyIds[i],values[i]);
			}
		}
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/admin/propertyValueManage.do?productId=" + productId + "&categoryId=" + categoryId);
		return mav;
	}
	
	//修改商品
	@RequestMapping("/admin/updateProduct.do")
	public ModelAndView updateProduct(Integer categoryId,Integer moTaiProductId,String productName,String productSubtitle,float productOrignalPrice,float productPromotePrice,Integer productStock,Integer start) {
		Product product = new Product();
		product.setId(moTaiProductId);
		product.setName(productName);
		product.setSubtitle(productSubtitle);
		product.setOrignalPrice(productOrignalPrice);
		product.setPromotePrice(productPromotePrice);
		product.setStock(productStock);
		product.setCategoryId(categoryId);
		productService.updateProductForAdmin(product);
		ModelAndView mav = new ModelAndView("redirect:/admin/showProduct.do?&start=" + start + "&categoryId=" + categoryId);
		return mav;
	}
	
	//删除商品
	@RequestMapping("/admin/deleteProduct.do")
	public ModelAndView deleteProduct(Integer productId,Integer categoryId) {
		productService.deleteProductByIdForAdmin(productId);
		ModelAndView mav = new ModelAndView("redirect:/admin/showProduct.do?&start=0" + "&categoryId=" + categoryId);
		return mav;
	}
	
	//根据productId显示FiveImage和sixImage
	@RequestMapping("/admin/showImages.do")
	public ModelAndView showImages(Integer productId) {
		Product product = productService.getProductById(productId);
		ModelAndView mav = new ModelAndView();
		mav.addObject("product",product);
		mav.setViewName("forward:/admin/jsp/productImageManager.jsp");
		return mav;
	}
	
	//增加fiveImage
	@RequestMapping(value= {"/admin/addFiveImage.do","post"})
	public ModelAndView addFiveImageLittleImage(Integer productId,Part picture,HttpServletRequest request) {
		//获取文件名
		String pictureName = picture.getSubmittedFileName();
		System.out.println(pictureName);
		//定义最终保存的文件名
		String fileName = null;
		//获取tomcat工作目录
		String tomcatPath = request.getSession().getServletContext().getRealPath("upload");
		System.out.println(tomcatPath);
		//判断文件传来的格式起对应的后缀名
		if(pictureName.endsWith(".jpg")) {
			fileName = System.currentTimeMillis() + ".jpg";
		}else if(pictureName.endsWith(".png")) {
			fileName = System.currentTimeMillis() + ".png";
		}else {
			ModelAndView mav = new ModelAndView("redirect:/admin/showImages.do?message=error&productId=" + productId);
			return mav;
		}
		//判断tomcat下的upload文件夹是否存在，若不存在就创建
		File tomcatPathFolder = new File(tomcatPath);
		if(!tomcatPathFolder.exists()) {
			tomcatPathFolder.mkdir();
		}
		//获取tomcat下的upload下的刚上传的那个图片
		File tomcatPathFile = new File(tomcatPathFolder,fileName);
		//写入文件
		try {
			picture.write(tomcatPathFile.toString());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//上传完图片之后进行数据库中添加category
		String imageUrl = "/SSMTmall/upload/" + fileName;
		fiveImageService.addFiveImageForAdmin(imageUrl,imageUrl,productId);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/admin/showImages.do?message=success&productId=" + productId);
		return mav;
	}
	
	//增加sixImage
	@RequestMapping(value= {"/admin/addSixImage.do","post"})
	public ModelAndView addSixImageLittleImage(Integer productId,Part picture,HttpServletRequest request) {
		//获取文件名
		String pictureName = picture.getSubmittedFileName();
		System.out.println(pictureName);
		//定义最终保存的文件名
		String fileName = null;
		//获取tomcat工作目录
		String tomcatPath = request.getSession().getServletContext().getRealPath("upload");
		System.out.println(tomcatPath);
		//判断文件传来的格式起对应的后缀名
		if(pictureName.endsWith(".jpg")) {
			fileName = System.currentTimeMillis() + ".jpg";
		}else if(pictureName.endsWith(".png")) {
			fileName = System.currentTimeMillis() + ".png";
		}else {
			ModelAndView mav = new ModelAndView("redirect:/admin/showImages.do?message=error&productId=" + productId);
			return mav;
		}
		//判断tomcat下的upload文件夹是否存在，若不存在就创建
		File tomcatPathFolder = new File(tomcatPath);
		if(!tomcatPathFolder.exists()) {
			tomcatPathFolder.mkdir();
		}
		//获取tomcat下的upload下的刚上传的那个图片
		File tomcatPathFile = new File(tomcatPathFolder,fileName);
		//写入文件
		try {
			picture.write(tomcatPathFile.toString());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//上传完图片之后进行数据库中添加category
		String imageUrl = "/SSMTmall/upload/" + fileName;
		sixImageService.addSixImageForAdmin(imageUrl,productId);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/admin/showImages.do?message=success&productId=" + productId);
		return mav;
	}
	
	//删除fiveImage
	@RequestMapping("/admin/deleteFiveImage.do")
	public ModelAndView deleteFiveImage(Integer id,Integer productId) {
		fiveImageService.deleteFiveImageByIdForAdmin(id);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/admin/showImages.do?productId=" + productId);
		return mav;
	}
	
	//删除sixImage
	@RequestMapping("/admin/deleteSixImage.do")
	public ModelAndView deleteSixImage(Integer id,Integer productId) {
		sixImageService.deleteSixImageByIdForAdmin(id);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/admin/showImages.do?productId=" + productId);
		return mav;
	}
	
	//显示user
	@RequestMapping("/admin/showUser.do")
	public ModelAndView showUser(Integer start) {
		//获取总数
		List<User> list = userService.getAllUserForAdmin();
		PageInfo<User> pageInfo = new PageInfo<User>(list);
		int total = (int) pageInfo.getTotal();
		//判断边界
		if(start > total) {
			start = total / 5 * 5;
		}
		if(start == total) {
			//（90为9，所以要减一）
			start = (total / 5 - 1) * 5;
		}
		if(start <= 0) {
			//判断最小边界
			start = 0;
		}
		PageHelper.offsetPage(start,5);
		List<User> users = userService.getAllUserForAdmin();
		ModelAndView mav = new ModelAndView();
		mav.addObject("users",users);
		mav.addObject("start",start);
		mav.addObject("total",total);
		mav.setViewName("forward:/admin/jsp/userManager.jsp");
		return mav;
	}
	
	//修改用户名
	@RequestMapping("/admin/updateUserName.do")
	public ModelAndView updateUserName(Integer userId,String userName,Integer start) {
		//根据用户名查询用户，若用户名相同则提示用户名相同
		User user = userService.getUserByName(userName);
		if(user != null) {
			ModelAndView mav = new ModelAndView("redirect:/admin/showUser.do?message=error&start=" + start);
			return mav;
		}else {
			userService.updateUserNameByIdForAdmin(userId,userName);
			ModelAndView mav = new ModelAndView("redirect:/admin/showUser.do?&start=" + start);
			return mav;
		}
	}
	
	//修改用户名
	@RequestMapping("/admin/updateUserPassword.do")
	public ModelAndView updateUserPassword(Integer userId,String userPassword,Integer start) {
		userService.updatePasswordByIdForAdmin(userId,userPassword);
		ModelAndView mav = new ModelAndView("redirect:/admin/showUser.do?&start=" + start);
		return mav;
	}
		
	//删除user
	@RequestMapping("/admin/deleteUser.do")
	public ModelAndView deleteUser(Integer userId) {
		int start = userService.getUserLocation(userId);
		userService.deleteUserByIdForAdmin(userId);
		start = userId / 5 * 5;
		if(userId % 5 != 0) {
			start = userId / 5 * 5;
		}else {
			start = (userId / 5 - 1) * 5;
		}
		ModelAndView mav = new ModelAndView("redirect:/admin/showUser.do?&start=" + start);
		return mav;
	}
	
	//显示order
	@RequestMapping("/admin/showOrder.do")
	public ModelAndView showOrder(Integer start) {
		//获取总数
		List<Order> list = orderService.getAllOrderForAdmin();
		PageInfo<Order> pageInfo = new PageInfo<Order>(list);
		int total = (int) pageInfo.getTotal();
		//判断边界
		if(start > total) {
			start = total / 5 * 5;
		}
		if(start == total) {
			//（90为9，所以要减一）
			start = (total / 5 - 1) * 5;
		}
		if(start <= 0) {
			//判断最小边界
			start = 0;
		}
		PageHelper.offsetPage(start,5);
		List<Order> orders = orderService.getAllOrderForAdmin();
		//设置二维集合保存orders中对应的orderItem
		List<List<OrderItem>> orderItems = new ArrayList<List<OrderItem>>();
		for(int i = 0;i < orders.size();i++) {
			List<OrderItem> orderItemList = orderItemService.getOrderItemByOrderId(orders.get(i).getId());
			orderItems.add(orderItemList);
		}
		//根据orderId获取user
		List<User> users = new ArrayList<User>();
		for(int i = 0;i < orders.size();i++) {
			User user = userService.getUserById(orders.get(i).getUserId());
			users.add(user);
		}
		//获取订单项中所对应的商品集合
		List<List<Product>> products = new ArrayList<List<Product>>();
		for(int i = 0;i < orderItems.size();i++) {
			List<Product> productList = new ArrayList<Product>();
			//根据orderItem获取product
			for(int j = 0;j < orderItems.get(i).size();j++) {
				Product product = productService.getProductById(orderItems.get(i).get(j).getProductId());
				productList.add(product);
			}
			products.add(productList);
		}
		ModelAndView mav = new ModelAndView();
		mav.addObject("users",users);
		mav.addObject("orders",orders);
		mav.addObject("orderItems",orderItems);
		mav.addObject("products",products);
		mav.addObject("start",start);
		mav.addObject("total",total);
		mav.setViewName("forward:/admin/jsp/orderManager.jsp");
		return mav;
	}
	
	//后台发货
	@RequestMapping("/admin/orderDeliverGoods.do")
	public ModelAndView orderDeliverGoods(Integer orderId) {
		String status = "待收货";
		Date deliverDate = new Date();
		orderService.updateStatusAndDeliverDateById(orderId,status,deliverDate);
		int start = orderId / 5 * 5;
		if(orderId % 5 != 0) {
			start = orderId / 5 * 5;
		}else {
			start = (orderId / 5 - 1) * 5;
		}
		ModelAndView mav = new ModelAndView("redirect:/admin/showOrder.do?&start=" + start + "&message=" + orderId);
		return mav;
	}
	
	
}
