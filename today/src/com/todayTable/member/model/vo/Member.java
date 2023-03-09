package com.todayTable.member.model.vo;

public class Member {
	private int memNo;
	private String memId;
	private String memPwd;
	private String nickName;
	private String memName;
	private String phone;
	private int warningCount;
	private String memImg;
	private String memStatus;
	
	// 수민. 알러지 정보 필요
	private String[] algNo;
	
	public Member() {}

	
	// 수민. 회원정보 변경시 사용
	public Member(int memNo,String memId, String memPwd, String nickName, String phone) {
		super();
		this.memNo = memNo;
		this.memId = memId;
		this.memPwd = memPwd;
		this.nickName = nickName;
		this.phone = phone;
		
	}


	public String[] getAlgNo() {
		return algNo;
	}


	public void setAlgNo(String[] algNo) {
		this.algNo = algNo;
	}


	public Member(int memNo, String memId, String memPwd, String nickName, String memName, String phone,
			int warningCount, String memImg, String memStatus) {
		super();
		this.memNo = memNo;
		this.memId = memId;
		this.memPwd = memPwd;
		this.nickName = nickName;
		this.memName = memName;
		this.phone = phone;
		this.warningCount = warningCount;
		this.memImg = memImg;
		this.memStatus = memStatus;
	}
	

	public Member(int memNo, String memId, String nickName, String memName, String phone, int warningCount) {
		super();
		this.memNo = memNo;
		this.memId = memId;
		this.nickName = nickName;
		this.memName = memName;
		this.phone = phone;
		this.warningCount = warningCount;
	}


	
	public Member(int memNo, String memId, String memPwd, String nickName, String memName, String phone,
			int warningCount, String memImg) {
		super();
		this.memNo = memNo;
		this.memId = memId;
		this.memPwd = memPwd;
		this.nickName = nickName;
		this.memName = memName;
		this.phone = phone;
		this.warningCount = warningCount;
		this.memImg = memImg;
	}
	
	

	public Member(String memId, String memPwd, String nickName, String memName, String phone) {
		super();
		this.memId = memId;
		this.memPwd = memPwd;
		this.nickName = nickName;
		this.memName = memName;
		this.phone = phone;
	}
	
	
	
	

	public Member(String memId, String memPwd, String memName, String phone) {
		super();
		this.memId = memId;
		this.memPwd = memPwd;
		this.memName = memName;
		this.phone = phone;
	}


	public Member(String memId, String memName) {
		super();
		this.memId = memId;
		this.memName = memName;
	}


	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemPwd() {
		return memPwd;
	}

	public void setMemPwd(String memPwd) {
		this.memPwd = memPwd;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getWarningCount() {
		return warningCount;
	}

	public void setWarningCount(int warningCount) {
		this.warningCount = warningCount;
	}

	public String getMemImg() {
		return memImg;
	}

	public void setMemImg(String memImg) {
		this.memImg = memImg;
	}

	public String getMemStatus() {
		return memStatus;
	}

	public void setMemStatus(String memStatus) {
		this.memStatus = memStatus;
	}

	@Override
	public String toString() {
		return "Member [memNo=" + memNo + ", memId=" + memId + ", memPwd=" + memPwd + ", nickName=" + nickName
				+ ", memName=" + memName + ", phone=" + phone + ", warningCount=" + warningCount + ", memImg=" + memImg
				+ ", memStatus=" + memStatus + "]";
	}

	
	
}
