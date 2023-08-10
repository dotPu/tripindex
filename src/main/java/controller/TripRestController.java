package controller;

import java.util.Map;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class TripRestController {

	@PostMapping("/indexProc")
	public ModelAndView indexProc(@RequestBody Map<String, Object> info) {
		ModelAndView mv = new ModelAndView();
		System.out.println("1");
		mv.addObject("indexinfo",info);
		mv.setViewName("/WEB-INF/index.jsp");
		return mv;
	}
	
}
