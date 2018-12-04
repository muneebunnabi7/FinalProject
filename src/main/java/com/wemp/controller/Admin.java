package com.wemp.controller;

import java.util.Objects;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.wemp.dao.AdminDao;


import com.wemp.model.TraineeModel;
/**
 * 
 * @author vshadmin
 *<p>
 *This controller handles all admin side functions
 *</p>
 */
@Controller
public class Admin {
	
@Autowired
AdminDao edao;

@RequestMapping(value ="/statusUpdation", method=RequestMethod.GET)
/**
 * 
 * @param request
 * @return
 * This method updates the status of the Applicant
 */
public ModelAndView updateStatus(HttpServletRequest request)
{
	
	long regid=Long.parseLong(request.getParameter("memid"));
	String statuss=request.getParameter("stat");
	TraineeModel mo =new TraineeModel();
	   mo.setRid(regid);
	   mo.setStatus(statuss);
	int num=edao.updateTrainee(mo);//calls updateTrainee of TraineeDao
	if(num>0)
	{
		
		 return new ModelAndView("confirm");
	}
	else
	{
		System.out.println("unsuccessful update");
		 return new ModelAndView();
	}
	
  
}

@RequestMapping("/adminverify")
/**
 * 
 * @param request
 * @return
 * 
 * this method checks for authenticated admin
 */
public ModelAndView adminLogin(HttpServletRequest request)
{
	String admname = "Admin";
	String password="Admin123";
	String uname =request.getParameter("username");
	String pass=request.getParameter("password");
	if(Objects.equals(uname, admname) & Objects.equals(password, pass))
    {
		return new ModelAndView("gettraineeform");
	}
	else
	{
		return new ModelAndView();
	}

}


}
