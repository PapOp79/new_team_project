package com.health.dto;

import java.sql.Date;

public class ticketBuyerDTO {

	private String ticketBuyerName;
	private String ticketBuyerId;
	private Date ticketStartDate;
	private Date ticketEndDate;
	private int ticketPrice;
	
	public String getTicketBuyerName() {
		return ticketBuyerName;
	}
	public void setTicketBuyerName(String ticketBuyerName) {
		this.ticketBuyerName = ticketBuyerName;
	}
	public String getTicketBuyerId() {
		return ticketBuyerId;
	}
	public void setTicketBuyerId(String ticketBuyerId) {
		this.ticketBuyerId = ticketBuyerId;
	}
	public Date getTicketStartDate() {
		return ticketStartDate;
	}
	public void setTicketStartDate(Date ticketStartDate) {
		this.ticketStartDate = ticketStartDate;
	}
	public Date getTicketEndDate() {
		return ticketEndDate;
	}
	public void setTicketEndDate(Date ticketEndDate) {
		this.ticketEndDate = ticketEndDate;
	}
	public int getTicketPrice() {
		return ticketPrice;
	}
	public void setTicketPrice(int ticketPrice) {
		this.ticketPrice = ticketPrice;
	}
	
	
	
}
