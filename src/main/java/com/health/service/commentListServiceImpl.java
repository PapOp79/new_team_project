package com.health.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.commentDAO;
import com.health.dto.commentDTO;

@Service
public class commentListServiceImpl implements CommentService{
	@Autowired
	private commentDAO Cdao;
	
	@Override
	public int execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		System.out.println("num = "+request.getParameter("num"));
		int num = Integer.parseInt(request.getParameter("num").trim());
		
		model.addAttribute("Commentlist", Cdao.commentlist(num));
		
		return Cdao.commentlist(num).size();
	}
}