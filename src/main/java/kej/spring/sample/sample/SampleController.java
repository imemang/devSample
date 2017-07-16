package kej.spring.sample.sample;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/sample")
@Controller
public class SampleController {

	@RequestMapping(value="/slideshow.do")
	public String slideshow(HttpSession session, ModelMap model) throws Exception{
		
		model.addAttribute("menu1", "sample");
		model.addAttribute("menu2", "slideshow");
		return "/sample/slideshow";
	}
}
