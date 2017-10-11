package com.gs.grassoftfront.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping (value={"/","/brand"})
	public String gotoLandingPage()
	{
		return "landingPage";
	}
	
	@RequestMapping(value={"/goGrassoft","/login"})
	public String gotoLoginPage()
	{
		return "login";
	}
	
	@RequestMapping("aboutus")
	public String gotoaboutUsPage()
	{
		return "aboutUs";
	}
	
	
	
	@RequestMapping("/contactus")
	public String gotoContactUsPage()
	{
		return "contactUs";
	}

}
