package com.health.dto;

import java.sql.Date;


public class exBoardDTO {
private String name;
private String title;
private String content;
private Date savedate;
private int part;
private int num;
private String link;








public String getLink() {
	return link;
}
public void setLink(String link) {
	this.link = link;
}

public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public Date getSavedate() {
	return savedate;
}
public void setSavedate(Date savedate) {
	this.savedate = savedate;
}
public int getPart() {
	return part;
}
public void setPart(int part) {
	this.part = part;
}
public int getNum() {
	return num;
}
public void setNum(int num) {
	this.num = num;
}



}
