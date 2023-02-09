package com.todayTable.category.model.vo;

public class CategoryTheme {
	private String cThemeNo;
	private String cThemeName;
	
	public CategoryTheme() {}

	public CategoryTheme(String cThemeNo, String cThemeName) {
		super();
		this.cThemeNo = cThemeNo;
		this.cThemeName = cThemeName;
	}

	public String getcThemeNo() {
		return cThemeNo;
	}

	public void setcThemeNo(String cThemeNo) {
		this.cThemeNo = cThemeNo;
	}

	public String getcThemeName() {
		return cThemeName;
	}

	public void setcThemeName(String cThemeName) {
		this.cThemeName = cThemeName;
	}

	@Override
	public String toString() {
		return "CategoryTheme [cThemeNo=" + cThemeNo + ", cThemeName=" + cThemeName + "]";
	}
	
	

}
