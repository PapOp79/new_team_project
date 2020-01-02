package com.health.service;

import java.awt.Desktop;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.exBoardDAO;
import com.health.dto.exBoardDTO;
@Service
public class exBoardModifyServiceImpl implements exBoardService{
	@Autowired
	private exBoardDAO dao;
	
	@Override
	public void execute(Model model) {
		Map<String,Object>map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		exBoardDTO dto = new exBoardDTO();
		dto.setName(request.getParameter("modify-name"));
		dto.setTitle(request.getParameter("modify-title"));
		dto.setContent(request.getParameter("modify-content"));
		dto.setPart(Integer.parseInt(request.getParameter("modify-part")));
		dto.setNum(Integer.parseInt(request.getParameter("modify-num")));
		String str = request.getParameter("modify-link");
if(str.contains("youtube")) {
	dto.setLink(str);
	System.out.println("링크변경 없음"+str);
}else{
		String[] you = str.split("/");
		int size = you.length-1;
		String y = "https://youtube.com/embed/"+you[size];
		try { 
			Desktop.getDesktop().browse(new URI(y)); 
		} catch (IOException e) { e.printStackTrace(); 
		} catch (URISyntaxException e) { e.printStackTrace(); }
		dto.setLink(y);
		System.out.println("링크변경 있음"+y);
}
		dao.exBoard_modify(dto);
	}
}
