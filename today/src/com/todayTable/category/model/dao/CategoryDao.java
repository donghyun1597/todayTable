package com.todayTable.category.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.todayTable.category.model.vo.CategoryIngredient;
import com.todayTable.category.model.vo.CategoryNation;

import static com.todayTable.common.JDBCTemplate.*;
import com.todayTable.recipe.model.dao.RecipeDao;

public class CategoryDao {
	
	private Properties prop = new Properties();
		
	public CategoryDao() {
		String filePath = RecipeDao.class.getResource("/db/sql/category-mapper.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	public ArrayList<CategoryIngredient> selectCategoryIngredientList(Connection conn){
		
		ArrayList<CategoryIngredient> list = new ArrayList<CategoryIngredient>();
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("selectCategoryIngredientList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				CategoryIngredient ci = new CategoryIngredient();
				ci.setcIngreNo(rset.getString("c_ingre_no"));
				ci.setcIngreName(rset.getString("c_ingre_name"));
				
				list.add(ci);
				
				
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
	public ArrayList<CategoryNation> selectCategoryNationList(Connection conn){
		
		ArrayList<CategoryNation> list = new ArrayList<CategoryNation>();
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("selectCategoryNationList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				CategoryNation cn = new CategoryNation();
				cn.setcNatNo(rset.getString("c_nat_no"));
				cn.setcNatName(rset.getString("c_nat_name"));
				
				list.add(cn);
				
				
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

}
















