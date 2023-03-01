package com.todayTable.recipe.model.vo;

import java.sql.Date;

public class MyComment {
	
	private int comNo;	// 댓글 번호
	private int recipeNo;	// 레시피글 번호
	private String comContent;	// 댓글 내용 
	private int memNo;	// 회원 번호
	private Date comDate;	// 입력 시간
	private String comStatus;	// 삭제여부
	
	private String recipeName;	// 레시피 이름
	private String recipePic;	// 레시피 사진
	private int recipeViews;	// 레시피 조회수
	
	
	public MyComment() {}

	
	public MyComment(int comNo, int recipeNo, String comContent, int memNo, Date comDate, String comStatus,
			String recipeName, String recipePic, int recipeViews) {
		super();
		this.comNo = comNo;
		this.recipeNo = recipeNo;
		this.comContent = comContent;
		this.memNo = memNo;
		this.comDate = comDate;
		this.comStatus = comStatus;
		this.recipeName = recipeName;
		this.recipePic = recipePic;
		this.recipeViews = recipeViews;
	}

	
	int getComNo() {
		return comNo;
	}

	void setComNo(int comNo) {
		this.comNo = comNo;
	}

	int getRecipeNo() {
		return recipeNo;
	}

	void setRecipeNo(int recipeNo) {
		this.recipeNo = recipeNo;
	}

	String getComContent() {
		return comContent;
	}

	void setComContent(String comContent) {
		this.comContent = comContent;
	}

	int getMemNo() {
		return memNo;
	}

	void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	Date getComDate() {
		return comDate;
	}

	void setComDate(Date comDate) {
		this.comDate = comDate;
	}

	String getComStatus() {
		return comStatus;
	}

	void setComStatus(String comStatus) {
		this.comStatus = comStatus;
	}

	String getRecipeName() {
		return recipeName;
	}

	void setRecipeName(String recipeName) {
		this.recipeName = recipeName;
	}

	String getRecipePic() {
		return recipePic;
	}

	void setRecipePic(String recipePic) {
		this.recipePic = recipePic;
	}

	int getRecipeViews() {
		return recipeViews;
	}

	void setRecipeViews(int recipeViews) {
		this.recipeViews = recipeViews;
	}
	
	
	
	
	@Override
	public String toString() {
		return "MyComment [comNo=" + comNo + ", recipeNo=" + recipeNo + ", comContent=" + comContent + ", memNo="
				+ memNo + ", comDate=" + comDate + ", comStatus=" + comStatus + ", recipeName=" + recipeName
				+ ", recipePic=" + recipePic + ", recipeViews=" + recipeViews + "]";
	}
	
	
}

	

	
	