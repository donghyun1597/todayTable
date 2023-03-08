package com.todayTable.customerCenter.model.vo;

import java.sql.Date;

public class Inquiry {
	private int inqNo;
	private int MemNo;
	private String inqName;
	private String inqQuestion;
	private Date inqDate;
	private String inqAnswer;
	private String inqProcessing;
	private String inqPrivate;
	private String inqStatus;
	
	private String memId;
	
	public Inquiry() {}

	public Inquiry(int inqNo, String inqName, String inqProcessing, String memId, Date inqDate, String inqQuestion, String inqAnswer, String inqPrivate) {
		super();
		this.inqNo = inqNo;
		this.inqName = inqName;
		this.inqProcessing = inqProcessing;
		this.memId = memId;
		this.inqDate = inqDate;
		this.inqQuestion = inqQuestion;
		this.inqAnswer = inqAnswer;
		this.inqPrivate = inqPrivate;
	}

	public Inquiry(int inqNo, int memNo, String inqName, String inqQuestion, Date inqDate, String inqAnswer,
			String inqProcessing, String inqPrivate, String inqStatus) {
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
	
	

	public Inquiry(int inqNo, int memNo, String inqName, String inqQuestion, Date inqDate, String inqAnswer,
			String inqProcessing, String inqPrivate) {
		super();
		this.inqNo = inqNo;
		this.MemNo = memNo;
		this.inqName = inqName;
		this.inqQuestion = inqQuestion;
		this.inqDate = inqDate;
		this.inqAnswer = inqAnswer;
		this.inqProcessing = inqProcessing;
		this.inqPrivate = inqPrivate;
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

	public String getInqProcessing() {
		return inqProcessing;
	}

	public void setInqProcessing(String inqProcessing) {
		this.inqProcessing = inqProcessing;
	}

	public String getInqPrivate() {
		return inqPrivate;
	}

	public void setInqPrivate(String inqPrivate) {
		this.inqPrivate = inqPrivate;
	}

	public String getInqStatus() {
		return inqStatus;
	}

	public void setInqStatus(String inqStatus) {
		this.inqStatus = inqStatus;
	}
	
	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}



	@Override
	public String toString() {
		return "Inquiry [inqNo=" + inqNo + ", MemNo=" + MemNo + ", inqName=" + inqName + ", inqQuestion=" + inqQuestion
				+ ", inqDate=" + inqDate + ", inqAnswer=" + inqAnswer + ", inqProcessing=" + inqProcessing
				+ ", inqPrivate=" + inqPrivate + ", inqStatus=" + inqStatus + "]";
	}
	
	
	
}
