package com.wemp.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.ResultSetExtractor;  

import com.wemp.model.AddressModel;
import com.wemp.model.AdminInfo;
import com.wemp.model.CourseInfo;
import com.wemp.model.CourseModel;
import com.wemp.model.StatusModel;
import com.wemp.model.TraineeModel;

public class TraineeDao {
@Autowired
JdbcTemplate jdbc;

 public JdbcTemplate getJdbc() {
	return jdbc;
}
public void setJdbc(JdbcTemplate jdbc) {
	this.jdbc = jdbc;
}
/**
 * 
 * @param tm
 * @param am
 * @param mo
 * @return integer value.
 * This method saves the data in our database tables
 */
public int saveData(TraineeModel tm,AddressModel am,CourseModel mo)
 {
	
	 String str="insert into GR6_TRAINEES_PERSONAL values (GR6_TRAINEES_PERSONAL_SEQ.nextval,'"+tm.getFname()+"','"+tm.getMname()+"','"+tm.getLname()+"','"+tm.getDob()+"','"+tm.getEmail()+"','"+tm.getUname()+"','"+tm.getPass()+"',"+tm.getAadhar()+","+tm.getPhone()+",'"+tm.getStatus()+"','"+tm.getCertificate()+"','"+tm.getQuestion()+"','"+tm.getAns()+"')";
      jdbc.update(str);
      long num=getRid(tm);
      String str2="insert into GR6_ADDRESS_TRAINEES values ("+num+",'"+am.getCity()+"','"+am.getState()+"','"+am.getPin()+"')";
      jdbc.update(str2);
      String str3="insert into GR6_TRAINEES_COURSE values (GR6_TRAINEES_COURSE_SEQ.nextval,'"+mo.getCoursename()+"','"+mo.getNgo()+"',"+mo.getDuration()+","+num+")";
      return jdbc.update(str3);
      
 }
/**
 * 
 * @param adhar
 * @return getRid
 * This method returns the registration id of the GR6_TRAINEES_PERSONA table.
 */
public long getRid(TraineeModel adhar)
{
	Object obj=jdbc.queryForObject("select gpt_rid from GR6_TRAINEES_PERSONAL where GPT_AADHAR =?",new Object[] {adhar.getAadhar()},Long.class);
	long dbpass=(Long)obj;
	return dbpass;
}
/**
 * 
 * @param regid
 * @return 
 * returns all the information of the trainee who have applied for the course based on applicants registration number
 */
public List<CourseInfo> getInformation(long regid)
{
	System.out.println("Inside List Function");
	System.out.println(regid);
	String sql="select * from (select p.GPT_RID,p.GPT_FIRSTNAME,p.GPT_MIDDLENAME,p.GPT_LASTNAME,p.GPT_DOB,p.GPT_EMAIL,p.GPT_UNAME,p.GPT_PASSWORD,p.GPT_AADHAR,p.GPT_PHONE,p.GPT_STATUS,p.GPT_CERTIFICATE,c.GTC_COURSE_NAME,c.GTC_NGO_NAME,c.GTC_DURATION from GR6_TRAINEES_PERSONAL p inner join  GR6_TRAINEES_COURSE c on p.GPT_RID=c.GPT_RID) where GPT_RID ="+regid+"";
	return jdbc.query(sql,new ResultSetExtractor<List<CourseInfo>>()
	{  
		 public List<CourseInfo> extractData(ResultSet rs) throws SQLException, DataAccessException {  
			  List<CourseInfo> list=new ArrayList<CourseInfo>();
			  
			  while(rs.next()){  
			CourseInfo e=new CourseInfo();
	        e.setGpt_rid(rs.getLong(1)); 
	        e.setGpt_firstname(rs.getString(2));
	        e.setGpt_middlename(rs.getString(3));
	        e.setGpt_lastname(rs.getString(4));
	        e.setGpt_dob(rs.getString(5));
	        e.setGpt_email(rs.getString(6));
	        e.setGpt_uname(rs.getString(7));
	        e.setGpt_password(rs.getString(8));
	        e.setGpt_aadhar(rs.getLong(9));
	        e.setGpt_phone(rs.getLong(10));
	        e.setGpt_status(rs.getString(11));
	        e.setGpt_certificate(rs.getString(12));
	        e.setGtc_course_name(rs.getString(13));
	        e.setGtc_ngo_name(rs.getString(14));
	        e.setGtc_duration(rs.getInt(15));
	        list.add(e);
			  }
			return list;
		}
	    }
	);  
	
}
/**
 * 
 * @return
 * returns the list of the all the trainees
 */
   public List<AdminInfo> getTraineeInfo()
   {
	   String sqlq="select GPT_RID,GPT_FIRSTNAME,GPT_MIDDLENAME,GPT_LASTNAME from  GR6_TRAINEES_PERSONAL";
	   return jdbc.query(sqlq,new ResultSetExtractor<List<AdminInfo>>()
			   {
		   public List<AdminInfo> extractData(ResultSet rs) throws SQLException, DataAccessException {  
				  System.out.println("inside ResultSetExtractor");
				  List<AdminInfo> lt=new ArrayList<AdminInfo>();
				  
				  while(rs.next()){  
					  AdminInfo em=new AdminInfo();
		        em.setGpt_rid(rs.getLong(1)); 
		        em.setGpt_firstname(rs.getString(2));
		        em.setGpt_middlename(rs.getString(3));
		        em.setGpt_lastname(rs.getString(4));
		       
		        lt.add(em);
				  }
				return lt;
			}
			   }
	   );
   }
   /**
    * 
    * @param regnum
    * @return
    * Returns the status information of the applicant
    */
   public List<StatusModel> getStatusinfo(long regnum)
   {
	   System.out.println(regnum);
	   String sqlm = "select * from (select p.GPT_RID,p.GPT_FIRSTNAME,p.GPT_MIDDLENAME,p.GPT_LASTNAME,c.GTC_COURSE_NAME,c.GTC_NGO_NAME,p.GPT_STATUS from GR6_TRAINEES_PERSONAL p inner join  GR6_TRAINEES_COURSE c on p.GPT_RID=c.GPT_RID) where GPT_RID = "+regnum+"";
	   
	   return jdbc.query(sqlm,new ResultSetExtractor<List<StatusModel>>()
		{  
			 public List<StatusModel> extractData(ResultSet rs) throws SQLException, DataAccessException {  
				  System.out.println("inside ResultSetExtractor");
				  List<StatusModel> list=new ArrayList<StatusModel>();
				  
				  while(rs.next()){  
				StatusModel si=new StatusModel();
		        si.setGpt_rid(rs.getLong(1)); 
		        si.setGpt_firstname(rs.getString(2));
		        si.setGpt_middlename(rs.getString(3));
		        si.setGpt_lastname(rs.getString(4));
		        si.setGtc_course_name(rs.getString(5));
		        si.setGtc_ngo_name(rs.getString(6));
		        si.setGpt_status(rs.getString(7));
		      
	
		        list.add(si);
				  }
				return list;
			}
		    }
		);  

   }
   /**
    * returns the registration number of the applicant
    * @param adhar
    * @return
    */
   public long getRegnum(long adhar)
   {
   	Object obj=jdbc.queryForObject("select gpt_rid from GR6_TRAINEES_PERSONAL where GPT_AADHAR =?",new Object[] {adhar},Long.class);
   	long regnum=(Long)obj;
   	return regnum;
   }
   /**
    * 
    * @param gpt_rid
    * @return
    * returns the path of the file stored in database.
    */
public String getpath(long gpt_rid) {
	
	String str=null;
	Object obj;
	obj=jdbc.queryForObject("select GPT_CERTIFICATE from  GR6_TRAINEES_PERSONAL where gpt_rid="+gpt_rid+" ", String.class);
	str=obj.toString();
	return str;
}
   
 
}
