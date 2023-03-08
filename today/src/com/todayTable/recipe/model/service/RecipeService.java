package com.todayTable.recipe.model.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import static com.todayTable.common.JDBCTemplate.*;

import com.todayTable.category.model.vo.Category;
import com.todayTable.recipe.model.dao.RecipeDao;
import com.todayTable.recipe.model.vo.CookingOrder;
import com.todayTable.recipe.model.vo.IngreClass;
import com.todayTable.recipe.model.vo.Ingredient;
import com.todayTable.recipe.model.vo.MemImg;
import com.todayTable.recipe.model.vo.MyComment;
import com.todayTable.recipe.model.vo.MyWishlist;
import com.todayTable.recipe.model.vo.Recipe;

public class RecipeService {
	
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
		
		
		close(conn);
		
		return list;
		
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
	
	
	
	
	
	
	
	
	

}
