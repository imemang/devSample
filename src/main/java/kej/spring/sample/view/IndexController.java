package kej.spring.sample.view;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	
	@RequestMapping(value="/index.do")
	public String index(HttpSession session, ModelMap model) throws Exception{
		
		return "/index";
	}
}
