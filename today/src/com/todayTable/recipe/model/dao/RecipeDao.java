package com.todayTable.recipe.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.todayTable.member.model.vo.Member;
import com.todayTable.recipe.model.vo.Recipe;

public class RecipeDao {
	private Properties prop = new Properties();
	
	public RecipeDao() {
		String filePath = Member.class.getResource("/db/sql/recipe-mapper.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	public ArrayList<Recipe> selectMainThumbnail(Connection conn){
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
				
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}







































