package com.itbank.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.itbank.model.vo.AccountVo;

public class LoginInterceptor extends HandlerInterceptorAdapter{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String cpath = request.getContextPath();
		
		HttpSession session = request.getSession();
		AccountVo user = (AccountVo) session.getAttribute("user");
		
		if (user == null) {
			response.sendRedirect(cpath + "/account/login");
			return false;
		}
		
		
		return super.preHandle(request, response, handler);
	}
}
