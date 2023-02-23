package com.todayTable.recipe.model.vo;

import java.sql.Date;

public class Recipe {
	private int recipeNo;
	private String recipeName;
	private String recipeTag;
	private String recipeVideo;
	private String recipeDifficulty;
	private int recipePerson;
	private int recipeTime;
	private Date recipeDate;
	private int memNo;
	private String recipePic;
	private int recipeViews;
	private String recipeStatus;
	
	public Recipe() {}

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

	@Override
	public String toString() {
		return "Recipe [recipeNo=" + recipeNo + ", recipeName=" + recipeName + ", recipeTag=" + recipeTag
				+ ", recipeVideo=" + recipeVideo + ", recipeDifficulty=" + recipeDifficulty + ", recipePerson="
				+ recipePerson + ", recipeTime=" + recipeTime + ", recipeDate=" + recipeDate + ", memNo=" + memNo
				+ ", recipePic=" + recipePic + ", recipeViews=" + recipeViews + ", recipeStatus=" + recipeStatus + "]";
	}

	
}

