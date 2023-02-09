package com.todayTable.member.model.vo;

public class Sauce {
	private int sauceNo;
	private int recipeNo;
	private String sauceName;
	
	public Sauce() {}

	public Sauce(int sauceNo, int recipeNo, String sauceName) {
		super();
		this.sauceNo = sauceNo;
		this.recipeNo = recipeNo;
		this.sauceName = sauceName;
	}

	public int getSauceNo() {
		return sauceNo;
	}

	public void setSauceNo(int sauceNo) {
		this.sauceNo = sauceNo;
	}

	public int getRecipeNo() {
		return recipeNo;
	}

	public void setRecipeNo(int recipeNo) {
		this.recipeNo = recipeNo;
	}

	public String getSauceName() {
		return sauceName;
	}

	public void setSauceName(String sauceName) {
		this.sauceName = sauceName;
	}

	@Override
	public String toString() {
		return "Sauce [sauceNo=" + sauceNo + ", recipeNo=" + recipeNo + ", sauceName=" + sauceName + "]";
	}
	
	

}
