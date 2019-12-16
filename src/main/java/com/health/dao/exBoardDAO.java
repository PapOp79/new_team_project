package com.health.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.health.dto.exBoardDTO;

@Component
public class exBoardDAO {
	private static final String namespace="com.health.mybatis.myMapper";
@Autowired
private SqlSession sqlSession;

public List<exBoardDTO> exList(){
	return sqlSession.selectList(namespace+".exlist");
}

public int exBoard_write(exBoardDTO dto) {
		return sqlSession.insert(namespace+".exboardwrite",dto);
}
public exBoardDTO exBoard_Content(int num) {
	
	return sqlSession.selectOne(namespace+".exboardcontent",num);
}

}
