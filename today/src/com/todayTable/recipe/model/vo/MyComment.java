package com.todayTable.recipe.model.vo;

import java.sql.Date;

public class MyComment {
   
   private String comNo;
    private String comContent;
    private Date comDate;
    private String recipeName;
    private String recipePic;
    private int recipeViews;
    
    public MyComment () {}

   public MyComment(String comNo, String comContent, Date comDate, String recipeName, String recipePic, int recipeViews) {
      super();
      this.comNo = comNo;
      this.comContent = comContent;
      this.comDate = comDate;
      this.recipeName = recipeName;
      this.recipePic = recipePic;
      this.recipeViews = recipeViews;
   }

   
   
   
   
   public String getComNo() {
      return comNo;
   }

   public void setComNo(String comNo) {
      this.comNo = comNo;
   }

   public String getComContent() {
      return comContent;
   }

   public void setComContent(String comContent) {
      this.comContent = comContent;
   }

   public Date getComDate() {
      return comDate;
   }

   public void setComDate(Date comDate) {
      this.comDate = comDate;
   }

   public String getRecipeName() {
      return recipeName;
   }

   public void setRecipeName(String recipeName) {
      this.recipeName = recipeName;
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
   

   @Override
   public String toString() {
      return "MyComment [comNo=" + comNo + ", comContent=" + comContent + ", comDate=" + comDate + ", recipeName="
            + recipeName + ", recipePic=" + recipePic + ", recipeViews=" + recipeViews + "]";
   }

    
    

}