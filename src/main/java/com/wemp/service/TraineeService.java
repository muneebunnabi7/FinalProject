package com.wemp.service;
/**
 * 
 * @author muneeb
 * This Class is used to perform all the calculations of the controller
 *
 */
public class TraineeService {
	 String s=" ";
	 /**
	  * 
	  * @param strpass
	  * @return s
	  * returns the encripted string
	  */
	public String encripPass(String strpass)
	{
		char[] ch=strpass.toCharArray();  
		for(int i=0;i<ch.length;i++){ 
			int num=(int)ch[i];
			num=num+3;
		   char	c=(char)num;
		    s=s+Character.toString(c);
		 
		} 
		System.out.print(s);
		return s;
		
	}
	/**
	 * 
	 * @param encpass
	 * @return
	 * returns the encripted password
	 */
	public String getEncppass(String encpass)
	{
		char[] ch=encpass.toCharArray();  
		for(int i=0;i<ch.length;i++){ 
			int num=(int)ch[i];
			num=num+3;
		   char	c=(char)num;
		    s=s+Character.toString(c);
		 
		} 
		//System.out.print(s);
		return s;
		
		
	}
	/**
	 * this method returns the decripted password.
	 * @param epass
	 * @return
	 */
	
	public String getdecPassword(String epass)
	{
		char[] ch=epass.toCharArray();  
		for(int i=0;i<ch.length;i++){ 
			int num=(int)ch[i];
			num=num-3;
		   char	c=(char)num;
		    s=s+Character.toString(c);
		 
		} 
		//System.out.print(s);
		return s;
		
		
	}


}
