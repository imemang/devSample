package kej.spring.sample.datepicker;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class DatepickerController {

	@RequestMapping(value="/project/datepicker/main.do")
	public String main(HttpSession session, ModelMap model) throws Exception{
		
		model.addAttribute("menu1", "project");
		model.addAttribute("menu2", "datepicker");
		return "/project/datepicker/main";
	}
	
}
