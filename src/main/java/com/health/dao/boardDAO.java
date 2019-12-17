package com.health.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.health.dto.boardDTO;

@Repository
public class boardDAO {
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "com.health.mybatis.myMapper"; 
	
	public List<boardDTO> boardlist() {
		return sqlSession.selectList(namespace + ".boardList");
	}
	
	public boardDTO boardInfo(String name) {
		return sqlSession.selectOne(namespace + ".boardlistone", name);
	}
}