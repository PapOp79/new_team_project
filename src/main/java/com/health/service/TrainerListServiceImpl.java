package com.health.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.userDAO;

@Service
public class TrainerListServiceImpl implements LoginService{
	@Autowired
	private userDAO dao;

	@Override
	public int execute(Model model) {
		model.addAttribute("trainerList",dao.trainerList());
		return 0;
	}
}
