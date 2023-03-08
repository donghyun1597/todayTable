package com.todayTable.admin.recipe.model.service;

import static com.todayTable.common.JDBCTemplate.getConnection;

import java.sql.Connection;

import com.todayTable.admin.recipe.model.dao.AdminRecipeDao;
import static com.todayTable.common.JDBCTemplate.*;

public class AdminRecipeService {

	
	public int recipeSelectListCount() {
		Connection conn = getConnection();
		
		int listCount = new AdminRecipeDao().recipeSelectListCount(conn);
		
		close(conn);
		
		return listCount;
	}
}
