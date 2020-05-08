package handler;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import pojo.OrderItem;
import pojo.User;
import service.OrderItemService;
import service.UserService;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	OrderItemService orderItemService;
	
	//判断能否登录，登陆成功跳转首页，登录失败返回失败信息
	@RequestMapping("/user/login.do")
	public ModelAndView userLogin(String name,String password,HttpServletRequest request) {
		User user = userService.getUserByNameAndPassword(name,password);
		ModelAndView mav = new ModelAndView();
		if(user != null) {
			//修改登录时间
			userService.updateLoginTimeById(user.getId(),new Date());
			HttpSession session = request.getSession();
			session.setAttribute("user",user);
			//更新购物车数量
			session.removeAttribute("orderItemNumber");
			List<OrderItem> orderItem2 = orderItemService.getOrderItemByUserId(user.getId());
			int orderItemNumber = orderItem2.size();
			session.setAttribute("orderItemNumber",orderItemNumber);
			mav.setViewName("redirect:/index.jsp");
			return mav;
		}else {
			mav.addObject("message","error");
			mav.setViewName("anotherPage/login");
			return mav;
		}
	}
	
	//用户注册,判断注册信息是否完整
	@RequestMapping("/user/register.do")
	public ModelAndView userRegister(String name,String password1,String password2) {
		ModelAndView mav = new ModelAndView();
		if("".equals(name)) {
			//用户名为空
			mav.addObject("name","error");
			mav.setViewName("anotherPage/register");
			return mav;
		}
		else if("".equals(password1) || "".equals(password2)) {
			//密码1或密码2为空
			mav.addObject("password","error");
			mav.setViewName("anotherPage/register");
			return mav;
		}
		else if(!password1.equals(password2)) {
			//密码1不等于密码2
			mav.setViewName("anotherPage/register");
			return mav;
		}else {
			User user = userService.getUserByName(name);
			if(user != null) {
				//数据库中有此用户名,则不能注册用户
				mav.addObject("user",user);
				mav.setViewName("anotherPage/register");
				return mav;
			}else {
				//数据库中没有此用户名，就可以注册用户
				User user2 = new User();
				user2.setName(name);
				user2.setPassword(password1);
				userService.createUser(user2);
				mav.setViewName("anotherPage/successRegister");
				return mav;
			}
		}
	}
	
	//用户退出，清除掉session
	@RequestMapping("/user/logout.do")
	public String userLogout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("user");
		return "redirect:/index.jsp";
	}
	
	//找回密码
	@RequestMapping(value="/user/findPassword.do",produces="text/plain;charset=utf-8")
	@ResponseBody
	public String userFindPassword(String name) {
		User user = userService.getUserByName(name);
		if(user != null) {
			String password = user.getPassword();
			return password;
		}else {
			return "NotExist";
		}
	}
	
	//模态框的登录
	@RequestMapping("/user/moTaiLogin.do")
	@ResponseBody
	public String UserMoTaiLogin(String name,String password,HttpServletRequest request) {
		User user = userService.getUserByNameAndPassword(name,password);
		if(user != null) {
			//修改登录时间
			userService.updateLoginTimeById(user.getId(),new Date());
			HttpSession session = request.getSession();
			session.setAttribute("user",user);
			//更新购物车数量
			session.removeAttribute("orderItemNumber");
			List<OrderItem> orderItem2 = orderItemService.getOrderItemByUserId(user.getId());
			int orderItemNumber = orderItem2.size();
			session.setAttribute("orderItemNumber",orderItemNumber);
			return null;
		}else {
			return "error";
		}
	}
}
