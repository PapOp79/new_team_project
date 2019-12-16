package com.health.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.boardDAO;

@Service
public class BoardListServiceImpl implements BoardService{
	
	@Autowired
	private boardDAO dao;
	
	@Override
	public int execute(Model model) {
		model.addAttribute("boardList", dao.boardlist());
		return 0;
	}
}