package com.todayTable.customerCenter.model.vo;

import java.sql.Date;

public class Report {
	private int repNo;
	private int memNo;
	private String repContents;
	private Date repDate;
	private String repClsfc;
	private String repProcessing;
	private String repStatus;
	private String memId;
	private String repUrl;
	
	public Report() {}

	public Report(int repNo, int memNo, String repContents, Date repDate, String repClsfc, String repProcessing,
			String repStatus) {
		super();
		this.repNo = repNo;
		this.memNo = memNo;
		this.repContents = repContents;
		this.repDate = repDate;
		this.repClsfc = repClsfc;
		this.repProcessing = repProcessing;
		this.repStatus = repStatus;
	}
	
	
	

	public Report(int repNo, String memId, String repContents, Date repDate, String repClsfc, String repProcessing) {
		super();
		this.repNo = repNo;
		this.memId = memId;
		this.repContents = repContents;
		this.repDate = repDate;
		this.repClsfc = repClsfc;
		this.repProcessing = repProcessing;
	}

	public Report(int repNo, String memId, String repContents, Date repDate, String repClsfc, String repProcessing, String repUrl) {
		super();
		this.repNo = repNo;
		this.memId = memId;
		this.repContents = repContents;
		this.repDate = repDate;
		this.repClsfc = repClsfc;
		this.repProcessing = repProcessing;
		this.repUrl = repUrl;
	}

	public int getRepNo() {
		return repNo;
	}

	public void setRepNo(int repNo) {
		this.repNo = repNo;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getRepContents() {
		return repContents;
	}

	public void setRepContents(String repContents) {
		this.repContents = repContents;
	}

	public Date getRepDate() {
		return repDate;
	}

	public void setRepDate(Date repDate) {
		this.repDate = repDate;
	}

	public String getRepClsfc() {
		return repClsfc;
	}

	public void setRepClsfc(String repClsfc) {
		this.repClsfc = repClsfc;
	}

	public String getRepProcessing() {
		return repProcessing;
	}

	public void setRepProcessing(String repProcessing) {
		this.repProcessing = repProcessing;
	}

	public String getRepStatus() {
		return repStatus;
	}

	public void setRepStatus(String repStatus) {
		this.repStatus = repStatus;
	}

	
	
	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}
	
	

	public String getRepUrl() {
		return repUrl;
	}

	public void setRepUrl(String repUrl) {
		this.repUrl = repUrl;
	}

	@Override
	public String toString() {
		return "Report [repNo=" + repNo + ", memNo=" + memNo + ", repContents=" + repContents + ", repDate=" + repDate
				+ ", repClsfc=" + repClsfc + ", repProcessing=" + repProcessing + ", repStatus=" + repStatus + "]";
	}

	
}
