package com.health.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.health.dto.exBoardDTO;

@Repository
public class exBoardDAO {
	private static final String namespace="com.care.mybatis.Mapper";
@Autowired
private SqlSession sqlSession;

public List<exBoardDTO> exList(){
	return sqlSession.selectList(namespace+".exlist");
}



}
