package com.health.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.boardDAO;

@Service
public class BoardViewServiceImpl implements BoardService{
	@Autowired
	public boardDAO dao;
	@Override
	public int execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		String num = request.getParameter("num");
		model.addAttribute("boardview", dao.boardview(num));
		return 0;
	}
}