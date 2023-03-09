package com.todayTable.admin.main.model.vo;

public class Count {

	private int memCount;
	private int inquiryCount;
	private int reportCount;
	private int eventCount;
	private int recipeReportCount;
	private int commentReportCount;
	
	public Count() {}

	public Count(int memCount, int inquiryCount, int reportCount, int eventCount) {
		super();
		this.memCount = memCount;
		this.inquiryCount = inquiryCount;
		this.reportCount = reportCount;
		this.eventCount = eventCount;
	}
	

	public Count(int memCount, int inquiryCount, int reportCount, int eventCount, int recipeReportCount,
			int commentReportCount) {
		super();
		this.memCount = memCount;
		this.inquiryCount = inquiryCount;
		this.reportCount = reportCount;
		this.eventCount = eventCount;
		this.recipeReportCount = recipeReportCount;
		this.commentReportCount = commentReportCount;
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

	public int getRecipeReportCount() {
		return recipeReportCount;
	}

	public void setRecipeReportCount(int recipeReportCount) {
		this.recipeReportCount = recipeReportCount;
	}

	public int getCommentReportCount() {
		return commentReportCount;
	}

	public void setCommentReportCount(int commentReportCount) {
		this.commentReportCount = commentReportCount;
	}

	@Override
	public String toString() {
		return "Count [memCount=" + memCount + ", inquiryCount=" + inquiryCount + ", reportCount=" + reportCount
				+ ", eventCount=" + eventCount + "]";
	}
	
	
}
