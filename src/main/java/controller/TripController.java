package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dao.TripAccountVO;
import service.TripService;

@Controller
public class TripController {
	
	@Autowired
	TripService service;
	
	//메인페이지
	@RequestMapping("/index")
	public String index() {
		return "/WEB-INF/index/index.jsp";
	}

	//내용-하나상세보기페이지
	@RequestMapping("/content")
	public String content() {
		return "/WEB-INF/content/content.jsp";
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
		
		
		System.out.println("currentP:"+currentPage+",pageGroup:"+pageGroup+",startP:"+startPage+",lastP:"+lastPage+",next:"+next+",prev:"+prev);
		
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
	
	//로그인 창
	@RequestMapping("/login")
	public String login() {
		return "/WEB-INF/account/login.jsp";
	}//login
	//회원가입 창
	@RequestMapping("/signup")
	public String signUp() {
		return "/WEB-INF/account/signup.jsp";
	}//signup
	//회원가입 처리
	@RequestMapping("/signupProc")
	public ModelAndView signupProc(TripAccountVO ac) {
		ModelAndView mv = new ModelAndView();
		System.out.println(ac.toString());
		mv.addObject("result", service.insert(ac));
		mv.setViewName("/WEB-INF/account/signupProc.jsp");
		return mv;
	}//signupProc
}
