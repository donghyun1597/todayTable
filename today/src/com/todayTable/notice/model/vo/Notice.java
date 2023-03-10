package com.todayTable.notice.model.vo;

import java.sql.Date;

public class Notice {
	private int noticeNo;
	private String noticeName;
	private String noticeContents;
	private Date noticeDate;
	private String noticeClsfc;
	private String noticeStatus;
	
	public Notice() {}

	public Notice(int noticeNo, String noticeName, String noticeContents, Date noticeDate, String noticeClsfc,
			String noticeStatus) {
		super();
		this.noticeNo = noticeNo;
		this.noticeName = noticeName;
		this.noticeContents = noticeContents;
		this.noticeDate = noticeDate;
		this.noticeClsfc = noticeClsfc;
		this.noticeStatus = noticeStatus;
	}

	public Notice(int noticeNo, String noticeClsfc, String noticeName, Date noticeDate) {
		this.noticeNo = noticeNo;
		this.noticeClsfc = noticeClsfc;
		this.noticeName = noticeName;
		this.noticeDate = noticeDate;

	}
	
	



	public Notice(int noticeNo, String noticeName, String noticeContents, Date noticeDate, String noticeClsfc) {
		super();
		this.noticeNo = noticeNo;
		this.noticeName = noticeName;
		this.noticeContents = noticeContents;
		this.noticeDate = noticeDate;
		this.noticeClsfc = noticeClsfc;
	}

	public Notice(String noticeName, String noticeContents, Date noticeDate, String noticeClsfc) {
		super();
		this.noticeName = noticeName;
		this.noticeContents = noticeContents;
		this.noticeDate = noticeDate;
		this.noticeClsfc = noticeClsfc;
	}

	public int getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}

	public String getNoticeName() {
		return noticeName;
	}

	public void setNoticeName(String noticeName) {
		this.noticeName = noticeName;
	}

	public String getNoticeContents() {
		return noticeContents;
	}

	public void setNoticeContents(String noticeContents) {
		this.noticeContents = noticeContents;
	}

	public Date getNoticeDate() {
		return noticeDate;
	}

	public void setNoticeDate(Date noticeDate) {
		this.noticeDate = noticeDate;
	}

	public String getNoticeClsfc() {
		return noticeClsfc;
	}

	public void setNoticeClsfc(String noticeClsfc) {
		this.noticeClsfc = noticeClsfc;
	}

	public String getNoticeStatus() {
		return noticeStatus;
	}

	public void setNoticeStatus(String noticeStatus) {
		this.noticeStatus = noticeStatus;
	}

	@Override
	public String toString() {
		return "Notice [noticeNo=" + noticeNo + ", noticeName=" + noticeName + ", noticeContents=" + noticeContents
				+ ", noticeDate=" + noticeDate + ", noticeClsfc=" + noticeClsfc + ", noticeStatus=" + noticeStatus
				+ "]";
	}
	
	
	
	
	
}
