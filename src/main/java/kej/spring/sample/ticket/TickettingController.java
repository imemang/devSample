package kej.spring.sample.ticket;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TickettingController {

	@RequestMapping(value="/project/ticketting.do")
	public String ticketting(HttpSession session, ModelMap model) throws Exception{
		
		model.addAttribute("menu1", "project");
		model.addAttribute("menu2", "ticketting");
		return "/project/ticketting";
	}
	
	@RequestMapping(value="/project/ticketting/captcha.do")
	public String tickettingCaptcha(HttpSession session, ModelMap model) throws Exception{
		
		return "/project/captcha";
	}
}
