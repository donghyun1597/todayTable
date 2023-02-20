package com.todayTable.recipe.model.vo;

public class Ingredient {
	private int ingreNo;
	private int ingreCno;
	private String ingreName;
	private String ingreAmount;
	
	public Ingredient() {}

	public Ingredient(int ingreNo, int ingreCno, String ingreName, String ingreAmount) {
		super();
		this.ingreNo = ingreNo;
		this.ingreCno = ingreCno;
		this.ingreName = ingreName;
		this.ingreAmount = ingreAmount;
	}

	public int getIngreNo() {
		return ingreNo;
	}

	public void setIngreNo(int ingreNo) {
		this.ingreNo = ingreNo;
	}

	public int getIngreCno() {
		return ingreCno;
	}

	public void setIngreCno(int ingreCno) {
		this.ingreCno = ingreCno;
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
		return "Ingredient [ingreNo=" + ingreNo + ", ingreCno=" + ingreCno + ", ingreName=" + ingreName
				+ ", ingreAmount=" + ingreAmount + "]";
	}


	
	
}
