package com.health.service;



import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.StaticApplicationContext;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.health.dao.ticketDAO;
import com.health.dao.userDAO;
import com.health.dto.ticketBuyerDTO;
import com.health.dto.userDTO;

@Service
public class LoginCheckServiceImpl implements LoginService{
	@Autowired
	private userDAO dao;
	@Autowired
	private ticketDAO Tdao;

	@Override
	public int execute(Model model) throws Exception {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		int rn =0;
		try {
			rn = dao.checkLogin(request.getParameter("userId"), request.getParameter("userPw"));
		} catch (Exception e) {	return 0;}	
		
		if(rn == 1) {                                         // 로그인 성공의 경우
			
			// 세션에 필요한 값들 저장
			userDTO user = dao.getMemberInfo(request.getParameter("userId"));
			HttpSession session = request.getSession();
			session.setAttribute("user_id", request.getParameter("userId").trim());		
			session.setAttribute("user_name", user.getUserName());
			session.setAttribute("user_ticket", user.getTicket());
			session.setAttribute("Admin", user.getAdmin());
			
			// 회원권 날짜 확인
			
			Date currdate;
			Date getlastdate;
			
			System.out.println(request.getParameter("userId"));
			ticketBuyerDTO TBdto = Tdao.checkTicketValid(request.getParameter("userId"));
			try {
				getlastdate = TBdto.getTicketEndDate();			
			} catch (Exception e) {	return 1;}
			
			Date getcurrdate = new Date();
			SimpleDateFormat currdateformat = new SimpleDateFormat("yyyy-MM-dd");
			SimpleDateFormat lastdateformat = new SimpleDateFormat("yyyy-MM-dd");
			
			
			String currdatestr = currdateformat.format(getcurrdate);
			String lastdatestr = currdateformat.format(getlastdate);
			
			Date cdate = currdateformat.parse(currdatestr);
			Date ldate = currdateformat.parse(lastdatestr);
			
			Calendar currentDate = Calendar.getInstance();
			Calendar lastDate = Calendar.getInstance();

			currentDate.setTime(cdate);
			lastDate.setTime(ldate);
			
			int compare = lastDate.compareTo(currentDate);
			
			if(compare==1) {
				System.out.println("compare="+compare);
			} else {
				Tdao.ticketValidOff(request.getParameter("userId"));
				session.setAttribute("user_ticket", user.getTicket());
				
			}

			return 1;
		}
		return 1;
	}	
}