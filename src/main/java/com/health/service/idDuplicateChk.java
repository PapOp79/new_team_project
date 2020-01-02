package com.health.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.userDAO;
import com.health.dto.userDTO;

@Service
public class idDuplicateChk implements LoginService{

	@Autowired
	private userDAO dao;
	
	@Override
	public int execute(Model model) throws Exception {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		System.out.println("userId = "+ request.getParameter("userId"));
		System.out.println("int result="+dao.idDuplicateChk(request.getParameter("userId")));
		String DBid = dao.idDuplicateChk(request.getParameter("userId"));
		System.out.println("DBid:"+DBid);
//		int NOT_OK = 1;
//		int OK = 0;
		int test;
		
		if(DBid!=null) {
			System.out.println("not null!");
			test = 1;
		} else {
			System.out.println("null!");
			test = 0;			
		}
		System.out.println("service" + test);
		return test;
	}

}
