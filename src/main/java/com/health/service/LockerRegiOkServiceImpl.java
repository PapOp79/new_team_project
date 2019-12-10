package com.health.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.lockerDAO;
import com.health.dto.lockerDTO;

@Service
public class LockerRegiOkServiceImpl implements LockerService{
	@Autowired
	private lockerDAO dao;

	@Override
	public int execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		int lockerNum = Integer.parseInt(request.getParameter("lockerNum"));
		lockerDTO dto = dao.lockerRegiOkMember(lockerNum);
		model.addAttribute("lockerRegiOkMember",dto);
		return 0;
	}

}
