package com.health.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.health.dto.exBoardDTO;
import com.health.dto.exBoardPagingDTO;
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
public List<exBoardDTO> exBoard_Content(int num) {
	
	return sqlSession.selectOne(namespace+".exboardcontent",num);
}

public int exBoard_delete(int num) {
	return sqlSession.insert(namespace+".exboarddelete",num);
}

public int exBoard_modify(exBoardDTO dto) {
	return sqlSession.update(namespace+".exboardmodify",dto);
}
public List<exBoardDTO> paginglist(exBoardPagingDTO pc){
	return sqlSession.selectList(namespace + ".boardpagingList", pc);
}

public int getTotalPage() {
	return sqlSession.selectOne(namespace + ".exBoardgetTotalPage");
	
}

}
