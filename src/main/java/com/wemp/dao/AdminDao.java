package com.wemp.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.wemp.model.TraineeModel;
/**
 * 
 * @author muneeb
 * This class includes the actions made by the admin
 *
 */
public class AdminDao {
	@Autowired
	JdbcTemplate jdbco;//object of the JdbcTepmplate

	
     
	public JdbcTemplate getJdbco() {
		return jdbco;
	}



	public void setJdbco(JdbcTemplate jdbco) {
		this.jdbco = jdbco;
	}


/**
 * this method updates the status of the trainee applicant.
 * 
 */
	public int updateTrainee(TraineeModel mo)
	{
		
		String sql="update GR6_TRAINEES_PERSONAL set gpt_status ='"+mo.getStatus()+"' where gpt_rid ="+mo.getRid()+"";	
		return jdbco.update(sql);
	}
}
