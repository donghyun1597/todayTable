package com.todayTable.recipe.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.todayTable.common.JDBCTemplate.*;

import com.todayTable.recipe.model.dao.RecipeDao;
import com.todayTable.recipe.model.vo.Recipe;

public class RecipeService {
	
	public ArrayList<Recipe> selectMainThumbnailList(){
		Connection conn = getConnection();
		
		ArrayList<Recipe> list = new RecipeDao().selectMainThumbnailList(conn);
		
		close(conn);
		return list;
	}

}
