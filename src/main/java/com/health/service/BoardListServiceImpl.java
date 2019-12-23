package com.health.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.boardDAO;
import com.health.dto.boardpagingDTO;

@Service
public class BoardListServiceImpl implements BoardService{
	
	@Autowired
	private boardDAO dao;
	
	@Override
	public int execute(Model model) {	
		model.addAttribute("boardList", dao.boardlist(pagingNum(model))); // 전체 게시글 가져오기
		
		return 0;
	}
	
	public boardpagingDTO pagingNum(Model model) {
		
		int start = 0;
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		
		if(request.getParameter("start") == null) {
			start = 0;
		}else {
			start = Integer.parseInt(request.getParameter("start"));
		}
		
		if(start == 0) start = 1;
		boardpagingDTO pc = new boardpagingDTO();
		int pageNum = 10;
		int totalPage = getTotalPage();
		int totEndPage = totalPage/pageNum + (totalPage%pageNum == 0 ? 0 : 1);
		
		
		int startPage = (start - 1) * pageNum + 1;
		int endPage = pageNum * start;
		
		pc.setTotEndPage(totEndPage);
		pc.setStartPage(startPage);
		pc.setEndPage(endPage);
		model.addAttribute("pc", pc);
		return pc;
	}

	private int getTotalPage() {
		return dao.getTotalPage();
	}
}