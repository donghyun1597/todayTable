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

import com.todayTable.recipe.model.vo.MyComment;
import com.todayTable.recipe.model.vo.MyWishlist;
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
	/**
	 * 조회수 높은순 레시피
	 * @param conn
	 * @return
	 */
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
	
	/**
	 * 레시피 추천 dao
	 * @param conn
	 * @param values
	 * @return
	 */
	public ArrayList<Recipe> selectMainThumbnailList(Connection conn,String[] values){
		ArrayList<Recipe> list = new ArrayList<Recipe>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectRecommnedRecipe");
		System.out.println(values[0]);
		System.out.println(values[1]);
		System.out.println(values[2]);
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, values[0]);
			pstmt.setString(2, values[1]);
			pstmt.setInt(3, Integer.parseInt(values[2]));
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
	
	
	
	
	
	
	/**
	 * 마이페이지_내가 만든 레시피 목록 조회
	 * @author sm.kim
	 * @param conn
	 * @param memNo
	 * @return
	 */
	public ArrayList<Recipe> selectThumbnailList(Connection conn,int memNo){
		ArrayList<Recipe> list =new ArrayList<Recipe>();
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("selectThumbnailList");
		ResultSet rset = null;
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
	
	
	
	
	
	/**
	 * 마이페이지_내가 작성한 댓글 조회
	 * @author sm.kim
	 * @param conn
	 * @param memNo
	 * @return
	 */
	public ArrayList<MyComment> selectCommentList(Connection conn, int memNo){
		ArrayList<MyComment> clist = new ArrayList<MyComment>();
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("selectCommentList");
		ResultSet rset = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				MyComment c = new MyComment();
				/*---------------------------------------------------------*/
				
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return clist;
	}
	
	
	
	
	
	
	/**
	 *  마이페이지_내가 찜한 목록 조회
	 *  @author sm.kim
	 * @param conn
	 * @param memNo
	 * @return
	 */
	public ArrayList<MyWishlist> selectWishList(Connection conn, int memNo){
		ArrayList<MyWishlist> wlist = new ArrayList<MyWishlist>();
		return wlist;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}







































