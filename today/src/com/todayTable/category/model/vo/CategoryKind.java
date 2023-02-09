package com.todayTable.category.model.vo;

public class CategoryKind {
	private String cKindNo;
	private String cKindName;
	
	public CategoryKind() {}
	public CategoryKind(String cKindNo, String cKindName) {
		super();
		this.cKindNo = cKindNo;
		this.cKindName = cKindName;
	}
	public String getcKindNo() {
		return cKindNo;
	}
	public void setcKindNo(String cKindNo) {
		this.cKindNo = cKindNo;
	}
	public String getcKindName() {
		return cKindName;
	}
	public void setcKindName(String cKindName) {
		this.cKindName = cKindName;
	}
	@Override
	public String toString() {
		return "CategoryKind [cKindNo=" + cKindNo + ", cKindName=" + cKindName + "]";
	}
	
	
}
