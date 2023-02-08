package com.todayTable.member.model.vo;

public class CategoryStep {
	private String cStepNo;
	private String cStepName;
	
	public CategoryStep() {}

	public CategoryStep(String cStepNo, String cStepName) {
		super();
		this.cStepNo = cStepNo;
		this.cStepName = cStepName;
	}

	public String getcStepNo() {
		return cStepNo;
	}

	public void setcStepNo(String cStepNo) {
		this.cStepNo = cStepNo;
	}

	public String getcStepName() {
		return cStepName;
	}

	public void setcStepName(String cStepName) {
		this.cStepName = cStepName;
	}

	@Override
	public String toString() {
		return "CategoryStep [cStepNo=" + cStepNo + ", cStepName=" + cStepName + "]";
	}
	
	
}
