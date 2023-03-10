package com.todayTable.recipe.model.vo;

public class MyWishlist {
	
	 private String recipeName;
     private String recipePic;
     private int recipeViews;
     private int recipeNo;
     public MyWishlist() {}

	public MyWishlist(String recipeName, String recipePic, int recipeViews,int recipeNo) {
		super();
		this.recipeName = recipeName;
		this.recipePic = recipePic;
		this.recipeViews = recipeViews;
		this.recipeNo = recipeNo;
	}

	public int getRecipeNo() {
		return recipeNo;
	}

	public void setRecipeNo(int recipeNo) {
		this.recipeNo = recipeNo;
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
		return "MyWishlist [recipeName=" + recipeName + ", recipePic=" + recipePic + ", recipeViews=" + recipeViews
				+ "]";
	}
     
     
	

}
