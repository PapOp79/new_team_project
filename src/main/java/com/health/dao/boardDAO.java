package com.health.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.health.dto.boardDTO;
import com.health.dto.boardpagingDTO;

@Repository
public class boardDAO {
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "com.health.mybatis.myMapper"; 
	
	public List<boardDTO> boardlist(boardpagingDTO Pdto) {
		return sqlSession.selectList(namespace + ".boardList", Pdto);
	}
	
	public boardDTO hitup(int num) {
		return sqlSession.selectOne(namespace+".hitup", num);
	}
	
	public boardDTO boardview(int num) {
		return sqlSession.selectOne(namespace+".boardview", num);
	}
	
	public int boardcontentup(boardDTO Bdto) {
		return sqlSession.insert(namespace + ".boardcontentup", Bdto);
	}
	
	public int boardcontentdel(int num) {
		return sqlSession.delete(namespace + ".boardcontentdel", num);
	}
	
	public int boardmodifychk(boardDTO Bdto) {
		return sqlSession.update(namespace + ".boardmodifychk", Bdto);
	}

	public List<boardDTO> boardsearch(boardDTO Bdto) {
		return sqlSession.selectList(namespace + ".boardsearch", Bdto);
	}
	
	public int getTotalPage() {
		return sqlSession.selectOne(namespace + ".boardgetTotalPage");
	}
	
	public List<boardDTO> paginglist(boardpagingDTO pc){
		return sqlSession.selectList(namespace + ".boardpagingList", pc);
	}
}