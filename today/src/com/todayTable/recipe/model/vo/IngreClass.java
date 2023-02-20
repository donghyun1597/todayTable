package com.todayTable.recipe.model.vo;

public class IngreClass {

	private int ingreCno;
	private int recipeNo;
	private String ingreCname;
	
	public IngreClass() {}

	public IngreClass(int ingreCno, int recipeNo, String ingreCname) {
		super();
		this.ingreCno = ingreCno;
		this.recipeNo = recipeNo;
		this.ingreCname = ingreCname;
	}

	public int getIngreCno() {
		return ingreCno;
	}

	public void setIngreCno(int ingreCno) {
		this.ingreCno = ingreCno;
	}

	public int getRecipeNo() {
		return recipeNo;
	}

	public void setRecipeNo(int recipeNo) {
		this.recipeNo = recipeNo;
	}

	public String getIngreCname() {
		return ingreCname;
	}

	public void setIngreCname(String ingreCname) {
		this.ingreCname = ingreCname;
	}

	@Override
	public String toString() {
		return "IngreClass [ingreCno=" + ingreCno + ", recipeNo=" + recipeNo + ", ingreCname=" + ingreCname + "]";
	}
	
	
}
