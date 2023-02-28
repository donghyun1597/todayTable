package com.todayTable.recipe.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import static com.todayTable.common.JDBCTemplate.*;
import com.todayTable.recipe.model.vo.Recipe;

public class RecipeDao {
	private Properties prop = new Properties();
	
	public RecipeDao() {
		String filePath = RecipeDao.class.getResource("/db/sql/recipe-mapper.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	public ArrayList<Recipe> selectMainThumbnailList(Connection conn){
		ArrayList<Recipe> list = new ArrayList<Recipe>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectMainThumbnailList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Recipe r = new Recipe();
				r.setRecipePic(rset.getString("recipe_pic"));
				r.setRecipeName(rset.getString("recipe_name"));
				r.setRecipeDifficulty(rset.getString("recipe_difficulty"));
				r.setRecipeViews(rset.getInt("recipe_views"));
				list.add(r);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
			
		}
		return list;
		
		
	}
	
	
	
	
	
	
	public ArrayList<Recipe> selectThumbnailList(Connection conn,int memNo){
		ArrayList<Recipe> list =new ArrayList<Recipe>();
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("selectThumbnailList");
		ResultSet rset = null;
		System.out.println("asdsadasjdkhaskjdhsajkd");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Recipe r = new Recipe();
				r.setRecipeName(rset.getString("recipe_name"));
				r.setRecipeDate(rset.getDate("recipe_date"));
				r.setRecipeViews(rset.getInt("recipe_views"));
				r.setRecipePic(rset.getString("recipe_pic"));
				
				list.add(r);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		System.out.println(list);
		return list;
	}

}







































