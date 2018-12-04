package com.wemp.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.wemp.model.TraineeModel;

public class StatusDao 
{
	@Autowired
	JdbcTemplate jdbcs;
	public JdbcTemplate getJdbcs() {
		return jdbcs;
	}
	public void setJdbcs(JdbcTemplate jdbcs) {
		this.jdbcs = jdbcs;
	}
	/**
	 * 
	 * @param name
	 * @return dbpass 
	 * returns the password based on the the user name.
	 */
	public String logVerif(String name)
	{
		Object obj=(String)jdbcs.queryForObject("select gpt_password from GR6_TRAINEES_PERSONAL where GPT_UNAME =?",new Object[] {name},String.class);
		String dbpass=(String)obj;
		return dbpass;
		
	}
	/**
	 * 
	 * @param adhar
	 * @return forgetpass
	 * This method returns the forget password based on the question
	 */
	public String getforgotPassword(String ques,String ans)
	{
		
		Object obj=(String)jdbcs.queryForObject("select GPT_PASSWORD from GR6_TRAINEES_PERSONAL where GPT_QUESTION = ? and GPT_ANSWER=?",new Object[] {ques,ans},String.class);
		String forgetpass=(String)obj;
		return forgetpass;
	}

}
