package com.health.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.ticketDAO;
import com.health.dao.userDAO;
import com.health.dto.ticketDTO;

@Service
public class ticketListViewServiceImpl implements TicketService{

	@Autowired
	private ticketDAO dao;
	
	@Override
	public int execute(Model model) {
		Map<String, Object> map = model.asMap();
	    HttpServletRequest request = (HttpServletRequest) map.get("request");
		model.addAttribute("ticketlist", dao.ticketList());
		
		return 0;
	}

}
