package com.wemp.model;
/*
 * @param gpt_rid is {@code long} as parameter.
 * @param gpt_firstname is {@code String} as parameter.
 * @param gpt_middlename is {@code String} as parameter.
 * @param gpt_lastname is {@code String} as parameter.
 * @return the value gpt_rid {@code long}.
 * @return the value gpt_firstname {@code String}.
 */
public class AdminInfo {
	private long gpt_rid;
	private String gpt_firstname;
	private String gpt_middlename;
	private String gpt_lastname;
	
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
}
