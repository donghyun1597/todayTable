package com.todayTable.recipe.model.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import static com.todayTable.common.JDBCTemplate.*;

import com.todayTable.category.model.vo.Category;
import com.todayTable.recipe.model.dao.RecipeDao;
import com.todayTable.recipe.model.vo.Comment;
import com.todayTable.recipe.model.vo.CookingOrder;
import com.todayTable.recipe.model.vo.IngreClass;
import com.todayTable.recipe.model.vo.Ingredient;
import com.todayTable.recipe.model.vo.MemImg;
import com.todayTable.recipe.model.vo.MyComment;
import com.todayTable.recipe.model.vo.MyWishlist;
import com.todayTable.recipe.model.vo.Recipe;

public class RecipeService {

	public ArrayList<Recipe> selectRecipeList(){
		Connection conn = getConnection();

		ArrayList<Recipe> list = new RecipeDao().selectRecipeList(conn);

		close(conn);
		return list;

	}

   /**
    * 조회수 높은순 레시피 조회
    * @return
    */
   public ArrayList<Recipe> selectMainThumbnailList(){
      Connection conn = getConnection();

      ArrayList<Recipe> list = new RecipeDao().selectMainThumbnailList(conn);

      close(conn);
      return list;
   }

   /**
    * 레시피 추천 dao
    * @param values
    * @return
    */
   public ArrayList<Recipe> selectMainThumbnailList(String[] values){
      Connection conn = getConnection();

      ArrayList<Recipe> list = new RecipeDao().selectMainThumbnailList(conn,values);

      close(conn);
      return list;
   }

   /**
    * 마이페이지 - 내가 만든 레시피 목록 조회
    * @author sumin
    * @return
    */
   public ArrayList<Recipe> selectThumbnailList(int memNo){
      Connection conn = getConnection();
      ArrayList<Recipe> list = new RecipeDao().selectThumbnailList(conn,memNo);

      close(conn);
      return list;
   }



   /**
    * 마이페이지_내가 작성한 댓글 목록 조회
    * @author sm.kim
    * @return
    */
   public ArrayList<MyComment> selectCommentList(int memNo){
      Connection conn = getConnection();
      ArrayList<MyComment> clist = new RecipeDao().selectCommentList(conn,memNo);

      close(conn);
      return clist;
   }


   /**
    * 마이페이지_마이페이지_내가 찜한 목록 조회
    * @author sm.kim
    * @return
    */
   public ArrayList<MyWishlist> selectWishList(int memNo){
      Connection conn = getConnection();
      ArrayList<MyWishlist> wlist = new RecipeDao().selectWishList(conn,memNo);


      close(conn);
      return wlist;
   }





   public HashMap<String, Object> selectRecipeDetail(int recipeNo){
      Connection conn = getConnection();
      Recipe recipe = new RecipeDao().selectDetailRecipe(conn, recipeNo);
      ArrayList<IngreClass> ingreClass = new RecipeDao().selectDetailIngreClass(conn, recipeNo);
      ArrayList<Ingredient> ingredients = new RecipeDao().selectDetailIngredient(conn, recipeNo);
      Category category = new RecipeDao().selectDetailCategory(conn, recipeNo);
      ArrayList<CookingOrder> cookingOrders = new RecipeDao().selectDetailCookingOrder(conn, recipeNo);
      HashMap<String, Object> list = new HashMap<String, Object>();

      //System.out.println(recipe);
      //System.out.println(ingreClass);
      //System.out.println(ingredients);
      //System.out.println(category);
      //System.out.println(cookingOrders);
      list.put("recipe", recipe);
      list.put("ingreClass", ingreClass);
      list.put("ingredients", ingredients);
      list.put("category", category);
      list.put("cookingOrders", cookingOrders);
      
      int result = new RecipeDao().increaseView(conn,recipeNo);
      
      if(result>0) {
    	  commit(conn);
      }else {
    	  rollback(conn);
      }
      
      close(conn);

      return list;

   }

   public int insertRecipe(Recipe r,String[] ingreClass,ArrayList<String[]> ingreStrArr,ArrayList<CookingOrder> cookList,Category c) {
	   Connection conn = getConnection();

	   System.out.println(cookList);
	   int result1 = new RecipeDao().insertRecipe(conn, r);

	   int result2 = 1;
	   int result3 = 1;

	   if(result1>0) {
		   for(int i=0;i<ingreClass.length;i++) {
			   result2 += new RecipeDao().insertIngreClass(conn,ingreClass[i]);
			   new RecipeDao().insertIngredient(conn,ingreStrArr.get(i));

		   }

		   new RecipeDao().insertCookingOrder(conn,cookList);
		   result3 = new RecipeDao().insertRecipeCategory(conn,c);


	   }
	   if(result2*result3!=0) {
		   commit(conn);
	   }
	   else {
		   rollback(conn);
	   }
	   close(conn);
	   return result2*result3;

   }




   /**
    * @author sm.kim
    * @param mi
    * @return
    */
   public int updateMemImg(MemImg mi) {
      Connection conn = getConnection();

      int result = new RecipeDao().updateMemImg(conn, mi);

      if(result > 0) {
         commit(conn);

      }else {
         rollback(conn);

      }
      close(conn);
      return result;
   }



   /**
    * 마이페이지 댓글게시글 삭제하기
    * @author sm.kim
    * @param checkInt
    * @return
    */
   public int deleteComment(int[] checkInt) {

      Connection conn = getConnection();
      int result = new RecipeDao().deleteComment(conn, checkInt);
      System.out.println("service");

      if(result > 0) {
         commit(conn);
      } else {
         rollback(conn);
      }
      close(conn);
      return result;
   }


   public int insertComment(int recipeNo,int userNo, String comment) {
	   Connection conn = getConnection();

	   int result = new RecipeDao().insertComment(conn,recipeNo,userNo,comment);

	   if(result>0) {
		   commit(conn);
	   }else {
		   rollback(conn);
	   }
	   close(conn);
	   return result;
   }


   public ArrayList<Comment> selectComList(int recipeNo){
	   Connection conn = getConnection();

	   ArrayList<Comment> clist = new RecipeDao().selectComList(conn,recipeNo);

	   close(conn);

	   return clist;


   }
   
   public ArrayList<Recipe> selectRecipeListOrderByView(){
	   Connection conn = getConnection();
	   
	   ArrayList<Recipe> list = new RecipeDao().selectRecipeListOrderByView(conn);
	   
	   close(conn);
	   
	   return list;
   }
   
   public ArrayList<Recipe> searchRecipeName(String search){
	   Connection conn = getConnection();
	   
	   ArrayList<Recipe> list = new RecipeDao().searchRecipeName(conn,search);
	   
	   close(conn);
	   
	   return list;
   }
   
   public int insertWishlist(int memNo,int recipeNo) {
	   Connection conn = getConnection();
	   
	   int result = new RecipeDao().insertWishlist(conn, memNo, recipeNo);
	   
	   if(result>0) {
		   commit(conn);
	   }else {
		   rollback(conn);
	   }
	   return result;
   }
   public int deleteWishlist(int memNo,int recipeNo) {
	   Connection conn = getConnection();
	   
	   int result = new RecipeDao().deleteWishlist(conn, memNo, recipeNo);
	   
	   if(result>0) {
		   commit(conn);
	   }else {
		   rollback(conn);
	   }
	   return result;
   }
   



}
