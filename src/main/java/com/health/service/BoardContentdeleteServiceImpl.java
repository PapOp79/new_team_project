package com.health.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.boardDAO;

@Service
public class BoardContentdeleteServiceImpl implements BoardService{
	@Autowired
	private boardDAO dao;
	
	@Override
	public int execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		System.out.println(request.getParameter("num"));
		
		dao.boardcontentdel(Integer.parseInt(request.getParameter("num")));
		return 0;
	}
}