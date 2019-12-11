package com.health.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.userDAO;
import com.health.dto.userDTO;

@Service
public class UserListServiceImpl implements LoginService{
	@Autowired
	private userDAO dao;

	@Override
	public int execute(Model model) {
		model.addAttribute("userList",dao.userList());
		return 0;
	}
}
