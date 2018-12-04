package com.wemp.model;
/**
 * 
 * @author muneeb
 *
 */
public class AddressModel {
	private String city;
	private String State;
	private long pin;
	private long rid;
	public long getRid() {
		return rid;
	}
/**
 * @param rid as parameter.
 * @return rid to return.
 */
	public void setRid(long rid) {
		this.rid = rid;
	}
	public String getCity() {
		return city;
	}
	/**
	 * @param city as a parameter.
	 * @return city to return.
	 */
	public void setCity(String city) {
		this.city = city;
	}
	/**
	 * 
	 * @return state as a parameter
	 */
	public String getState() {
		return State;
	}
	/**
	 * @param state as a parameter
	 */
	public void setState(String state) {
		State = state;
	}
	/**
	 * 
	 * @return pin code as long 
	 */
	public long getPin() {
		return pin;
	}
	/**
	 * @param pin as parameter.
	 * @return pin to return.
	 */
	public void setPin(long pin) {
		this.pin = pin;
	}

}
