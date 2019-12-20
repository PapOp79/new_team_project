package com.health.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.commentDAO;
import com.health.dto.commentDTO;
@Service
public class commentRegisterServiceImpl implements CommentService {

	@Autowired
	public commentDAO dao;
	@Override
	public int execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		commentDTO Cdto = new commentDTO();
		Cdto.setBoardnum(Integer.parseInt(request.getParameter("num")));
		Cdto.setCommentation(request.getParameter("commentation"));
		Cdto.setCommentId(request.getParameter("commentId"));
		Cdto.setCommentsecret(Integer.parseInt(request.getParameter("commentsecret")));
		
		dao.commentregister(Cdto);
		return 0;	
	}
}
