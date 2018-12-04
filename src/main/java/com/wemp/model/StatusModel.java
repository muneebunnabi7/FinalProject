package com.wemp.model;
/**
 * 
 * @author muneeb
 * This model class holds data from the database to 
 * provide information about the status.
 *
 */
public class StatusModel 
{
	private long gpt_rid;
	private String gpt_firstname;
	private String gpt_middlename;
	private String gpt_lastname;
	private String gtc_course_name;
	private String gtc_ngo_name;
	private String gpt_status;
	
	public long getGpt_rid() {
		return gpt_rid;
	}
	public void setGpt_rid(long gpt_rid) {
		this.gpt_rid = gpt_rid;
	}
	public String getGpt_firstname() {
		return gpt_firstname;
	}
	public void setGpt_firstname(String gpt_firstname) {
		this.gpt_firstname = gpt_firstname;
	}
	public String getGpt_middlename() {
		return gpt_middlename;
	}
	public void setGpt_middlename(String gpt_middlename) {
		this.gpt_middlename = gpt_middlename;
	}
	public String getGpt_lastname() {
		return gpt_lastname;
	}
	public void setGpt_lastname(String gpt_lastname) {
		this.gpt_lastname = gpt_lastname;
	}
	public String getGtc_course_name() {
		return gtc_course_name;
	}
	public void setGtc_course_name(String gtc_course_name) {
		this.gtc_course_name = gtc_course_name;
	}
	public String getGtc_ngo_name() {
		return gtc_ngo_name;
	}
	public void setGtc_ngo_name(String gtc_ngo_name) {
		this.gtc_ngo_name = gtc_ngo_name;
	}
	public String getGpt_status() {
		return gpt_status;
	}
	public void setGpt_status(String gpt_status) {
		this.gpt_status = gpt_status;
	}

}
