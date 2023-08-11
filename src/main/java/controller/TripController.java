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
	
	@RequestMapping("/index")
	public String index() {
		return "/WEB-INF/index/index.jsp";
	}
<<<<<<< HEAD
	
	@RequestMapping("/content")
	public String content() {
		return "/WEB-INF/content/content.jsp";
	}
	
=======
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
>>>>>>> branch 'master' of https://github.com/dotPu/tripindex.git
}
