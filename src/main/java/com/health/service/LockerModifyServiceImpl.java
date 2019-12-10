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
public class LockerModifyServiceImpl implements LockerService{
	@Autowired
	private lockerDAO dao;

	@Override
	public int execute(Model model) {
		 Map<String, Object> map = model.asMap();
	      HttpServletRequest request = (HttpServletRequest) map.get("request");
	      lockerDTO Ldto = new lockerDTO();
	      
	      System.out.println(request.getParameter("lockerNum"));
	      Ldto.setLockerNum(Integer.parseInt(request.getParameter("lockerNum")));
	      
	      System.out.println(request.getParameter("lockerName"));
	      Ldto.setLockerName(request.getParameter("lockerName"));

	      //-------------time----------------------
	      String lockerStartDate = request.getParameter("lockerStartDate");
	      String lockerEndDate = request.getParameter("lockerEndDate");
	      SimpleDateFormat form = new SimpleDateFormat("yyyy-MM-dd");
	      java.util.Date date1=null;
	      java.util.Date date2=null;

	      try {
	         date1 = form.parse(lockerStartDate);
	         date2 = form.parse(lockerEndDate);
	      } catch (Exception e) {
	    	  e.printStackTrace();  
	      }
	      java.sql.Date sqlDate1 = new java.sql.Date(date1.getTime());
	      java.sql.Date sqlDate2 = new java.sql.Date(date2.getTime());
	      Ldto.setLockerStartDate(sqlDate1);
	      Ldto.setLockerEndDate(sqlDate2);
	      //---------------------------------------------------
	      
	      
	      int result = dao.lockerModify(Ldto);
	      String joinResult;
	      if(result==0) {
	    	  joinResult = "lockerjoinfail";
	         System.out.println(joinResult);
	      } else { 
	    	  joinResult = "lockerjoinsuccess";
	         System.out.println(joinResult);
	      }
		return 0;
	}
	
	
}
