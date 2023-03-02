package com.todayTable.recipe.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.todayTable.common.JDBCTemplate.*;

import com.todayTable.recipe.model.dao.RecipeDao;
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
	 * 마이페이지_내가 만든 레시피 목록 조회
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
		System.out.println("service" + wlist);
		
		close(conn);
		return wlist;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
