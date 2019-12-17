package com.health.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.ticketDAO;

@Service
public class myTicketServiceImpl implements TicketService{
	@Autowired
	private ticketDAO dao;

	@Override
	public int execute(Model model) {
		Map<String, Object> map = model.asMap();
	    HttpServletRequest request = (HttpServletRequest) map.get("request");
	    HttpSession session = request.getSession();
	    String sessionId = (String)session.getAttribute("user_id");
		model.addAttribute("myTicketlist", dao.myTicketlist(sessionId));
		
		return 0;
	}

}
