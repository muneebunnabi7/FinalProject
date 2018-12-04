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
    public ModelAndView adminHome()
    {
   	 return new ModelAndView("HomeAdmin");
    }
	@RequestMapping("/applicant")
    public ModelAndView adminLogin()
    {
   	 return new ModelAndView("AdminLogin");
    }
	
	@RequestMapping("/statuscheckup")
    public ModelAndView konwStatus()
    {
   	 return new ModelAndView("traineelogin");
    }
	@RequestMapping("/habout")
    public ModelAndView konwAbout()
    {
   	 return new ModelAndView("HomeAbout");
    }
	
	@RequestMapping("/hleg")
    public ModelAndView konwLeg()
    {
   	 return new ModelAndView("HomeLeg");
    }
	
	@RequestMapping("/StepStatus")
    public ModelAndView userStatus()
    {
   	 return new ModelAndView("traineelogin");
    }
	@RequestMapping("applicants")
    public ModelAndView userList()
    {
   	 return new ModelAndView("viewapplicant");
    }
}
