package com.todayTable.customerCenter.model.vo;

import java.sql.Date;

public class Inquiry {
	private int inqNo;
	private int MemNo;
	private String inqName;
	private String inqQuestion;
	private Date inqDate;
	private String inqAnswer;
	private char inqProcessing;
	private char inqPrivate;
	private char inqStatus;
	
	public Inquiry() {}

	public Inquiry(int inqNo, int memNo, String inqName, String inqQuestion, Date inqDate, String inqAnswer,
			char inqProcessing, char inqPrivate, char inqStatus) {
		super();
		this.inqNo = inqNo;
		MemNo = memNo;
		this.inqName = inqName;
		this.inqQuestion = inqQuestion;
		this.inqDate = inqDate;
		this.inqAnswer = inqAnswer;
		this.inqProcessing = inqProcessing;
		this.inqPrivate = inqPrivate;
		this.inqStatus = inqStatus;
	}

	public int getInqNo() {
		return inqNo;
	}

	public void setInqNo(int inqNo) {
		this.inqNo = inqNo;
	}

	public int getMemNo() {
		return MemNo;
	}

	public void setMemNo(int memNo) {
		MemNo = memNo;
	}

	public String getInqName() {
		return inqName;
	}

	public void setInqName(String inqName) {
		this.inqName = inqName;
	}

	public String getInqQuestion() {
		return inqQuestion;
	}

	public void setInqQuestion(String inqQuestion) {
		this.inqQuestion = inqQuestion;
	}

	public Date getInqDate() {
		return inqDate;
	}

	public void setInqDate(Date inqDate) {
		this.inqDate = inqDate;
	}

	public String getInqAnswer() {
		return inqAnswer;
	}

	public void setInqAnswer(String inqAnswer) {
		this.inqAnswer = inqAnswer;
	}

	public char getInqProcessing() {
		return inqProcessing;
	}

	public void setInqProcessing(char inqProcessing) {
		this.inqProcessing = inqProcessing;
	}

	public char getInqPrivate() {
		return inqPrivate;
	}

	public void setInqPrivate(char inqPrivate) {
		this.inqPrivate = inqPrivate;
	}

	public char getInqStatus() {
		return inqStatus;
	}

	public void setInqStatus(char inqStatus) {
		this.inqStatus = inqStatus;
	}

	@Override
	public String toString() {
		return "Inquiry [inqNo=" + inqNo + ", MemNo=" + MemNo + ", inqName=" + inqName + ", inqQuestion=" + inqQuestion
				+ ", inqDate=" + inqDate + ", inqAnswer=" + inqAnswer + ", inqProcessing=" + inqProcessing
				+ ", inqPrivate=" + inqPrivate + ", inqStatus=" + inqStatus + "]";
	}
	
	
	
}
