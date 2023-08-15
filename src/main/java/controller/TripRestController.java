package controller;

import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class TripRestController {

//	@PostMapping("/indexProc")
//	public ModelAndView indexProc(@RequestBody Map<String, Object> info) {
//		ModelAndView mv = new ModelAndView();
//		System.out.println("1");
//		mv.addObject("indexinfo",info);
//		mv.setViewName("/WEB-INF/index.jsp");
//		return mv;
//	}
	
//	@PostMapping("/resttripjson")
//	public JSONObject tripjson(@RequestBody List<Map<String,Object>> info) {
//		System.out.println("test");
//		System.out.println(info.get(1));
////		String addr1 = (String) info.get(1).get("addr1");
////		System.out.println(addr1);
//		
//		JSONObject addrJsonObject = new JSONObject(info.get(1));
//		//hesds
//		return addrJsonObject;
//	}
}
