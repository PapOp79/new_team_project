package com.health.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.boardDAO;
import com.health.dto.boardDTO;

@Service
public class BoardModifyCheckServiceImpl implements BoardService{
	@Autowired
	private boardDAO dao;
	
	public int execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		boardDTO Bdto = new boardDTO();
		Bdto.setNum(Integer.parseInt(request.getParameter("num")));
		Bdto.setName(request.getParameter("name"));
		Bdto.setTitle(request.getParameter("title"));
		Bdto.setContent(request.getParameter("content"));
		
		int rn = dao.boardmodifychk(Bdto);
		System.out.println("rn");
		
		if(rn == 1) {
			boardDTO board = dao.boardview(Integer.parseInt(request.getParameter("num")));
			HttpSession session = request.getSession();
			session.setAttribute("num", board.getNum());
			return 1;
		}
		return 0;
	}
}