package com.todayTable.category.model.vo;

public class Category {
	private int recipeNo;
	private String cNatNo;
	private String cStepNo;
	private String cToolNo;
	private String cKindNo;
	private String cThemeNo;
	private String cIngreNo;
	
	public Category() {}

	public Category(int recipeNo, String cNatNo, String cStepNo, String cToolNo, String cKindNo, String cThemeNo,
			String cIngreNo) {
		super();
		this.recipeNo = recipeNo;
		this.cNatNo = cNatNo;
		this.cStepNo = cStepNo;
		this.cToolNo = cToolNo;
		this.cKindNo = cKindNo;
		this.cThemeNo = cThemeNo;
		this.cIngreNo = cIngreNo;
	}

	public int getRecipeNo() {
		return recipeNo;
	}

	public void setRecipeNo(int recipeNo) {
		this.recipeNo = recipeNo;
	}

	public String getcNatNo() {
		return cNatNo;
	}

	public void setcNatNo(String cNatNo) {
		this.cNatNo = cNatNo;
	}

	public String getcStepNo() {
		return cStepNo;
	}

	public void setcStepNo(String cStepNo) {
		this.cStepNo = cStepNo;
	}

	public String getcToolNo() {
		return cToolNo;
	}

	public void setcToolNo(String cToolNo) {
		this.cToolNo = cToolNo;
	}

	public String getcKindNo() {
		return cKindNo;
	}

	public void setcKindNo(String cKindNo) {
		this.cKindNo = cKindNo;
	}

	public String getcThemeNo() {
		return cThemeNo;
	}

	public void setcThemeNo(String cThemeNo) {
		this.cThemeNo = cThemeNo;
	}

	public String getcIngreNo() {
		return cIngreNo;
	}

	public void setcIngreNo(String cIngreNo) {
		this.cIngreNo = cIngreNo;
	}

	@Override
	public String toString() {
		return "Category [recipeNo=" + recipeNo + ", cNatNo=" + cNatNo + ", cStepNo=" + cStepNo + ", cToolNo=" + cToolNo
				+ ", cKindNo=" + cKindNo + ", cThemeNo=" + cThemeNo + ", cIngreNo=" + cIngreNo + "]";
	}
	
	
}
