package com.todayTable.recipe.model.vo;

public class MyWishlist {
	
	 private String recipeName;
     private String recipePic;
     private int recipeViews;
     
     public MyWishlist() {}

	public MyWishlist(String recipeName, String recipePic, int recipeViews) {
		super();
		this.recipeName = recipeName;
		this.recipePic = recipePic;
		this.recipeViews = recipeViews;
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
