package com.health.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.exBoardDAO;
@Service
public class exBoardListServiceImpl implements exBoardService{

	@Autowired
	public exBoardDAO dao;
	@Override
	public void execute(Model model) {
		
		model.addAttribute("exList",dao.exList());
	}

}
