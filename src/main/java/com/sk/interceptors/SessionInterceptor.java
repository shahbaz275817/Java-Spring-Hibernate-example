/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sk.interceptors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

/**
 *
 * @author Shahbaz
 */
public class SessionInterceptor extends HandlerInterceptorAdapter{
    @Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		//request.setAttribute("greeting", "We hope you have a scary and fun filled Halloween!");
		//String location = request.getParameter("locationName");
		//if(location != null) {
		//	request.setAttribute("locationName", location);
		//}
		HttpSession session=request.getSession();
                request.setAttribute("session",session);
		return true;
	}
}
