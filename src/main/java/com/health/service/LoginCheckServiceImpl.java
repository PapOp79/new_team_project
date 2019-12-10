package com.health.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.StaticApplicationContext;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.health.dao.userDAO;
import com.health.dto.userDTO;

@Service
public class LoginCheckServiceImpl implements LoginService{
	@Autowired
	private userDAO dao;

	@Override
	public int execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		System.out.println("userId : " + request.getParameter("userId"));
		System.out.println("userPw : " + request.getParameter("userPw"));
		int rn =0;
		try {
			rn = dao.checkLogin(request.getParameter("userId"), request.getParameter("userPw"));
		} catch (Exception e) {
		
			e.printStackTrace();
		}	
		
		if(rn == 1) {
			userDTO user = dao.getMemberInfo(request.getParameter("userId"));
			HttpSession session = request.getSession();
			session.setAttribute("user_id", request.getParameter("userId").trim());		
			session.setAttribute("user_name", user.getUserName());
			System.out.println("UserAdmin : "+ user.getAdmin());
			session.setAttribute("Admin", user.getAdmin());
			return 1;
		}
		return 1;
	}	
}