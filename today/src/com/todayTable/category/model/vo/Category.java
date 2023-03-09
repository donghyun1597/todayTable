package com.todayTable.category.model.vo;

public class Category {
	private int recipeNo;
	private String cNatNo;
	private String cStepNo;
	private String cToolNo;
	private String cKindNo;
	private String cThemeNo;
	private String cIngreNo;
	private int recipeName;
	private String cNatName;
	private String cStepName;
	private String cToolName;
	private String cKindName;
	private String cThemeName;
	private String cIngreName;
	
	public Category() {}

	public Category(int recipeNo, String cNatNo, String cStepNo, String cToolNo, String cKindNo, String cThemeNo,
			String cIngreNo, int recipeName, String cNatName, String cStepName, String cToolName, String cKindName,
			String cThemeName, String cIngreName) {
		super();
		this.recipeNo = recipeNo;
		this.cNatNo = cNatNo;
		this.cStepNo = cStepNo;
		this.cToolNo = cToolNo;
		this.cKindNo = cKindNo;
		this.cThemeNo = cThemeNo;
		this.cIngreNo = cIngreNo;
		this.recipeName = recipeName;
		this.cNatName = cNatName;
		this.cStepName = cStepName;
		this.cToolName = cToolName;
		this.cKindName = cKindName;
		this.cThemeName = cThemeName;
		this.cIngreName = cIngreName;
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

	public int getRecipeName() {
		return recipeName;
	}

	public void setRecipeName(int recipeName) {
		this.recipeName = recipeName;
	}

	public String getcNatName() {
		return cNatName;
	}

	public void setcNatName(String cNatName) {
		this.cNatName = cNatName;
	}

	public String getcStepName() {
		return cStepName;
	}

	public void setcStepName(String cStepName) {
		this.cStepName = cStepName;
	}

	public String getcToolName() {
		return cToolName;
	}

	public void setcToolName(String cToolName) {
		this.cToolName = cToolName;
	}

	public String getcKindName() {
		return cKindName;
	}

	public void setcKindName(String cKindName) {
		this.cKindName = cKindName;
	}

	public String getcThemeName() {
		return cThemeName;
	}

	public void setcThemeName(String cThemeName) {
		this.cThemeName = cThemeName;
	}

	public String getcIngreName() {
		return cIngreName;
	}

	public void setcIngreName(String cIngreName) {
		this.cIngreName = cIngreName;
	}

	@Override
	public String toString() {
		return "Category [recipeNo=" + recipeNo + ", cNatNo=" + cNatNo + ", cStepNo=" + cStepNo + ", cToolNo=" + cToolNo
				+ ", cKindNo=" + cKindNo + ", cThemeNo=" + cThemeNo + ", cIngreNo=" + cIngreNo + ", recipeName="
				+ recipeName + ", cNatName=" + cNatName + ", cStepName=" + cStepName + ", cToolName=" + cToolName
				+ ", cKindName=" + cKindName + ", cThemeName=" + cThemeName + ", cIngreName=" + cIngreName + "]";
	}

	
}
