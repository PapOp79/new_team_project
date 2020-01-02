package com.health.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.commentDAO;
import com.health.dto.commentDTO;

@Service
public class commentListReplyIdServiceImpl implements CommentListService{
	@Autowired
	private commentDAO Cdao;
	
	@Override
	public List<commentDTO> execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		List<commentDTO> reply_id = new ArrayList<commentDTO>();
		int num = Integer.parseInt(request.getParameter("num").trim());
		reply_id = Cdao.commentlist_id(num);

		return reply_id;
	}
}