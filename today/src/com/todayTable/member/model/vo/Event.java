package com.todayTable.member.model.vo;

import java.sql.Date;

public class Event {
	private int eventNo;
	private String eventName;
	private String eventContents;
	private Date eventDate;
	private char eventProcessing;
	private char eventStatus;
	
	public Event() {}

	public Event(int eventNo, String eventName, String eventContents, Date eventDate, char eventProcessing,
			char eventStatus) {
		super();
		this.eventNo = eventNo;
		this.eventName = eventName;
		this.eventContents = eventContents;
		this.eventDate = eventDate;
		this.eventProcessing = eventProcessing;
		this.eventStatus = eventStatus;
	}

	public int getEventNo() {
		return eventNo;
	}

	public void setEventNo(int eventNo) {
		this.eventNo = eventNo;
	}

	public String getEventName() {
		return eventName;
	}

	public void setEventName(String eventName) {
		this.eventName = eventName;
	}

	public String getEventContents() {
		return eventContents;
	}

	public void setEventContents(String eventContents) {
		this.eventContents = eventContents;
	}

	public Date getEventDate() {
		return eventDate;
	}

	public void setEventDate(Date eventDate) {
		this.eventDate = eventDate;
	}

	public char getEventProcessing() {
		return eventProcessing;
	}

	public void setEventProcessing(char eventProcessing) {
		this.eventProcessing = eventProcessing;
	}

	public char getEventStatus() {
		return eventStatus;
	}

	public void setEventStatus(char eventStatus) {
		this.eventStatus = eventStatus;
	}

	@Override
	public String toString() {
		return "Event [eventNo=" + eventNo + ", eventName=" + eventName + ", eventContents=" + eventContents
				+ ", eventDate=" + eventDate + ", eventProcessing=" + eventProcessing + ", eventStatus=" + eventStatus
				+ "]";
	}
	
}
