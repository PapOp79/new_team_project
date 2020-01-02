package com.health.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.exBoardDAO;
import com.health.dto.exBoardDTO;
@Service
public class exBoardDeleteServiceImpl implements exBoardService{
	@Autowired
	private exBoardDAO dao;
	
	@Override
public void execute(Model model) {
		Map<String,Object>map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		
		int contentNum= Integer.parseInt(request.getParameter("num"));
		dao.exBoard_delete(contentNum);
}
}
