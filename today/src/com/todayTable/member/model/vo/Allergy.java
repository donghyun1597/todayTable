package com.todayTable.member.model.vo;

public class Allergy {
	private String algNo;
	private String algName;
	
	public Allergy() {}

	public Allergy(String algNo, String algName) {
		super();
		this.algNo = algNo;
		this.algName = algName;
	}

	public String getAlgNo() {
		return algNo;
	}

	public void setAlgNo(String algNo) {
		this.algNo = algNo;
	}

	public String getAlgName() {
		return algName;
	}

	public void setAlgName(String algName) {
		this.algName = algName;
	}

	@Override
	public String toString() {
		return "Allergy [algNo=" + algNo + ", algName=" + algName + "]";
	}
	
	
}
