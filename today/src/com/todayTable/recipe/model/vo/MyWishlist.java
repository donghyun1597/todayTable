package com.todayTable.recipe.model.vo;

public class MyWishlist {
	
	
	private int memNo;	// 회원번호
	private int recipeNo;	//레시피번호
	
	public MyWishlist() {}
	
	public MyWishlist(int memNo, int recipeNo) {
		super();
		this.memNo = memNo;
		this.recipeNo = recipeNo;
	}

	int getMemNo() {
		return memNo;
	}

	void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	int getRecipeNo() {
		return recipeNo;
	}

	void setRecipeNo(int recipeNo) {
		this.recipeNo = recipeNo;
	}

	@Override
	public String toString() {
		return "MyWishlist [memNo=" + memNo + ", recipeNo=" + recipeNo + "]";
	}
	
	
	
	

}
