package com.todayTable.event.model.vo;

import java.sql.Date;

public class Event {
	private int eventNo;
	private String eventName;
	private String eventContents;
	private Date eventDate;
	private String eventProcessing;
	private String eventStatus;
	
	public Event() {}

	public Event(int eventNo, String eventName, String eventContents, Date eventDate, String eventProcessing,
			String eventStatus) {
		super();
		this.eventNo = eventNo;
		this.eventName = eventName;
		this.eventContents = eventContents;
		this.eventDate = eventDate;
		this.eventProcessing = eventProcessing;
		this.eventStatus = eventStatus;
	}

	public Event(int eventNo, String eventProcessing, String eventName, Date eventDate) {
		super();
		this.eventNo = eventNo;
		this.eventProcessing = eventProcessing;
		this.eventName = eventName;
		this.eventDate = eventDate;
	}
	
	

	public Event(int eventNo, String eventName, Date eventDate, String eventProcessing) {
		super();
		this.eventNo = eventNo;
		this.eventName = eventName;
		this.eventDate = eventDate;
		this.eventProcessing = eventProcessing;
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

	public String getEventProcessing() {
		return eventProcessing;
	}

	public void setEventProcessing(String eventProcessing) {
		this.eventProcessing = eventProcessing;
	}

	public String getEventStatus() {
		return eventStatus;
	}

	public void setEventStatus(String eventStatus) {
		this.eventStatus = eventStatus;
	}

	@Override
	public String toString() {
		return "Event [eventNo=" + eventNo + ", eventName=" + eventName + ", eventContents=" + eventContents
				+ ", eventDate=" + eventDate + ", eventProcessing=" + eventProcessing + ", eventStatus=" + eventStatus
				+ "]";
	}
	
}
