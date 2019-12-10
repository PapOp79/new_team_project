package com.health.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.userDAO;

@Service
public class PwCheckServiceImpl implements LoginService{
	
	@Autowired
	private userDAO dao;
	
	@Override
	public int execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		System.out.println(request.getParameter("idchk"));
		System.out.println(request.getParameter("pwchk"));
		String id = request.getParameter("idchk");
		String pwd = request.getParameter("pwchk");
		String dbpw = dao.pwchk(id);
		System.out.println(pwd);
		System.out.println(dbpw);
		
		if(dbpw!=null) {
			if(pwd.equals(dbpw)) {
				return 1;
			} else {
				return -1;	
			}			
		}
		return 0;
	}
}