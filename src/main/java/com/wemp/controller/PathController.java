package com.wemp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
/**
 * 
 * @author promot
 *This controller maps different jsp pages
 */
@Controller
public class PathController
{
	@RequestMapping("contact")
     public ModelAndView stepcontact()
     {
    	 return new ModelAndView("Contact");
     }
	
	@RequestMapping("hstep")
    public ModelAndView stepHome()
    {
   	 return new ModelAndView("HomeStep");
    }
	@RequestMapping("StepReg")
    public ModelAndView stepForm()
    {
   	 return new ModelAndView("traineeform");
    }
	@RequestMapping("/forget")
    public ModelAndView forgetPass()
    {
   	 return new ModelAndView("forgetpassword");
    }
	@RequestMapping("/hadmin")
    public ModelAndView adminLogin()
    {
   	 return new ModelAndView("AdminLogin");
    }
	@RequestMapping("/statuscheckup")
    public ModelAndView konwStatus()
    {
   	 return new ModelAndView("statuscheck");
    }
}
