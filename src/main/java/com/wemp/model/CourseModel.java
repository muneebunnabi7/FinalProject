package com.wemp.model;
/**
 * 
 * @author muneeb
 * this model class holds and retrieves data for 
 * Course information of applicant.
 *
 */
public class CourseModel {
	private long cid;
	private String coursename;
	private String ngo;
	private int  duration;
	private long rid;
	
	public long getCid() {
		return cid;
	}
	public void setCid(long cid) {
		this.cid = cid;
	}
	public String getCoursename() {
		return coursename;
	}
	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	
	public String getNgo() {
		return ngo;
	}
	public void setNgo(String ngo) {
		this.ngo = ngo;
	}
	public long getRid() {
		return rid;
	}
	public void setRid(long rid) {
		this.rid = rid;
	}
	
	}



