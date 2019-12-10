package com.health.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.health.dao.userDAO;
import com.health.service.LockerService;
import com.health.service.LoginService;

@Controller
public class mainController {
	private LoginService login;
	private LockerService locker;
	private ApplicationContext applicationContext = applicationContextprovider.getApplicationContext();

	@RequestMapping("index")
	public String test() {
		return "index";
	}

	@RequestMapping("ex")
	public String ex() {
		return "ex";
	}

	@RequestMapping("mypage")
	public String mypage() {
		return "mypage";
	}

	@RequestMapping("login")
	public String login() {
		return "login";
	}
	@RequestMapping("machineView")
	public String machineView() {
		return "machineView";
	}
	@RequestMapping("board")
	public String board() {
		return "board";
	}

	@RequestMapping("mypagechk")
	public String mypagechk() {
		return "mypagechk";
	}
	
	@RequestMapping("delete")
	public String delete() {
		return "delete";
	}
	
	@RequestMapping("introduce")
	public String introduce() {
		return "introduce";
	}
	
	@RequestMapping("mypagepwchk")
	public String mypagepwchk(Model model, HttpServletRequest request) {
		model.addAttribute("request",request);
		login = (LoginService) applicationContext.getBean("pwCheckServiceImpl");
		int pwchksuccess = login.execute(model);
		if(pwchksuccess == 1) {
			return "redirect:mypage";
		} else {
			return "redirect:index";
		}
	}
	
	@RequestMapping("login-controller")
	public String login_controller(Model model, HttpServletRequest request) {
		model.addAttribute("request",request);
		System.out.println("이거 로그인 " + request.getParameter("userId"));
		System.out.println("이거 로그인 " + request.getParameter("userPw"));
		
		login = (LoginService) applicationContext.getBean("loginCheckServiceImpl");
		login.execute(model);
		
		return "redirect:loginCheckTest";
	}

	@RequestMapping("modify-controller")
	public String modify_controller(Model model, HttpServletRequest request) {
		model.addAttribute("request",request);
		System.out.println("userId12 = " + request.getParameter("modifyId"));
		System.out.println("userPw12 = " + request.getParameter("modifyPw"));
		
		login = (LoginService) applicationContext.getBean("modifyCheckServiceImpl");
		login.execute(model);
		
		return "index";
	}

	@RequestMapping("delete-controller")
	public String delete_controller(Model model, HttpServletRequest request) {
		model.addAttribute("request",request);
		
		login = (LoginService) applicationContext.getBean("deleteCheckServiceImpl");
		login.execute(model);
		
		return "index";
	}
	
	@RequestMapping("loginCheckTest")
	public String loginCheckTest() {
		return "loginCheckTest";
	}
	
	
	@RequestMapping("register")
	public String register() {
		return "register";
	}

	@RequestMapping("trainerRegister")
	public String trainerRegister() {
		return "trainerRegister";
	}
	
	@RequestMapping("logout")
	   public String logout(HttpServletRequest requset) {
	      requset.getSession().invalidate();
	      return "redirect:index";
	   }
	   
	   @RequestMapping("join-controller")
	   public String join_controller(Model model, HttpServletRequest request) {
	      model.addAttribute("request",request);
	      
	      login = (LoginService) applicationContext.getBean("joinCheckServiceImpl");
	      login.execute(model);
	   
	      return "index";
	   }
	   
	   //--------------------------락카-----------------------------------------------------------------------------
	   @RequestMapping("lockerView")
	   public String rockerView(Model model) {
		  locker = (LockerService) applicationContext.getBean("lockerListServiceImpl");
		  locker.execute(model);
	      return "lockerView";
	   }
	   
	   
	   @RequestMapping("lockerJoin")
	   public String lockerJoin(Model model, HttpServletRequest request) {
		   model.addAttribute("request",request);
		   locker = (LockerService) applicationContext.getBean("lockerJoinServiceImpl");
		   locker.execute(model);
		   return "lockerJoinSuccess";
	   }
	   
	   @RequestMapping("lockerCheck")
	   public String lockerCheck(Model model, HttpServletRequest request) {
		   model.addAttribute("request",request);
		      
		   locker = (LockerService) applicationContext.getBean("lockerCheckServiceImpl");
		   int rn = locker.execute(model);
		   
		   if(rn == 1) {
			   System.out.println(rn);
			   return "redirect:lockerRegisterOkPopup";
		   }else {
			   System.out.println(rn);
			   return "redirect:lockerRegisterNoPopup";
		   }
	   }
	   
	   @RequestMapping("lockerRegisterOkPopup")
	   public String lockerRegisterOkPopup(Model model, HttpServletRequest request) {
		   model.addAttribute("request",request);
		   locker = (LockerService) applicationContext.getBean("lockerRegiOkServiceImpl");
		   locker.execute(model);
		   return "lockerRegisterOkPopup";
	   }
	   
	   @RequestMapping("lockerRegisterNoPopup")
	   public String lockerRegisterNoPopup() {
		   return "lockerRegisterNoPopup";
	   }
	   
	   @RequestMapping("lockerModify")
	   public String lockerModify(Model model, HttpServletRequest request) {
		   model.addAttribute("request",request);
		   locker = (LockerService) applicationContext.getBean("lockerModifyServiceImpl");
		   locker.execute(model);
		   return "redirect:lockerModifyOk";
	   }
	   
	   @RequestMapping("lockerModifyOk")
	   public String lockerModifyOk() {
		   return "lockerModifyOk";
	   }
	   
	   @RequestMapping("lockerDelete")
	   public String lockerDelete(Model model, HttpServletRequest request) {
		   model.addAttribute("request",request);
		   locker = (LockerService) applicationContext.getBean("lockerDeleteServiceImpl");
		   locker.execute(model);
		   return "";
	   }	
}