package com.todayTable.member.model.vo;

public class CategoryNation {
	private String cNatNo;
	private String cNatName;
	
	public CategoryNation() {}

	public CategoryNation(String cNatNo, String cNatName) {
		super();
		this.cNatNo = cNatNo;
		this.cNatName = cNatName;
	}

	public String getcNatNo() {
		return cNatNo;
	}

	public void setcNatNo(String cNatNo) {
		this.cNatNo = cNatNo;
	}

	public String getcNatName() {
		return cNatName;
	}

	public void setcNatName(String cNatName) {
		this.cNatName = cNatName;
	}

	@Override
	public String toString() {
		return "CategoryNation [cNatNo=" + cNatNo + ", cNatName=" + cNatName + "]";
	}
	
	
}
