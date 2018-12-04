package com.wemp.controller;

import java.util.Objects;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.wemp.dao.StatusDao;
import com.wemp.model.TraineeModel;
import com.wemp.service.TraineeService;

@Controller
public class Status 
{
	
@Autowired
StatusDao di;

	@RequestMapping("/Verify")
	public ModelAndView traineeLogin(@ModelAttribute TraineeModel tm)
	{
		 String dbpass = di.logVerif(tm.getUname());//calls logVerify method of statusDao class to give password of user.
		 TraineeService ser=new TraineeService();
		 String encpassw =ser.getEncppass(tm.getPass());//calls the getEncppass of the TraineeService class to get encripted password
	     if( Objects.equals(dbpass, encpassw )){
	    	 return new ModelAndView("statuscheck");//if match found go to the statuscheck page
	     }
	     else
	     {
	    	
	    	 return new ModelAndView("traineeReg");//go to the form filling page
	    	 
	     }
	
	}
	/**
	 * 
	 * @param req
	 * @return forget password
	 * This method is get the forget password based on aadhar. 
	 */
	@RequestMapping("/forpas")
	public ModelAndView getForgotPass(HttpServletRequest req)
	{
		
		
		String ques=req.getParameter("question");
		String answer=req.getParameter("ans");
		TraineeModel tm= new TraineeModel();
		tm.setQuestion(ques);
		tm.setAns(answer);
		String pass = di.getforgotPassword(tm.getQuestion(),tm.getAns());
		TraineeService ser=new TraineeService();
		String decpass=ser.getdecPassword(pass); //calls getdecPassword of the service method decript the password 
		return new ModelAndView("getpassword","inform",decpass);
	}

}
