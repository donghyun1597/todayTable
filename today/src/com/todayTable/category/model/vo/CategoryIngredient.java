package com.todayTable.category.model.vo;

public class CategoryIngredient {
	private String cIngreNo;
	private String cIngreName;
	
	public CategoryIngredient() {}

	public CategoryIngredient(String cIngreNo, String cIngreName) {
		super();
		this.cIngreNo = cIngreNo;
		this.cIngreName = cIngreName;
	}

	public String getcIngreNo() {
		return cIngreNo;
	}

	public void setcIngreNo(String cIngreNo) {
		this.cIngreNo = cIngreNo;
	}

	public String getcIngreName() {
		return cIngreName;
	}

	public void setcIngreName(String cIngreName) {
		this.cIngreName = cIngreName;
	}

	@Override
	public String toString() {
		return "CategoryIngredient [cIngreNo=" + cIngreNo + ", cIngreName=" + cIngreName + "]";
	}
	
	

}
