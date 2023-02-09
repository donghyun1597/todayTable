package com.todayTable.recipe.model.vo;

public class CookingOrderImg {
	private int coNo;
	private String ordImgImgurl;
	
	public CookingOrderImg() {}

	public CookingOrderImg(int coNo, String ordImgImgurl) {
		super();
		this.coNo = coNo;
		this.ordImgImgurl = ordImgImgurl;
	}

	public int getCoNo() {
		return coNo;
	}

	public void setCoNo(int coNo) {
		this.coNo = coNo;
	}

	public String getOrdImgImgurl() {
		return ordImgImgurl;
	}

	public void setOrdImgImgurl(String ordImgImgurl) {
		this.ordImgImgurl = ordImgImgurl;
	}

	@Override
	public String toString() {
		return "CookingOrderImg [coNo=" + coNo + ", ordImgImgurl=" + ordImgImgurl + "]";
	}
	
	
}
