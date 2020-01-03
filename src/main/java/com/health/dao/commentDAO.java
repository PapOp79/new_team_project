package com.health.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


import com.health.dto.commentDTO;

@Component
public class commentDAO {
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "com.health.mybatis.myMapper";

	
	public int commentregister(commentDTO Cdto) {
		return sqlSession.insert(namespace + ".commentregister", Cdto);
	}

	public List<commentDTO> commentlist(int boardnum) {
		return sqlSession.selectList(namespace + ".commentlist", boardnum);
	}
	
	public List<commentDTO> commentlist_id(int boardnum) {
		return sqlSession.selectList(namespace + ".commentlist_id", boardnum);
	}
}