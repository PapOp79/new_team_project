package com.health.dto;

import java.sql.Date;

public class commentDTO {

	private int boardnum;
	private String commentId;
	private String commentation;
	private Date regdate;
	private int commentsecret;
	
	
	public int getCommentsecret() {
		return commentsecret;
	}
	public void setCommentsecret(int commentsecret) {
		this.commentsecret = commentsecret;
	}
	public int getBoardnum() {
		return boardnum;
	}
	public void setBoardnum(int boardnum) {
		this.boardnum = boardnum;
	}
	public String getCommentId() {
		return commentId;
	}
	public void setCommentId(String commentId) {
		this.commentId = commentId;
	}
	public String getCommentation() {
		return commentation;
	}
	public void setCommentation(String commentation) {
		this.commentation = commentation;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	
	
}
