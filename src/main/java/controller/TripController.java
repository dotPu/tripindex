package controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import dao.TripAccountVO;
import service.TripService;

@Controller
public class TripController {
	
	@Autowired
	TripService service;
	
	@Autowired
	HttpSession session;
	
	//메인페이지
	@RequestMapping("/index")
	public String index() {
		return "/WEB-INF/index/index.jsp";
	}
	
	//검색페이지
	@RequestMapping("/searchContent")
	public String searchcontentContent() {
		return "/WEB-INF/searchContent/searchContent.jsp";
	}
	
	//지역으로 검색페이지 - 전체페이지수
	@RequestMapping("/areaSearchTotalCount")
	public ModelAndView areaSearchTotalCount(ModelAndView mv, int areaCode, Integer currentPage) {
		if(currentPage==null) {
			currentPage = 1;
		}
		mv.addObject("areaCode",areaCode);
		mv.addObject("currentPage",currentPage);
		mv.setViewName("/WEB-INF/searchContent/areaSearchTotalCount.jsp");
		return mv;
		
		
	}
	
	//장르로 검색페이지 - 전체페이지수
	@RequestMapping("/kindSearchTotalCount")
	public ModelAndView kindSearchTotalCount(ModelAndView mv, int contentTypeId, Integer currentPage) {
		if(currentPage==null) {
			currentPage = 1;
		}
		mv.addObject("contentTypeId",contentTypeId);
		mv.addObject("currentPage",currentPage);
		mv.setViewName("/WEB-INF/searchContent/kindSearchTotalCount.jsp");
		return mv;
			
			
	}
	
	//지역으로 검색페이지 - 전체페이지수
	@RequestMapping("/areaSearch")
	public ModelAndView areaSearch(ModelAndView mv, int areaCode, int currentPage,int totalCount) {
		
		int pageGroup;
		if(currentPage <= 10) {
			pageGroup = 1;
		}
		else if((currentPage%10)==0 && currentPage > 10) {
			pageGroup = (int) Math.ceil(currentPage/10);
		}	
		else {
			pageGroup = (int) Math.ceil(currentPage/10) + 1;
		}
		
		int pageCount = 10;
		int lastPage = pageGroup * pageCount;
		
		if(lastPage > totalCount) {
			lastPage = totalCount;
		}
		
		int startPage = lastPage - (pageCount - 1);
		int next = lastPage + 1;
		int prev;
		if((startPage-1) > 1) {
			prev = startPage-1;
		}
		else {
			prev = 1;
		}
		
		mv.addObject("startPage",startPage);
		mv.addObject("lastPage",lastPage);
		mv.addObject("next",next);
		mv.addObject("prev",prev);		
		
		mv.addObject("areaCode",areaCode);
		mv.addObject("currentPage",currentPage);
		mv.addObject("totalCount",totalCount);
		mv.setViewName("/WEB-INF/searchContent/searchContent.jsp");
		return mv;
	}
	
	//장르으로 검색페이지 - 전체페이지수
		@RequestMapping("/kindSearch")
		public ModelAndView kindSearch(ModelAndView mv, int contentTypeId, int currentPage,int totalCount) {
			
			int pageGroup;
			if(currentPage <= 10) {
				pageGroup = 1;
			}
			else if((currentPage%10)==0 && currentPage > 10) {
				pageGroup = (int) Math.ceil(currentPage/10);
			}	
			else {
				pageGroup = (int) Math.ceil(currentPage/10) + 1;
			}
			
			int pageCount = 10;
			int lastPage = pageGroup * pageCount;
			
			if(lastPage > totalCount) {
				lastPage = totalCount;
			}
			
			int startPage = lastPage - (pageCount - 1);
			int next = lastPage + 1;
			int prev;
			if((startPage-1) > 1) {
				prev = startPage-1;
			}
			else {
				prev = 1;
			}
			
			mv.addObject("startPage",startPage);
			mv.addObject("lastPage",lastPage);
			mv.addObject("next",next);
			mv.addObject("prev",prev);		
			
			mv.addObject("contentTypeId",contentTypeId);
			mv.addObject("currentPage",currentPage);
			mv.addObject("totalCount",totalCount);
			mv.setViewName("/WEB-INF/searchContent/kindsearchContent.jsp");
			return mv;
		}
	
	//검색 - 상세정보
	@RequestMapping("/content")
	public ModelAndView detailContent(ModelAndView mv,String contentid,String contenttypeid,String firstimage,String addr,String title){
		mv.addObject("contentid",contentid);
		mv.addObject("contenttypeid",contenttypeid);
		mv.addObject("firstimage",firstimage);
		mv.addObject("addr",addr);
		mv.addObject("title",title);

		mv.setViewName("/WEB-INF/content/content.jsp");
		return mv;
	}
	
	//로그인 창
	@RequestMapping("/login")
	public String login() {
		return "/WEB-INF/account/login.jsp";
	}//login
	//로그인 결과
	
	@RequestMapping("/loginProc")
	public ModelAndView loginProc(String id, String password) {
		ModelAndView mv = new ModelAndView();
		if(service.login(id, password) != null) {
			mv.addObject("result", 1);
			session.setAttribute("id", id);
		}
		mv.setViewName("/WEB-INF/account/loginProc.jsp");
		return mv;
	}
	
	//회원가입 창
	@RequestMapping("/signup")
	public String signUp() {
		return "/WEB-INF/account/signup.jsp";
	}//signup
	
	@RequestMapping("/mailsend")
	@ResponseBody
	public String mailsend(Model m, String email) {
		System.out.println("mailsend");
//		m.addAttribute("test","테스트입니다");
		m.addAttribute("check",service.mailSend(email));
		
		return Integer.toString(service.mailSend(email));
	}
	
	//회원가입 처리
	@RequestMapping("/signupProc")
	public ModelAndView signupProc(TripAccountVO ac) {
		ModelAndView mv = new ModelAndView();
		System.out.println(ac.toString());
		mv.addObject("result", service.insert(ac));
		mv.setViewName("/WEB-INF/account/signupProc.jsp");
		return mv;
	}//signupProc
	
	//마이페이지
		@RequestMapping("/mypage")
		public ModelAndView mypage(ModelAndView mv,HttpSession session) {
			String id = (String) session.getAttribute("id");
			TripAccountVO ac = service.findOneById(id);
			System.out.println(ac.getBirthday());
			String birthday = ac.getBirthday();
			String[] birth = birthday.split(" ");
			ac.setBirthday(birth[0]);
			mv.addObject("result", ac);
			
			mv.setViewName("/WEB-INF/account/mypage.jsp");
			return mv;
		}//signupProc
		
		//회원정보 수정
		@RequestMapping("/updateaccount")
		public ModelAndView updateaccount(TripAccountVO ac) {
			ModelAndView mv = new ModelAndView();
			service.update(ac);
			mv.setViewName("/WEB-INF/account/mypage.jsp");
			return mv;
		}//signupProc
		
		//회원정보 삭제
		@RequestMapping("/deleteaccount")
		public ModelAndView deleteaccount(String id) {
			ModelAndView mv = new ModelAndView();
			service.delete(id);
			mv.setViewName("/WEB-INF/index/index.jsp");
			return mv;
		}//signupProc
	
}
