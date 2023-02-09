package com.todayTable.recipe.model.vo;

public class CookingOrder {
	private int coNo;
	private int recipeNo;
	private String coStep;
	private String coContent;
	
	public CookingOrder() {}

	public CookingOrder(int coNo, int recipeNo, String coStep, String coContent) {
		super();
		this.coNo = coNo;
		this.recipeNo = recipeNo;
		this.coStep = coStep;
		this.coContent = coContent;
	}

	public int getCoNo() {
		return coNo;
	}

	public void setCoNo(int coNo) {
		this.coNo = coNo;
	}

	public int getRecipeNo() {
		return recipeNo;
	}

	public void setRecipeNo(int recipeNo) {
		this.recipeNo = recipeNo;
	}

	public String getCoStep() {
		return coStep;
	}

	public void setCoStep(String coStep) {
		this.coStep = coStep;
	}

	public String getCoContent() {
		return coContent;
	}

	public void setCoContent(String coContent) {
		this.coContent = coContent;
	}

	@Override
	public String toString() {
		return "CookingOrder [coNo=" + coNo + ", recipeNo=" + recipeNo + ", coStep=" + coStep + ", coContent="
				+ coContent + "]";
	}
	
	

}
