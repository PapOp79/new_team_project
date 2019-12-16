package com.health.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.exBoardDAO;
import com.health.dto.exBoardDTO;

@Repository
public class exBoardSaveServiceImpl implements exBoardService{

	
	@Autowired
	private exBoardDAO dao;
	
	@Override
	public void execute(Model model) {
		Map<String,Object>map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		exBoardDTO dto = new exBoardDTO();
		dto.setName(request.getParameter("name"));
		dto.setTitle(request.getParameter("title"));
		dto.setContent(request.getParameter("content"));
		dto.setPart(Integer.parseInt(request.getParameter("part")));
		dao.exBoard_write(dto);
		
	}

}
