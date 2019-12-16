package com.health.dto;

import java.sql.Date;

public class boardDTO {
	private int num;
	private int hit;
	private int secret;
	private String title;
	private String name;
	private String content;
	private Date postdate;
	
	public int getNum() {
		return num;
	}
	
	public void setNum(int num) {
		this.num = num;
	}
	
	public int getHit() {
		return hit;
	}
	
	public void setHit(int hit) {
		this.hit = hit;
	}
	
	public int getSecret() {
		return secret;
	}
	
	public void setSecret(int secret) {
		this.secret = secret;
	}
	
	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getContent() {
		return content;
	}
	
	public void setContent(String content) {
		this.content = content;
	}
	
	public Date getPostdate() {
		return postdate;
	}
	
	public void setPostdate(Date postdate) {
		this.postdate = postdate;
	}
}