package kej.spring.sample.ticket;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TickettingController {

	@RequestMapping(value="/project/ticketting/main.do")
	public String ticketting(HttpSession session, ModelMap model) throws Exception{
		
		model.addAttribute("menu1", "project");
		model.addAttribute("menu2", "ticketting");
		return "/project/ticketting/ticketting";
	}
	
	@RequestMapping(value="/project/ticketting/seat.do")
	public String tickettingSeat(HttpSession session, ModelMap model) throws Exception{
		
		return "/project/ticketting/seat";
	}
	
	@RequestMapping(value="/project/ticketting/captcha.do", method=RequestMethod.POST)
	@ResponseBody
	public String tickettingCaptcha(@RequestParam(value = "captchaInput") String captchaInput, HttpSession session, ModelMap model) throws Exception{
		String result = "false";
		String sCaptcha = session.getAttribute("CAPTCHA").toString();
		String iCaptcha = captchaInput;
		
		if(sCaptcha.equals(iCaptcha)){
			result = "true";
		}
		
		return result;
	}
}
