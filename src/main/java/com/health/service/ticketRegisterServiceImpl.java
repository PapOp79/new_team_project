package com.health.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.ticketDAO;
import com.health.dto.ticketBuyerDTO;

@Service
public class ticketRegisterServiceImpl implements TicketService{

	@Autowired
	private ticketDAO dao;
	
	@Override
	public int execute(Model model) {
		Map<String, Object> map = model.asMap();
	    HttpServletRequest request = (HttpServletRequest) map.get("request");
	    
	    
		ticketBuyerDTO TBdto = new ticketBuyerDTO();
		TBdto.setTicketBuyerId(request.getParameter("sessionId"));
		TBdto.setTicketBuyerName(request.getParameter("sessionName"));
		TBdto.setTicketPrice(Integer.parseInt(request.getParameter("ticketPrice")));
	    
		return 0;
	}

}
