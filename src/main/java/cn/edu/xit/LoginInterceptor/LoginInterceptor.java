package cn.edu.xit.LoginInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import cn.edu.xit.po.Admit;
import cn.edu.xit.po.SchoolMate;

public class LoginInterceptor implements HandlerInterceptor{

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		// TODO Auto-generated method stub
//		拦截器在控制器的任意方法开始前都会执行：返回TRUE说明可以进行下一步处理,返回false说明要中断后续的所有操作
//		获取请求的URL
		String url=request.getRequestURI();
		//只允许/index这个路径公开访问(indexOf("")表示这个字符串第一次出现的位置)
		if(url.indexOf("/index")>=0)
		{
			return true;
		}
		if(url.indexOf("/login")>=0)
		{
			return true;
		}
		if(url.indexOf("/introduce")>=0)
		{
			return true;
		}
		if(url.indexOf("/contact")>=0)
		{
			return true;
		}
		
		HttpSession session=request.getSession();
		SchoolMate schoolmate=(SchoolMate)session.getAttribute("User");
		Admit admit=(Admit) session.getAttribute("AdmitUser");
		if(schoolmate!=null)
		{
			return true;//返回TRUE说明可以进行下一步处理
		}
		if(admit!=null)
		{
			return true;
		}
		request.setAttribute("msg", "您还没有登录，请先登录！");
		//请求转发器:路径不变,页面产生改变   重定向:相当于刷新页面,路径和页面内容都发生改变
        //RequestDispatcher是一个Web资源的包装器(不属于spring),根据下面的路径(下面的路径是绝对路径(以"/"开头，则容器认为相对于当前Web应用的根),防止发生错误)找到指定的jsp界面		
		request.getRequestDispatcher("/WEB-INF/jsp/index.jsp").forward(request, response);
		return false;//返回false说明要中断后续的所有操作
	}

}
