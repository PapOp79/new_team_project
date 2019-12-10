package com.health.service;

import java.text.SimpleDateFormat;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.userDAO;
import com.health.dto.userDTO;


@Service
public class joinCheckServiceImpl implements LoginService{

   @Autowired
   private userDAO dao;
   
   @Override
   public int execute(Model model) {
      Map<String, Object> map = model.asMap();
      HttpServletRequest request = (HttpServletRequest) map.get("request");
      userDTO Udto = new userDTO();
      Udto.setAdmin(Integer.parseInt(request.getParameter("Admin")));
      Udto.setUserId(request.getParameter("userId"));
      Udto.setUserPw(request.getParameter("userPw"));
      Udto.setUserEmail(request.getParameter("userEmail"));
      Udto.setUserAge(Integer.parseInt(request.getParameter("userAge")));
      Udto.setUserName(request.getParameter("userName"));
      Udto.setUserHeight(Integer.parseInt(request.getParameter("userHeight")));
      Udto.setUserWeight(Integer.parseInt(request.getParameter("userWeight")));
      Udto.setUserSex(request.getParameter("userSex"));
      
      int result = dao.joinCheck(Udto);
      String joinResult;
      if(result==1) {
         return 1;
         
      } else { 
         return 0;
      }
   }

}