package com.health.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.boardDAO;
import com.health.dto.boardDTO;

@Service
public class BoardWriteContentServiceImpl implements BoardService{
	@Autowired
	private boardDAO dao;
	
	@Override
	public int execute(Model model) {
		Map<String, Object> map = model.asMap();
	    HttpServletRequest request = (HttpServletRequest) map.get("request");
	    boardDTO Bdto = new boardDTO();
	    
	    Bdto.setSecret(Integer.parseInt(request.getParameter("secret")));
	    Bdto.setTitle(request.getParameter("title"));
	    Bdto.setName(request.getParameter("name"));
	    Bdto.setContent(request.getParameter("content"));
	      
	    int result = dao.boardcontentup(Bdto);
	    if(result==1) {
	       return 1;
	    } else { 
	       return 0;
	    }
	}
}