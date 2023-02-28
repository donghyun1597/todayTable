package com.todayTable.category.model;

import java.sql.Connection;
import java.util.ArrayList;

import com.todayTable.category.model.dao.CategoryDao;
import com.todayTable.category.model.vo.CategoryIngredient;
import com.todayTable.category.model.vo.CategoryNation;

import static com.todayTable.common.JDBCTemplate.*;

public class CategoryService {
	
	public ArrayList<CategoryIngredient> selectCategoryIngredientList(){
		Connection conn = getConnection();
		
		ArrayList<CategoryIngredient> list = new CategoryDao().selectCategoryIngredientList(conn);
		
		close(conn);
		
		return list;
	}
	
	public ArrayList<CategoryNation> selectCategoryNationList(){
		Connection conn = getConnection();
		
		ArrayList<CategoryNation> list = new CategoryDao().selectCategoryNationList(conn);
		
		close(conn);
		
		return list;
	}

}
