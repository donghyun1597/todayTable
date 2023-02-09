package com.todayTable.member.model.vo;

public class WishList {
	private int memNo;
	private int recipeNo;
	
	public WishList() {}

	public WishList(int memNo, int recipeNo) {
		super();
		this.memNo = memNo;
		this.recipeNo = recipeNo;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public int getRecipeNo() {
		return recipeNo;
	}

	public void setRecipeNo(int recipeNo) {
		this.recipeNo = recipeNo;
	}

	@Override
	public String toString() {
		return "WishList [memNo=" + memNo + ", recipeNo=" + recipeNo + "]";
	}
	
	
}
