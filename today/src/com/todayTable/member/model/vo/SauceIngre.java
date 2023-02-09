package com.todayTable.member.model.vo;

public class SauceIngre {
	private int sauceIngreNo;
	private int sauceNo;
	private int recipeNo;
	private String sauceIngreName;
	private String sauceIngreAmount;
	
	public SauceIngre() {}

	public SauceIngre(int sauceIngreNo, int sauceNo, int recipeNo, String sauceIngreName, String sauceIngreAmount) {
		super();
		this.sauceIngreNo = sauceIngreNo;
		this.sauceNo = sauceNo;
		this.recipeNo = recipeNo;
		this.sauceIngreName = sauceIngreName;
		this.sauceIngreAmount = sauceIngreAmount;
	}

	public int getSauceIngreNo() {
		return sauceIngreNo;
	}

	public void setSauceIngreNo(int sauceIngreNo) {
		this.sauceIngreNo = sauceIngreNo;
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

	public String getSauceIngreName() {
		return sauceIngreName;
	}

	public void setSauceIngreName(String sauceIngreName) {
		this.sauceIngreName = sauceIngreName;
	}

	public String getSauceIngreAmount() {
		return sauceIngreAmount;
	}

	public void setSauceIngreAmount(String sauceIngreAmount) {
		this.sauceIngreAmount = sauceIngreAmount;
	}

	@Override
	public String toString() {
		return "SauceIngre [sauceIngreNo=" + sauceIngreNo + ", sauceNo=" + sauceNo + ", recipeNo=" + recipeNo
				+ ", sauceIngreName=" + sauceIngreName + ", sauceIngreAmount=" + sauceIngreAmount + "]";
	}
	
	
	

}
