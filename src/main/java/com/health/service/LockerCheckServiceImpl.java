package com.health.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.lockerDAO;

@Service
public class LockerCheckServiceImpl implements LockerService{
	@Autowired
	private lockerDAO dao;
	
	public static final int checkOK = 1;
	public static final int checkNO = -1;


	@Override
	public int execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		int lockerNum = Integer.parseInt(request.getParameter("lockerNum"));
		model.addAttribute("lockerNum",lockerNum);
		int lockerCheck = dao.lockerCheck(lockerNum);
		System.out.println("lockerCheck : " + lockerCheck);
		if(lockerCheck == 0) {
			return checkNO;
		}else if(lockerCheck == 1) {
			return checkOK;
		}else {
			System.out.println("락카 오류");
		}
		return 0;
	}
}
