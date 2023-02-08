package com.todayTable.member.model.vo;

public class MemAllergy {
	private int memNo;
	private String algNo;
	
	public MemAllergy() {}

	public MemAllergy(int memNo, String algNo) {
		super();
		this.memNo = memNo;
		this.algNo = algNo;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getAlgNo() {
		return algNo;
	}

	public void setAlgNo(String algNo) {
		this.algNo = algNo;
	}

	@Override
	public String toString() {
		return "MemAllergy [memNo=" + memNo + ", algNo=" + algNo + "]";
	}
	
	
	

}
