package com.health.dto;

import java.sql.Timestamp;

public class exBoardDTO {
private String name;
private String title;
private String content;
private Timestamp savedate;
private int part;
private int num;
private String link;

private int pageIndex = 1;
private int pageSize = 10;
private int pageGroupSize = 3;




public String getLink() {
	return link;
}
public void setLink(String link) {
	this.link = link;
}
public int getPageIndex() {
	return pageIndex;
}
public void setPageIndex(int pageIndex) {
	this.pageIndex = pageIndex;
}
public int getPageSize() {
	return pageSize;
}
public void setPageSize(int pageSize) {
	this.pageSize = pageSize;
}
public int getPageGroupSize() {
	return pageGroupSize;
}
public void setPageGroupSize(int pageGroupSize) {
	this.pageGroupSize = pageGroupSize;
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
public Timestamp getSavedate() {
	return savedate;
}
public void setSavedate(Timestamp savedate) {
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
