package com.wemp.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.wemp.dao.TraineeDao;
import com.wemp.model.AddressModel;
import com.wemp.model.AdminInfo;
import com.wemp.model.CourseInfo;
import com.wemp.model.CourseModel;
import com.wemp.model.StatusModel;
import com.wemp.model.TraineeModel;
import com.wemp.service.TraineeService;

@Controller
/*
 * controller is meant for controlling all the details of Trainee
 */
public class Trainee
{
@Autowired
TraineeDao edao;
/*
 * This method is used for saving data in the model class.
 */
@RequestMapping(value="/Register" , method = RequestMethod.POST)
public ModelAndView traineeInfo(@ModelAttribute TraineeModel tm,AddressModel am,CourseModel mo ,@RequestParam("file") MultipartFile file) {
	System.out.println("hii");
	String strpass=tm.getPass();
	TraineeService ser= new  TraineeService();
	String encrp=ser.encripPass(strpass);
	tm.setPass(encrp);
	tm.setStatus("pending");
	System.out.println(am.getPin());
	String name="Birth Certificate";
	
	   //Download Document

		System.out.println("Inside file upload");
		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();

				// Creating the directory to store file
				String rootPath = System.getProperty("catalina.home");
				File dir = new File(rootPath + File.separator + "Uploaded Documents");
				if (!dir.exists())
					dir.mkdirs();

				// Create the file on server
				File serverFile = new File(dir.getAbsolutePath()
						+ File.separator + name);
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();

			
				String path=serverFile.getAbsolutePath();
				System.out.println(path);
                 tm.setCertificate(path);
				
			} catch (Exception e) {
				System.out.println("Exception Occureed");
			}
			
		} else {
			      System.out.println("File not select");
		}
		int num= edao.saveData(tm,am,mo);//calls the saveData of TraineeDao to save the data
		
		
		long rnum=edao.getRegnum(tm.getAadhar());//calls getRegnum of the TraineeClass to get registration id based on aadhar
		if(num>0)
		{
		
		return new ModelAndView("confirm","regnum",rnum);
	    }
		
			
	else 
	{
		return new ModelAndView();
	}
		
}

@RequestMapping(value ="/ViewAllRecords/{gpt_rid}")
public ModelAndView getInformation(@PathVariable long gpt_rid)
{
	   
	List<CourseInfo> info=edao.getInformation(gpt_rid);//calls getInformation of the TraineeDao class to get all the information of the applicant based on the on their registration number 
    return new ModelAndView("viewapplicant","list",info);  
}

@RequestMapping("/information")
public ModelAndView getTrainee()
{
	
	List<AdminInfo> train = edao.getTraineeInfo();//calls getTraineeInfo of the TraineeDao class to get the information of all the trainee applicants.
	return new ModelAndView("applicantlist","data",train);
}
@RequestMapping("/viewStatus")
public ModelAndView getStatus(HttpServletRequest request)
{
    long rnum= Long.parseLong(request.getParameter("srid"));
  List<StatusModel> stat=edao.getStatusinfo(rnum);//calls the getStatusinfo of the TraineeDao class  to get the status of the applicant
  return new ModelAndView("showStatus","informa",stat);
}
}
