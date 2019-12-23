package com.health.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.boardDAO;
import com.health.dto.boardDTO;

@Service
public class BoardSearchCheckServiceImpl implements BoardService{
	@Autowired
	private boardDAO dao;
	
	public int execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		boardDTO Bdto = new boardDTO();
		
		Bdto.setTitle(request.getParameter("searchtype"));
		Bdto.setContent(request.getParameter("value"));
		
		model.addAttribute("boardList", dao.boardsearch(Bdto));
		
		return 0;
	}
}