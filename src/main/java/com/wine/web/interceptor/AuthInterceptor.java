package com.wine.web.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.wine.constants.Constants;
import com.wine.model.User;

public class AuthInterceptor extends HandlerInterceptorAdapter {
	private final static Logger log = Logger.getLogger(AuthInterceptor.class); 
	static {
		log.info("init AuthInterceptor success.");
	}
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

		if (handler.getClass().isAssignableFrom(HandlerMethod.class)) {
			AuthPassport authPassport = ((HandlerMethod) handler).getMethodAnnotation(AuthPassport.class);

			// 没有声明需要权限,或者声明不验证权限
			if (authPassport == null || authPassport.validate() == false){
				return true;
			}
			// 在这里实现自己的权限验证逻辑
			User curUser = (User)request.getSession().getAttribute(Constants.CURRENT_USER);
			if (curUser == null){
				// 如果验证成功返回true（这里直接写false来模拟验证失败的处理）
				// 如果验证失败 返回到登录界面
				log.info("user not login or session is .");
				response.sendRedirect(request.getContextPath() + "/page/admin/login/login3.jsp");
				return false;
				
			} else {
				return true;
			}
		} else {
			return true;
		}
	}
}
