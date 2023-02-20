package com.todayTable.recipe.model.vo;

import java.sql.Date;

public class Comment {
	private int comNo;
	private int recipeNo;
	private String comContent;
	private int memNo;
	private Date comDate;
	private String comStatus;
	
	public Comment() {}

	public Comment(int comNo, int recipeNo, String comContent, int memNo, Date comDate, String comStatus) {
		super();
		this.comNo = comNo;
		this.recipeNo = recipeNo;
		this.comContent = comContent;
		this.memNo = memNo;
		this.comDate = comDate;
		this.comStatus = comStatus;
	}

	public int getComNo() {
		return comNo;
	}

	public void setComNo(int comNo) {
		this.comNo = comNo;
	}

	public int getRecipeNo() {
		return recipeNo;
	}

	public void setRecipeNo(int recipeNo) {
		this.recipeNo = recipeNo;
	}

	public String getComContent() {
		return comContent;
	}

	public void setComContent(String comContent) {
		this.comContent = comContent;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public Date getComDate() {
		return comDate;
	}

	public void setComDate(Date comDate) {
		this.comDate = comDate;
	}

	public String getComStatus() {
		return comStatus;
	}

	public void setComStatus(String comStatus) {
		this.comStatus = comStatus;
	}

	@Override
	public String toString() {
		return "Comment [comNo=" + comNo + ", recipeNo=" + recipeNo + ", comContent=" + comContent + ", memNo=" + memNo
				+ ", comDate=" + comDate + ", comStatus=" + comStatus + "]";
	}

	
}
