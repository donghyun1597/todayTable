package com.todayTable.recipe.model.vo;

import java.sql.Date;

public class MyComment {
	
    private String comContent;	// 댓글 내용
    private Date comDate;	// 댓글 쓴 날짜
    private String recipeName;	// 레시피 제목
    private String recipePic;	// 레시피 대표 이미지
    private int recipeViews;	// 레시피 조회수
    
    public MyComment () {}

	public MyComment(String comContent, Date comDate, String recipeName, String recipePic, int recipeViews) {
		super();
		this.comContent = comContent;
		this.comDate = comDate;
		this.recipeName = recipeName;
		this.recipePic = recipePic;
		this.recipeViews = recipeViews;
	}

	public String getComContent() {
		return comContent;
	}

	public void setComContent(String comContent) {
		this.comContent = comContent;
	}

	public Date getComDate() {
		return comDate;
	}

	public void setComDate(Date comDate) {
		this.comDate = comDate;
	}

	public String getRecipeName() {
		return recipeName;
	}

	public void setRecipeName(String recipeName) {
		this.recipeName = recipeName;
	}

	public String getRecipePic() {
		return recipePic;
	}

	public void setRecipePic(String recipePic) {
		this.recipePic = recipePic;
	}

	public int getRecipeViews() {
		return recipeViews;
	}

	public void setRecipeViews(int recipeViews) {
		this.recipeViews = recipeViews;
	}

	@Override
	public String toString() {
		return "MyComment [comContent=" + comContent + ", comDate=" + comDate + ", recipeName=" + recipeName
				+ ", recipePic=" + recipePic + ", recipeViews=" + recipeViews + "]";
	}
    
    

}
