package com.todayTable.recipe.model.vo;

public class MemImg {
	
	private String memId;
	private String memImg;
	
	public MemImg() {}

	public MemImg(String memId, String memImg) {
		super();
		this.memId = memId;
		this.memImg = memImg;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemImg() {
		return memImg;
	}

	public void setMemImg(String memImg) {
		this.memImg = memImg;
	}

	@Override
	public String toString() {
		return "MemImg [memId=" + memId + ", memImg=" + memImg + "]";
	}
	
	

}
