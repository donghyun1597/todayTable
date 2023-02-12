package com.todayTable.event.model.vo;

import java.sql.Date;

public class EventComment {
	private int eventComNo;
	private int eventNo;
	private int memNo;
	private String eventComContents;
	private Date eventComDate;
	private char eventComStatus;
	
	public EventComment() {}

	public EventComment(int eventComNo, int eventNo, int memNo, String eventComContents, Date eventComDate,
			char eventComStatus) {
		super();
		this.eventComNo = eventComNo;
		this.eventNo = eventNo;
		this.memNo = memNo;
		this.eventComContents = eventComContents;
		this.eventComDate = eventComDate;
		this.eventComStatus = eventComStatus;
	}

	public int getEventComNo() {
		return eventComNo;
	}

	public void setEventComNo(int eventComNo) {
		this.eventComNo = eventComNo;
	}

	public int getEventNo() {
		return eventNo;
	}

	public void setEventNo(int eventNo) {
		this.eventNo = eventNo;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getEventComContents() {
		return eventComContents;
	}

	public void setEventComContents(String eventComContents) {
		this.eventComContents = eventComContents;
	}

	public Date getEventComDate() {
		return eventComDate;
	}

	public void setEventComDate(Date eventComDate) {
		this.eventComDate = eventComDate;
	}

	public char getEventComStatus() {
		return eventComStatus;
	}

	public void setEventComStatus(char eventComStatus) {
		this.eventComStatus = eventComStatus;
	}

	@Override
	public String toString() {
		return "EventComment [eventComNo=" + eventComNo + ", eventNo=" + eventNo + ", memNo=" + memNo
				+ ", eventComContents=" + eventComContents + ", eventComDate=" + eventComDate + ", eventComStatus="
				+ eventComStatus + "]";
	}
	
	
}
