package com.todayTable.member.model.vo;

import java.sql.Date;

public class Report {
	private int repNo;
	private int memNo;
	private String repContents;
	private Date repDate;
	private String repClsfc;
	private char repProcessing;
	private char repStatus;
	
	public Report() {}

	public Report(int repNo, int memNo, String repContents, Date repDate, String repClsfc, char repProcessing,
			char repStatus) {
		super();
		this.repNo = repNo;
		this.memNo = memNo;
		this.repContents = repContents;
		this.repDate = repDate;
		this.repClsfc = repClsfc;
		this.repProcessing = repProcessing;
		this.repStatus = repStatus;
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

	public char getRepProcessing() {
		return repProcessing;
	}

	public void setRepProcessing(char repProcessing) {
		this.repProcessing = repProcessing;
	}

	public char getRepStatus() {
		return repStatus;
	}

	public void setRepStatus(char repStatus) {
		this.repStatus = repStatus;
	}

	@Override
	public String toString() {
		return "Report [repNo=" + repNo + ", memNo=" + memNo + ", repContents=" + repContents + ", repDate=" + repDate
				+ ", repClsfc=" + repClsfc + ", repProcessing=" + repProcessing + ", repStatus=" + repStatus + "]";
	}
	
	
	
}
