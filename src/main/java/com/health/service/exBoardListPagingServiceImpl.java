package com.health.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.exBoardDAO;

@Service
public class exBoardListPagingServiceImpl implements exBoardService{
	@Autowired
	private exBoardDAO dao;
	@Override
	public void execute(Model model) {
		
		
	}

}
