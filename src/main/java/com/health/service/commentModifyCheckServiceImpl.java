package com.health.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.commentDAO;
import com.health.dto.commentDTO;

@Service
public class commentModifyCheckServiceImpl implements CommentService{
	@Autowired
	private commentDAO Cdao;
	
	public int execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		commentDTO Cdto = new commentDTO();
		Cdto.setCommentation(request.getParameter("commentation"));
		Cdto.setCommentnum(Integer.parseInt(request.getParameter("commentNum")));
		
		int rn = Cdao.commentmodifychk(Cdto);
		System.out.println(rn);
		
		if(rn == 1) {
			return 1;
		}else {
			return 0;
		}
	}
}