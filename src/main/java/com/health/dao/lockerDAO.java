package com.health.dao;



import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.health.dto.lockerDTO;

@Component
public class lockerDAO {
	private static userDAO dao = new userDAO();
	private static final String namespace = "com.health.mybatis.myMapper"; 

	@Autowired 
	private SqlSession sqlSession;
	
	public List<lockerDTO> lockerList() { 
		return sqlSession.selectList(namespace + ".lockerList"); //여러개의 데이터를 가져올떄 
	} 
	
	public lockerDTO getlockerMemberInfo(int num) {
		return sqlSession.selectOne(namespace + ".lockerMemberInfo",num); //하나의 데이터만 가져올때 
	}
	
	public int lockerJoin(lockerDTO Ldto) {
		return sqlSession.update(namespace + ".lockerJoin", Ldto);
	}
	
	public int lockerCheck(int lockerNum) {
		return sqlSession.selectOne(namespace + ".lockerCheck", lockerNum);
	}
	
	public lockerDTO lockerRegiOkMember(int lockerNum) {
		return sqlSession.selectOne(namespace + ".lockerRegiOkMember",lockerNum); //하나의 데이터만 가져올때 
	}
	
	public int lockerModify(lockerDTO Ldto) {
		return sqlSession.update(namespace + ".lockerModify", Ldto);
	}
	
	public int lockerDelete(lockerDTO Ldto) {
		return sqlSession.update(namespace + ".lockerDelete", Ldto);
	}
	
	
	

}
