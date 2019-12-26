package com.health.service;

import java.text.SimpleDateFormat;
import java.sql.Date;
import java.util.Calendar;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.ticketDAO;
import com.health.dao.userDAO;
import com.health.dto.ticketBuyerDTO;

@Service
public class ticketRegisterServiceImpl implements TicketService{

	@Autowired
	private ticketDAO dao;
	
	@Autowired
	private userDAO Udao;
	
	@Override
	public int execute(Model model) {
		Map<String, Object> map = model.asMap();
	    HttpServletRequest request = (HttpServletRequest) map.get("request");
	    ticketBuyerDTO TBdto = new ticketBuyerDTO();
	    
	    
	    System.out.println("ticketduration = "+request.getParameter("ticketDuration"));
	    
		TBdto.setTicketBuyerId(request.getParameter("sessionId"));
		TBdto.setTicketBuyerName(request.getParameter("sessionName"));
		TBdto.setTicketPrice(Integer.parseInt(request.getParameter("ticketPrice")));
		TBdto.setTicketDuration(Integer.parseInt(request.getParameter("ticketDuration").trim()));
		
		// get date ---------------------------------------------------------------
		
		String ticketStartDateStr = request.getParameter("ticketStartDate");
	    String ticketEndDateStr = null;
	    
	    SimpleDateFormat form = new SimpleDateFormat("yyyy-MM-dd");
	      java.util.Date ticketStartDate=null;
	      java.util.Date ticketEndDate=null;
		try {
			ticketStartDate = form.parse(ticketStartDateStr);
		} catch (Exception e) {
			e.printStackTrace();
		}
			ticketEndDate = ticketStartDate;
			Calendar cal = Calendar.getInstance();
			cal.setTime(ticketEndDate);
			cal.add(Calendar.DATE , (Integer.parseInt(request.getParameter("ticketDuration"))*30));
			ticketEndDate = cal.getTime();
			
			 java.sql.Date sqlStartDate = new java.sql.Date(ticketStartDate.getTime());
		     java.sql.Date sqlEndDate = new java.sql.Date(ticketEndDate.getTime());
		//----------------------------------------------------------------------------------------------
			TBdto.setTicketStartDate(sqlStartDate);
			TBdto.setTicketEndDate(sqlEndDate);
			
			System.out.println("ticket duration : "+TBdto.getTicketDuration());
			int result = dao.registerTicket(TBdto);
			
			if(result == 1) {
				System.out.println("test : "+request.getParameter("sessionId"));
				int user_result=Udao.updateTicket(request.getParameter("sessionId").trim());
				if(user_result == 1) {
					return 1;
				}else {return 0;}
			} else {return 0;}
	}

}
