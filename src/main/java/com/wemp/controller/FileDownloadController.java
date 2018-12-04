package com.wemp.controller;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLConnection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.wemp.dao.TraineeDao;

/**
 * 
 * @author muneeb
 * <p>
 * This controller is meant for the downloading of the file.
 * </p>
 *
 */

@Controller
public class FileDownloadController {
	
	//@Autowired
//	DownloadDao ddao;
	
	@Autowired
	TraineeDao dt;
	
	@RequestMapping("/download/{gpt_rid}")
	public ModelAndView downloadfiles(@PathVariable long gpt_rid,HttpServletRequest request,HttpServletResponse response ) throws IOException
	{
		/**
		 * path of file for download
		 */
		System.out.println("im in downloadcontroller");
		
		 String path=dt.getpath(gpt_rid);
	     
		
	//	String loc=ddao.getlocation(gs_aadhar,document_name);
		
		File file=new File(path);
		
	    System.out.println("Inside File Download Controller");
	
		/**
		 * Checking mime type of the content
		 */
	   
		InputStream inputstream=new BufferedInputStream(new FileInputStream(file));
		String mimetype=URLConnection.guessContentTypeFromStream(inputstream);
		
		if(mimetype==null)
		mimetype="application/octet-stream";
		
		response.setContentType(mimetype);
		response.setContentLength((int)file.length());

		response.setHeader("Content-Disposition", String.format(" attachment; filename=\"%s\"",file.getName()));
		
		FileCopyUtils.copy(inputstream,response.getOutputStream());
		response.flushBuffer();
		response.getOutputStream().close();
	
	
		return new ModelAndView("view");
	}
	
	
	
}
