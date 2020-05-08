package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pojo.User;

@WebFilter("/*")
public class LoginFilter implements Filter {

	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) resp;
		
		String uri = request.getRequestURI();//获取要访问的路径
		
		//不过滤css、js、jpg、png、gif、bootstrap的字体
		if(uri.endsWith(".css") || uri.endsWith(".js") || uri.endsWith(".jpg") || uri.endsWith(".png") || uri.endsWith("gif") || uri.contains("glyphicon")) {
			chain.doFilter(request,response);
			return;
		}
		
		if(uri.contains("admin") || uri.endsWith("showProducts.do") || uri.endsWith("login.do") || uri.endsWith("logout.do") || uri.endsWith("showProduct.do") || uri.endsWith("register.do") || uri.endsWith("showProductByName.do") || uri.endsWith("login.jsp") || uri.endsWith("register.jsp") || uri.endsWith("search.jsp") || uri.endsWith("classificationPage.jsp") || uri.endsWith("productPage.jsp") || uri.endsWith("login.jsp") || uri.endsWith("index.jsp") || uri.endsWith("SSMTmall/") || uri.endsWith("successRegister.jsp") || uri.endsWith("moTaiLogin.do") || uri.endsWith("findPassword.jsp") || uri.endsWith("findPassword.do")){
			chain.doFilter(request, response);
			return;
		}
		
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		if(user == null) {
			response.sendRedirect("/SSMTmall/jsp/anotherPage/login.jsp");
			return;
		}
		chain.doFilter(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {
		
	}

	public void destroy() {
		
	}

}
