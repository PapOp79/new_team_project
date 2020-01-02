package com.health.service;

import java.awt.Desktop;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.exBoardDAO;
import com.health.dto.exBoardDTO;

@Service
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
	
		  Date date = new Date();
	      String currentDate = new SimpleDateFormat("yyyy-MM-dd").format(date);
	      java.util.Date date1=null;

	      try {
	        date1 = new SimpleDateFormat("yyyy-MM-dd").parse(currentDate);
	      } catch (Exception e) {
	         e.printStackTrace();  
	      }
	      java.sql.Date savedate = new java.sql.Date(date1.getTime());
	      dto.setSavedate(savedate);
		
		String str = request.getParameter("link");
		String[] you = str.split("/");
		int size = you.length-1;
		String y = "https://youtube.com/embed/"+you[size];
		dto.setLink(y);
		
		dao.exBoard_write(dto);
	}
}
