package com.todayTable.recipe.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.todayTable.common.JDBCTemplate.*;
import com.todayTable.recipe.model.vo.Recipe;

public class RecipeService {
	
	public ArrayList<Recipe> selectMainThumbnail(){
		Connection conn = getConnection();
		
		ArrayList<Recipe> list = new RecipeDao().selectMainRecipe(Conn);
		
		close(conn);
		return list;
	}

}
