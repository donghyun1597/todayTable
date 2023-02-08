package com.todayTable.member.model.vo;

public class MainImg {
	private int mainImgNo;
	private String mainImgImg;
	
	public MainImg() {}

	public MainImg(int mainImgNo, String mainImgImg) {
		super();
		this.mainImgNo = mainImgNo;
		this.mainImgImg = mainImgImg;
	}

	public int getMainImgNo() {
		return mainImgNo;
	}

	public void setMainImgNo(int mainImgNo) {
		this.mainImgNo = mainImgNo;
	}

	public String getMainImgImg() {
		return mainImgImg;
	}

	public void setMainImgImg(String mainImgImg) {
		this.mainImgImg = mainImgImg;
	}

	@Override
	public String toString() {
		return "MainImg [mainImgNo=" + mainImgNo + ", mainImgImg=" + mainImgImg + "]";
	}
	
	
}
