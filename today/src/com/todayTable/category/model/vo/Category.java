package com.todayTable.category.model.vo;

public class Category {
	private int recipeNo;
	private String cNatName;
	private String cStepName;
	private String cToolName;
	private String cKindName;
	private String cThemeName;
	private String cIngreName;
	
	public Category() {}

	public Category(int recipeNo, String cNatName, String cStepName, String cToolName, String cKindName,
			String cThemeName, String cIngreName) {
		super();
		this.recipeNo = recipeNo;
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
		return "Category [recipeNo=" + recipeNo + ", cNatName=" + cNatName + ", cStepName=" + cStepName + ", cToolName="
				+ cToolName + ", cKindName=" + cKindName + ", cThemeName=" + cThemeName + ", cIngreName=" + cIngreName
				+ "]";
	}

	
	
}
