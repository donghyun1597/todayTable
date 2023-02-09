package com.todayTable.recipe.model.vo;

public class Ingredient {
	private int ingreNo;
	private int recipeNo;
	private String ingreName;
	private String ingreAmount;
	
	public Ingredient() {}

	public Ingredient(int ingreNo, int recipeNo, String ingreName, String ingreAmount) {
		super();
		this.ingreNo = ingreNo;
		this.recipeNo = recipeNo;
		this.ingreName = ingreName;
		this.ingreAmount = ingreAmount;
	}

	public int getIngreNo() {
		return ingreNo;
	}

	public void setIngreNo(int ingreNo) {
		this.ingreNo = ingreNo;
	}

	public int getRecipeNo() {
		return recipeNo;
	}

	public void setRecipeNo(int recipeNo) {
		this.recipeNo = recipeNo;
	}

	public String getIngreName() {
		return ingreName;
	}

	public void setIngreName(String ingreName) {
		this.ingreName = ingreName;
	}

	public String getIngreAmount() {
		return ingreAmount;
	}

	public void setIngreAmount(String ingreAmount) {
		this.ingreAmount = ingreAmount;
	}

	@Override
	public String toString() {
		return "Ingredient [ingreNo=" + ingreNo + ", recipeNo=" + recipeNo + ", ingreName=" + ingreName
				+ ", ingreAmount=" + ingreAmount + "]";
	}
	
	
}
