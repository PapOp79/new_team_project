package com.health.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.boardDAO;
import com.health.dao.commentDAO;

@Service
public class BoardViewServiceImpl implements BoardService{
	@Autowired
	public boardDAO dao;
	@Autowired
	public commentDAO Cdao;
	@Override
	public int execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		int num = Integer.parseInt(request.getParameter("num"));
		dao.hitup(num);
		model.addAttribute("boardview", dao.boardview(num));
		model.addAttribute("Commentlist", Cdao.commentlist(num));
		
		return 0;
	}
}