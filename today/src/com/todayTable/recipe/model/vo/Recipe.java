package com.todayTable.recipe.model.vo;

import java.sql.Date;

public class Recipe {
	private int recipeNo;	// 레시피번호
	private String recipeName;	// 레시피 이름
	private String recipeTag;	// 레시피 태그
	private String recipeVideo;	// 레시피 영상
	private String recipeDifficulty;	// 레시피 난이도
	private int recipePerson;	// 레시피 인분
	private int recipeTime;		// 레시피 소요시간
	private Date recipeDate;	// 레시피 날짜
	private int memNo;			// 회원번호
	private String recipePic;	// 레시피 사진
	private int recipeViews;	// 레시피 조회수
	private String recipeStatus;	// 레시피 삭제 여부
	private String memId;
	
	public Recipe() {}
	
	
	
	
	
	
	public Recipe(int recipeNo, String recipeName, String recipeTag, String recipeVideo, String recipeDifficulty,
			int recipePerson, int recipeTime, Date recipeDate, String memId, String recipePic, int recipeViews) {
		super();
		this.recipeNo = recipeNo;
		this.recipeName = recipeName;
		this.recipeTag = recipeTag;
		this.recipeVideo = recipeVideo;
		this.recipeDifficulty = recipeDifficulty;
		this.recipePerson = recipePerson;
		this.recipeTime = recipeTime;
		this.recipeDate = recipeDate;
		this.memId = memId;
		this.recipePic = recipePic;
		this.recipeViews = recipeViews;
	}






	// sumin 썸네일용
	public Recipe(String recipeName, Date recipeDate,int recipeViews, String recipePic, int memNo) {
		super();
		this.recipeName = recipeName;
		this.recipeDate = recipeDate;
		this.recipeViews = recipeViews;
		this.recipePic = recipePic;
		this.memNo = memNo;
	}


	public Recipe(int recipeNo, String recipeName, String memId, Date recipeDate) {
		super();
		this.recipeNo = recipeNo;
		this.recipeName = recipeName;
		this.memId = memId;
		this.recipeDate = recipeDate;
	}


	public Recipe(int recipeNo, String recipeName, String recipeTag, String recipeVideo, String recipeDifficulty,
			int recipePerson, int recipeTime, Date recipeDate, int memNo, String recipePic, int recipeViews,
			String recipeStatus) {
		super();
		this.recipeNo = recipeNo;
		this.recipeName = recipeName;
		this.recipeTag = recipeTag;
		this.recipeVideo = recipeVideo;
		this.recipeDifficulty = recipeDifficulty;
		this.recipePerson = recipePerson;
		this.recipeTime = recipeTime;
		this.recipeDate = recipeDate;
		this.memNo = memNo;
		this.recipePic = recipePic;
		this.recipeViews = recipeViews;
		this.recipeStatus = recipeStatus;
	}
	
	

	public Recipe(int recipeNo, String recipeName, String recipeTag, String recipeVideo, String recipeDifficulty,
			int recipePerson, int recipeTime, Date recipeDate, int memNo, String recipePic, int recipeViews) {
		super();
		this.recipeNo = recipeNo;
		this.recipeName = recipeName;
		this.recipeTag = recipeTag;
		this.recipeVideo = recipeVideo;
		this.recipeDifficulty = recipeDifficulty;
		this.recipePerson = recipePerson;
		this.recipeTime = recipeTime;
		this.recipeDate = recipeDate;
		this.memNo = memNo;
		this.recipePic = recipePic;
		this.recipeViews = recipeViews;
	}






	public int getRecipeNo() {
		return recipeNo;
	}

	public void setRecipeNo(int recipeNo) {
		this.recipeNo = recipeNo;
	}

	public String getRecipeName() {
		return recipeName;
	}

	public void setRecipeName(String recipeName) {
		this.recipeName = recipeName;
	}

	public String getRecipeTag() {
		return recipeTag;
	}

	public void setRecipeTag(String recipeTag) {
		this.recipeTag = recipeTag;
	}

	public String getRecipeVideo() {
		return recipeVideo;
	}

	public void setRecipeVideo(String recipeVideo) {
		this.recipeVideo = recipeVideo;
	}

	public String getRecipeDifficulty() {
		return recipeDifficulty;
	}

	public void setRecipeDifficulty(String recipeDifficulty) {
		this.recipeDifficulty = recipeDifficulty;
	}

	public int getRecipePerson() {
		return recipePerson;
	}

	public void setRecipePerson(int recipePerson) {
		this.recipePerson = recipePerson;
	}

	public int getRecipeTime() {
		return recipeTime;
	}

	public void setRecipeTime(int recipeTime) {
		this.recipeTime = recipeTime;
	}

	public Date getRecipeDate() {
		return recipeDate;
	}

	public void setRecipeDate(Date recipeDate) {
		this.recipeDate = recipeDate;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getRecipePic() {
		return recipePic;
	}

	public void setRecipePic(String recipePic) {
		this.recipePic = recipePic;
	}

	public int getRecipeViews() {
		return recipeViews;
	}

	public void setRecipeViews(int recipeViews) {
		this.recipeViews = recipeViews;
	}

	public String getRecipeStatus() {
		return recipeStatus;
	}

	public void setRecipeStatus(String recipeStatus) {
		this.recipeStatus = recipeStatus;
	}

	
	public String getMemId() {
		return memId;
	}


	public void setMemId(String memId) {
		this.memId = memId;
	}




	@Override
	public String toString() {
		return "Recipe [recipeNo=" + recipeNo + ", recipeName=" + recipeName + ", recipeTag=" + recipeTag
				+ ", recipeVideo=" + recipeVideo + ", recipeDifficulty=" + recipeDifficulty + ", recipePerson="
				+ recipePerson + ", recipeTime=" + recipeTime + ", recipeDate=" + recipeDate + ", memNo=" + memNo
				+ ", recipePic=" + recipePic + ", recipeViews=" + recipeViews + ", recipeStatus=" + recipeStatus + "]";
	}

	
}

