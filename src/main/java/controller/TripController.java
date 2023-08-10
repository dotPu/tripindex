package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TripController {

	@RequestMapping("/")
	public String index() {
		return "/WEB-INF/indexProc.jsp";
	}
	
	
	
}
