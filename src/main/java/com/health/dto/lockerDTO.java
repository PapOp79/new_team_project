package com.health.dto;

import java.sql.Date;

public class lockerDTO {
	private int lockerNum;
	private String lockerName;
	private Date lockerStartDate;
	private Date lockerEndDate;
	private int lockerCheck;
	
	public int getLockerNum() {
		return lockerNum;
	}
	public void setLockerNum(int lockerNum) {
		this.lockerNum = lockerNum;
	}
	public String getLockerName() {
		return lockerName;
	}
	public void setLockerName(String lockerName) {
		this.lockerName = lockerName;
	}
	public Date getLockerStartDate() {
		return lockerStartDate;
	}
	public void setLockerStartDate(Date lockerStartDate) {
		this.lockerStartDate = lockerStartDate;
	}
	public Date getLockerEndDate() {
		return lockerEndDate;
	}
	public void setLockerEndDate(Date lockerEndDate) {
		this.lockerEndDate = lockerEndDate;
	}
	public int getLockerCheck() {
		return lockerCheck;
	}
	public void setLockerCheck(int lockerCheck) {
		this.lockerCheck = lockerCheck;
	}
	
	
}
