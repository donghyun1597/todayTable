package com.todayTable.recipe.model.vo;

import java.sql.Date;

public class Review {
	private int revNo;
	private int recipeNo;
	private String revContent;
	private String revImg;
	private int memNo;
	private Date revDate;
	private String revStatus;
	
	public Review() {}
	
	

	public Review(int revNo, int recipeNo, String revContent, String revImg, int memNo, Date revDate,
			String revStatus) {
		super();
		this.revNo = revNo;
		this.recipeNo = recipeNo;
		this.revContent = revContent;
		this.revImg = revImg;
		this.memNo = memNo;
		this.revDate = revDate;
		this.revStatus = revStatus;
	}



	public int getRevNo() {
		return revNo;
	}

	public void setRevNo(int revNo) {
		this.revNo = revNo;
	}

	public int getRecipeNo() {
		return recipeNo;
	}

	public void setRecipeNo(int recipeNo) {
		this.recipeNo = recipeNo;
	}

	public String getRevContent() {
		return revContent;
	}

	public void setRevContent(String revContent) {
		this.revContent = revContent;
	}

	public String getRevImg() {
		return revImg;
	}

	public void setRevImg(String revImg) {
		this.revImg = revImg;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public Date getRevDate() {
		return revDate;
	}

	public void setRevDate(Date revDate) {
		this.revDate = revDate;
	}

	public String getRevStatus() {
		return revStatus;
	}

	public void setRevStatus(String revStatus) {
		this.revStatus = revStatus;
	}

	@Override
	public String toString() {
		return "Review [revNo=" + revNo + ", recipeNo=" + recipeNo + ", revContent=" + revContent + ", revImg=" + revImg
				+ ", memNo=" + memNo + ", revDate=" + revDate + ", revStatus=" + revStatus + "]";
	}

	
	
	
}
