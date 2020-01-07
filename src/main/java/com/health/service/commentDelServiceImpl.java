package com.health.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.commentDAO;
@Service
public class commentDelServiceImpl implements CommentService{
	
	@Autowired
	private commentDAO Cdao;

	public int execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		return Cdao.commentdel(Integer.parseInt(request.getParameter("delnum")));
		
	}

}
