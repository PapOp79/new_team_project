package com.health.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.health.dto.lockerDTO;
import com.health.dto.pageDTO;
import com.health.dto.userDTO;
import com.health.dao.userDAO;

@Repository
public class userDAO {
	//	public static final int LOGIN_SUCCESS = 1;
	//	public static final int LOGIN_FAIL_ID = -1;
	//	public static final int LOGIN_FAIL_PW = 0;
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private DataSource ds;
	private static userDAO dao = new userDAO();

	private static final String namespace = "com.health.mybatis.myMapper"; 

	@Autowired 
	private SqlSession sqlSession;

	public int checkLogin(String id, String pwd) throws Exception{ 
		userDTO dto = new userDTO();

		/*
//======================================================================================================
		List<userDTO> listA = new ArrayList();
		listA = sqlSession.selectList(namespace + ".idCheck");
		System.out.println(listA.toString());

		listA.toString();
		if(listA.get(0).equals(id)) {
			System.out.println("일치");
		}else {
			System.out.println("불일치");
		}
//======================================================================================================
		 */
		dto = sqlSession.selectOne(namespace + ".loginCheck",id); //하나의 데이터만 가져올때 
		try {
			if(id.equals(dto.getUserId())){
				if(pwd.equals(dto.getUserPw())) { 
					return 1;
				}else { 
					return 0; 
				}
			}else {
				return -1;
			}
		}catch(Exception e){
			e.printStackTrace();
		}return -1;
	}



	public userDTO getMemberInfo(String id) {
		userDTO dto = new userDTO();
		return sqlSession.selectOne(namespace + ".loginCheck",id); //하나의 데이터만 가져올때 
	}


	public static userDAO getInstance() {
		if(dao == null) dao = new userDAO();
		return dao;
	}


	public boolean isDuplicateId(String id) throws Exception {

		String sql = "SELECT userid "
				+ "FROM userDB "
				+ "WHERE userid=?";

		//true硫� 以묐났, false硫� 以묐났X
		boolean flag = true;

		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if(rs.next()) {
				System.out.println("ID媛� 以묐났�맖!");
				flag = true;
			} else {
				System.out.println("ID媛� 以묐났�릺吏� �븡�븯�쓬!");
				flag = false;
			}			
		} finally {
			conn.close();
			pstmt.close();
			rs.close();
		}

		return flag;
	}

	public int joinCheck(userDTO Udto) {
		return sqlSession.insert(namespace + ".joinCheck", Udto);
	}
	
	public int delsuccess(String id) {
		return sqlSession.delete(namespace + ".delsuccess", id);
	}

	public int userInfoModify(userDTO Udto) {
		System.out.println(Udto.toString());
		System.out.println("modify 실행");
		int result=0;
		try {
			result = sqlSession.update(namespace + ".userInfoModify", Udto);
		}catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("dao result : "+result);
		return result;
	}

	public String pwchk(String id) {
		return sqlSession.selectOne(namespace + ".pwchk", id);
	}

	public int updateTicket(String id) {
		return sqlSession.update(namespace + ".updateTicket", id);
	}
	
	public List<userDTO> userList() { 
		return sqlSession.selectList(namespace + ".userList"); //여러개의 데이터를 가져올떄 
	} 
	
	public List<userDTO> trainerList() { 
		return sqlSession.selectList(namespace + ".trainerList"); //여러개의 데이터를 가져올떄 
	}
	
	//-----paging----------------------------------------------------------
	public int getTotalPage() {
	      return sqlSession.selectOne(namespace + ".getTotalPage");
	   }
	   	   
	   public pageDTO pagingNum(int start) {
	      System.out.println("start : "+start);
	      if(start == 0)start=1;
	      pageDTO pc = new pageDTO();
	      int pageNum=3;
	      int totalPage = getTotalPage();
	      int totEndPage = totalPage/pageNum + (totalPage%pageNum == 0 ?0 :1);
	      int startPage = (start - 1) * pageNum + 1;
	      int endPage = pageNum * start;
	      pc.setTotEndPage(totEndPage);
	      pc.setStartPage(startPage);
	      pc.setEndPage(endPage);
	      return pc;
	   }
	
	
}