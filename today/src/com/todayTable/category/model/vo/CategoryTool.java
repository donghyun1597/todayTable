package com.todayTable.category.model.vo;

public class CategoryTool {
	private String cToolNo;
	private String cToolName;
	
	public CategoryTool() {}

	public CategoryTool(String cToolNo, String cToolName) {
		super();
		this.cToolNo = cToolNo;
		this.cToolName = cToolName;
	}

	public String getcToolNo() {
		return cToolNo;
	}

	public void setcToolNo(String cToolNo) {
		this.cToolNo = cToolNo;
	}

	public String getcToolName() {
		return cToolName;
	}

	public void setcToolName(String cToolName) {
		this.cToolName = cToolName;
	}

	@Override
	public String toString() {
		return "CategoryTool [cToolNo=" + cToolNo + ", cToolName=" + cToolName + "]";
	}
	
	
}
