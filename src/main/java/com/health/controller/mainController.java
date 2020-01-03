package com.health.controller;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xml.ws.RequestWrapper;

import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.health.dao.userDAO;
import com.health.dto.commentDTO;
import com.health.service.BoardService;
import com.health.service.CommentListService;
import com.health.service.CommentService;
import com.health.service.LockerService;
import com.health.service.LoginService;
import com.health.service.TicketService;
import com.health.service.commentListServiceImpl;
import com.health.service.exBoardService;

import com.health.service.exBoardListServiceImpl;

@Controller
public class mainController {
	private LoginService login;
	private LockerService locker;
	private TicketService ts;
	private BoardService board;
	private exBoardService eboard;
	private CommentService comment;
	private CommentListService commentL;
	private ApplicationContext applicationContext = applicationContextprovider.getApplicationContext();

	@RequestMapping("index")
	public String test() {
		return "index";
	}

	@RequestMapping("ex")
	public String ex(HttpServletRequest request, Model model) {
		eboard = (exBoardService)applicationContext.getBean("exBoardListServiceImpl");
		eboard.execute(model);
	
		return "ex1";
	}
	
	@RequestMapping("ticketPop")
	public String ticketPop() {
		return "ticketPop";
	}

	@RequestMapping("mypage")
	public String mypage() {
		return "mypage";
	}

	@RequestMapping("login")
	public String login() {
		return "login";
	}
	
	@RequestMapping("ticket")
	public String ticket() {
		return "ticket";
	}
	@RequestMapping("machineView")
	public String machineView() {
		return "machineView";
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
	public String mypagepwchk(Model model, HttpServletRequest request) throws Exception {
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
	public String login_controller(Model model, HttpServletRequest request) throws Exception {
		model.addAttribute("request",request);
		
		login = (LoginService) applicationContext.getBean("loginCheckServiceImpl");
		login.execute(model);
		
		return "redirect:loginCheckTest";
	}

	@RequestMapping("modify-controller")
	public String modify_controller(Model model, HttpServletRequest request) throws Exception {
		model.addAttribute("request",request);
		
		login = (LoginService) applicationContext.getBean("modifyCheckServiceImpl");
		login.execute(model);
		
		return "index";
	}

	@RequestMapping("delete-controller")
	public String delete_controller(Model model, HttpServletRequest request) throws Exception {
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
	   public String join_controller(Model model, HttpServletRequest request) throws Exception {
	      model.addAttribute("request",request);
	      
	      login = (LoginService) applicationContext.getBean("joinCheckServiceImpl");
	      login.execute(model);
	   
	      return "index";
	   }
	   
	   @RequestMapping("userList")
	   public String userList(Model model, HttpServletRequest request) throws Exception {
		   model.addAttribute("request",request);
		   login = (LoginService) applicationContext.getBean("userListServiceImpl");
		   login.execute(model);
		   return "userList";
	   }
	   
	   @RequestMapping("trainerList")
	   public String trainerList(Model model, HttpServletRequest request) throws Exception {
		   model.addAttribute("request",request);
		   login = (LoginService) applicationContext.getBean("trainerListServiceImpl");
		   login.execute(model);
		   return "trainerList";
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
	   
	   //---------------------회원권 controller--------------------------
	   @RequestMapping("ticketView")
	   public String ticketView(Model model, HttpServletRequest request) {
		   model.addAttribute("request",request);
		  ts = (TicketService) applicationContext.getBean("ticketListViewServiceImpl");
		  ts.execute(model);
		
	      return "ticketView";
	   }

	   @RequestMapping("ticketRegister")
	   public String ticketRegister(Model model, HttpServletRequest request) {
	   model.addAttribute("request",request);
	   ts = (TicketService) applicationContext.getBean("ticketRegisterServiceImpl");
	   ts.execute(model);
//		   ts = (TicketService) applicationContext.getBean("ticketListViewServiceImpl");
//		   ts.execute(model);
	   		return "redirect:myTicket";
	   }
	   
	   @RequestMapping("myTicket")
		public String myTicket(Model model, HttpServletRequest request) {
		   model.addAttribute("request", request);
		   ts = (TicketService) applicationContext.getBean("myTicketServiceImpl");
		   ts.execute(model);
			return "myTicket";
		}
	   
	   
	   
	   //----------------------------운동법 페이지------------------------------------------
 
	   @RequestMapping(value="/exboard_write", method=RequestMethod.POST)
		public String exboard_write(HttpServletRequest request,Model model){
			model.addAttribute("request",request);
			eboard = (exBoardService) applicationContext.getBean("exBoardSaveServiceImpl");
			eboard.execute(model);
			return "redirect:ex";
		}
	 
	  
	   @RequestMapping("exBoardContent")
	   public String modal(HttpServletRequest request,Model model) {
		   System.out.println("exboardcontent 실행");
		   eboard = (exBoardService)applicationContext.getBean("exBoardContentServiceImpl");
			eboard.execute(model);
			
		   return "ex1";
	   }
	   @RequestMapping(value="/exboard_delete")
		public String  exboard_delete(HttpServletRequest request,Model model){
			model.addAttribute("request",request);
			eboard = (exBoardService) applicationContext.getBean("exBoardDeleteServiceImpl");
			eboard.execute(model);
			return "redirect:ex";
		}
	   
	   @RequestMapping(value="/exboard_modify")
		public String  exboard_modify(HttpServletRequest request,Model model){
			model.addAttribute("request",request);
			eboard = (exBoardService) applicationContext.getBean("exBoardModifyServiceImpl");
			eboard.execute(model);
			return "redirect:ex";
		}
	   // ===================게시판======================
	   @RequestMapping("board")
	   public String board(Model model, HttpServletRequest request) {
		   model.addAttribute("request", request);
		   board = (BoardService) applicationContext.getBean("boardListServiceImpl");
		   board.execute(model);
		   
		   return "board";
	   }
	   
	   @RequestMapping("boardwrite")
	   public String boardwrite() {
		   return "boardwrite";
	   }
	   
	   @RequestMapping("/boardview")
	   public String boardview(Model model, HttpServletRequest request) {
		   model.addAttribute("request",request);
		   board = (BoardService) applicationContext.getBean("boardViewServiceImpl");
		   board.execute(model);
			
		   return "boardview";
	   }
	   
	   @RequestMapping("boardcontent_upok")
	   public String boardcontent_upok(Model model, HttpServletRequest request) {
	      model.addAttribute("request",request);
	      
	      board = (BoardService) applicationContext.getBean("boardWriteContentServiceImpl");
	      board.execute(model);
	   
	      return "redirect:board";
	   }
	   
	   @RequestMapping("boardcontentdelete-controller")
	   public String boardcontentdelete_controller(Model model, HttpServletRequest request) {
		  model.addAttribute("request",request);
			
		  board = (BoardService) applicationContext.getBean("boardContentdeleteServiceImpl");
		  board.execute(model);
			
		  return "redirect:boardview";
	   }
	   
	   @RequestMapping("boardcontentdelete")
	   public String boardcontentdelete() {
		   return "boardcontentdelete";
	   }
	   
	   @RequestMapping("boardmodify")
	   public String boardmodify() {
		   return "boardmodify";
	   }
	   
	   @RequestMapping("boardmodifychk")
	   public String boardmodifychk(Model model, HttpServletRequest request) {
		   model.addAttribute("request",request);
			
		   board = (BoardService) applicationContext.getBean("boardModifyCheckServiceImpl");
		   board.execute(model);
			
		   return "redirect:board";
	   }
	   
	   @RequestMapping("searchchk")
	   public String searchchk(Model model, HttpServletRequest request) {
		   model.addAttribute("request", request);
		   
		   board = (BoardService) applicationContext.getBean("boardSearchCheckServiceImpl");
		   board.execute(model);
		   
		   return "boardsearch";
	   }
	   
	   //=============================댓글=======================================
	   
	   @RequestMapping("commentregister")
	   @ResponseBody
	   public int commentregister(Model model, HttpServletRequest request) {
		   model.addAttribute("request",request);
		   comment = (CommentService) applicationContext.getBean("commentRegisterServiceImpl");
			
		   return comment.execute(model);
	   }  
	   
	   @RequestMapping("commentlist")
	   @ResponseBody
	   public List<commentDTO> commentlist(Model model, HttpServletRequest request) {
		   model.addAttribute("request",request);
		   commentL = (CommentListService) applicationContext.getBean("commentListServiceImpl");
		   commentL.execute(model);
			
		   return commentL.execute(model);
	   }
	   
	   @RequestMapping("reply_id")
	   @ResponseBody
	   public List<commentDTO> reply_id(Model model, HttpServletRequest request) {
		   model.addAttribute("request",request);
		   commentL = (CommentListService) applicationContext.getBean("commentListReplyIdServiceImpl");
		   commentL.execute(model);
		   
		   return commentL.execute(model);
	   }
	   @RequestMapping("idDuplicateChk")
	   @ResponseBody
		public int idDuplicatechk(Model model, HttpServletRequest request) throws Exception{
		   model.addAttribute("request",request);
		   login = (LoginService) applicationContext.getBean("idDuplicateChk");
			int result = login.execute(model);
			System.out.println(result);
		   return result;
		}
	   
}