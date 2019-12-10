  
package com.health.dto;

import java.util.Date;

public class userDTO {
	private String userId;
	private String userPw;
	private String userName;
	private String userEmail;
	private Date userRegDate;
	private int userAge;
	private int userHeight;
	private int userWeight;
	private String userSex;
@Override
	public String toString() {
		return "userDTO [userId=" + userId + ", userPw=" + userPw + ", userName=" + userName + ", userEmail="
				+ userEmail + ", userRegDate=" + userRegDate + ", userAge=" + userAge + ", userHeight=" + userHeight
				+ ", userWeight=" + userWeight + ", userSex=" + userSex + ", Admin=" + Admin + "]";
	}
	//	private String userExperience;
//	private String userPurpose;
	private int Admin;
	
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public Date getUserRegDate() {
		return userRegDate;
	}
	public void setUserRegDate(Date userRegDate) {
		this.userRegDate = userRegDate;
	}
	public int getUserAge() {
		return userAge;
	}
	public void setUserAge(int userAge) {
		this.userAge = userAge;
	}
	public int getUserHeight() {
		return userHeight;
	}
	public void setUserHeight(int userHeight) {
		this.userHeight = userHeight;
	}
	public int getUserWeight() {
		return userWeight;
	}
	public void setUserWeight(int userWeight) {
		this.userWeight = userWeight;
	}
	public String getUserSex() {
		return userSex;
	}
	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}
//	public String getUserExperience() {
//		return userExperience;
//	}
//	public void setUserExperience(String userExperience) {
//		this.userExperience = userExperience;
//	}
//	public String getUserPurpose() {
//		return userPurpose;
//	}
//	public void setUserPurpose(String userPurpose) {
//		this.userPurpose = userPurpose;
//	}
	public int getAdmin() {
		return Admin;
	}
	public void setAdmin(int admin) {
		Admin = admin;
	}
}