package com.health.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.health.dto.lockerDTO;
import com.health.dto.ticketBuyerDTO;
import com.health.dto.ticketDTO;

@Repository
public class ticketDAO {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private DataSource ds;
	private static userDAO dao = new userDAO();

	private static final String namespace = "com.health.mybatis.myMapper"; 

	@Autowired 
	private SqlSession sqlSession;
	
	public List<ticketDTO> ticketList() { 
		return sqlSession.selectList(namespace + ".ticketList"); //여러개의 데이터를 가져올떄 
	} 

	public int registerTicket(ticketBuyerDTO TBdto) { 
		return sqlSession.insert(namespace + ".registerTicket", TBdto); //여러개의 데이터를 가져올떄 
	} 
	
	public List<ticketBuyerDTO> myTicketlist(String id) { 
		return sqlSession.selectList(namespace + ".myTicketlist", id); //여러개의 데이터를 가져올떄 
	} 

	public ticketBuyerDTO checkTicketValid(String id) { 
		return sqlSession.selectOne(namespace + ".checkTicketValid", id); //여러개의 데이터를 가져올떄 
	} 

	public int ticketValidOff(String id) { 
		return sqlSession.update(namespace + ".ticketValidOff", id); //여러개의 데이터를 가져올떄 
	} 
	
}
