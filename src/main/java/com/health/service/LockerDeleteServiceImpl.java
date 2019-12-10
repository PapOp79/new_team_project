package com.health.service;

import java.text.SimpleDateFormat;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.lockerDAO;
import com.health.dto.lockerDTO;

@Service
public class LockerDeleteServiceImpl implements LockerService{
	@Autowired
	private lockerDAO dao;
	
	@Override
	public int execute(Model model) {
		Map<String, Object> map = model.asMap();
	      HttpServletRequest request = (HttpServletRequest) map.get("request");
	      
	      System.out.println(request.getParameter("lockerNum"));
	      lockerDTO Ldto = new lockerDTO();
	      Ldto.setLockerNum(Integer.parseInt(request.getParameter("lockerNum")));
	      Ldto.setLockerName(null);
	      Ldto.setLockerStartDate(null);
	      Ldto.setLockerEndDate(null);
	      Ldto.setLockerCheck(0);
	      dao.lockerDelete(Ldto);
	      
		return 0;
	}

}
