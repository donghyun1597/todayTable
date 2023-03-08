package com.todayTable.admin.main.model.vo;

public class Count {

	private int memCount;
	private int inquiryCount;
	private int reportCount;
	private int eventCount;
	
	public Count() {}

	public Count(int memCount, int inquiryCount, int reportCount, int eventCount) {
		super();
		this.memCount = memCount;
		this.inquiryCount = inquiryCount;
		this.reportCount = reportCount;
		this.eventCount = eventCount;
	}

	public int getMemCount() {
		return memCount;
	}

	public void setMemCount(int memCount) {
		this.memCount = memCount;
	}

	public int getInquiryCount() {
		return inquiryCount;
	}

	public void setInquiryCount(int inquiryCount) {
		this.inquiryCount = inquiryCount;
	}

	public int getReportCount() {
		return reportCount;
	}

	public void setReportCount(int reportCount) {
		this.reportCount = reportCount;
	}

	public int getEventCount() {
		return eventCount;
	}

	public void setEventCount(int eventCount) {
		this.eventCount = eventCount;
	}

	@Override
	public String toString() {
		return "Count [memCount=" + memCount + ", inquiryCount=" + inquiryCount + ", reportCount=" + reportCount
				+ ", eventCount=" + eventCount + "]";
	}
	
	
}
