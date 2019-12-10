package com.health.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.lockerDAO;

@Service
public class LockerListServiceImpl implements LockerService{
	@Autowired
	private lockerDAO dao;

	@Override
	public int execute(Model model) {
		model.addAttribute("lockerNum",dao.lockerList());
		return 0;
	}
}
