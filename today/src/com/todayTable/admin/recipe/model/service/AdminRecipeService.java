package com.todayTable.admin.recipe.model.service;

import static com.todayTable.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.todayTable.admin.recipe.model.dao.AdminRecipeDao;
import com.todayTable.common.model.vo.PageInfo;
import com.todayTable.recipe.model.vo.Recipe;

import static com.todayTable.common.JDBCTemplate.*;

public class AdminRecipeService {

	
	public int recipeSelectListCount() {
		Connection conn = getConnection();
		
		int listCount = new AdminRecipeDao().recipeSelectListCount(conn);
		
		close(conn);
		
		return listCount;
	}
	
	public ArrayList<Recipe> recipeSelectList(PageInfo pi) {
		Connection conn = getConnection();
		
		ArrayList<Recipe> list = new AdminRecipeDao().recipeSelectList(conn, pi);
		
		close(conn);
		
		return list;
	}
	
	public int deleteRecipe(int rNo) {
		Connection conn = getConnection();
		
		int result = new AdminRecipeDao().deleteRecipe(conn, rNo);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	public Recipe selectRecipe(int rNo) {
		Connection conn = getConnection();
		
		Recipe r = new AdminRecipeDao().selectRecipe(conn, rNo);
		
		close(conn);
		
		return r;
	}
	
}
