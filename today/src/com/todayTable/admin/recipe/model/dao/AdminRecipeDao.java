package com.todayTable.admin.recipe.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.todayTable.common.model.vo.PageInfo;
import com.todayTable.recipe.model.vo.Recipe;

import static com.todayTable.common.JDBCTemplate.*;

public class AdminRecipeDao {
	
	private Properties prop = new Properties();
	
	public AdminRecipeDao() {
		try {
			prop.loadFromXML(new FileInputStream(AdminRecipeDao.class.getResource("/db/sql/recipe-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int recipeSelectListCount(Connection conn) {
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("recipeSelectListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt("count");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return listCount;
	}
	
	public ArrayList<Recipe> recipeSelectList(Connection conn, PageInfo pi) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Recipe> list = new ArrayList<Recipe>();
		
		String sql = prop.getProperty("recipeSelectList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Recipe(rset.getInt("recipe_no"),
									rset.getString("recipe_name"),
									rset.getString("mem_id"),
									rset.getDate("recipe_date")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		} 
		return list;
		
	}
	
	public int deleteRecipe(Connection conn, int rNo) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String sql = prop.getProperty("deleteRecipe");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, rNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public Recipe selectRecipe(Connection conn, int rNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Recipe r = new Recipe();
		
		String sql = prop.getProperty("selectDetailRecipe2");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, rNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				r = new Recipe(rset.getInt("recipe_no"),
									  rset.getString("recipe_name"),
									  rset.getString("recipe_tag"),
									  rset.getString("recipe_video"),
									  rset.getString("recipe_difficulty"),
									  rset.getInt("recipe_person"),
									  rset.getInt("recipe_time"),
									  rset.getDate("recipe_date"),
									  rset.getString("mem_id"),
									  rset.getString("recipe_pic"),
									  rset.getInt("recipe_views"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return r;
	}
}
