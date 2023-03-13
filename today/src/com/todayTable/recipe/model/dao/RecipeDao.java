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

import com.todayTable.category.model.vo.Category;
import com.todayTable.recipe.model.vo.Comment;
import com.todayTable.recipe.model.vo.CookingOrder;
import com.todayTable.recipe.model.vo.IngreClass;
import com.todayTable.recipe.model.vo.Ingredient;
import com.todayTable.recipe.model.vo.MemImg;
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

	public ArrayList<Recipe> selectRecipeList(Connection conn){
		ArrayList<Recipe> list = new ArrayList<Recipe>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectRecipeList");

		try {
			pstmt = conn.prepareStatement(sql);

			rset = pstmt.executeQuery();

			while(rset.next()) {
				Recipe r = new Recipe();
				r.setRecipeNo(rset.getInt("recipe_no"));
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
	 * 조회수 높은순 레시피
	 *
	 * @param conn
	 * @return
	 */
	public ArrayList<Recipe> selectMainThumbnailList(Connection conn) {
		ArrayList<Recipe> list = new ArrayList<Recipe>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String sql = prop.getProperty("selectMainThumbnailList");

		try {
			pstmt = conn.prepareStatement(sql);

			rset = pstmt.executeQuery();

			while (rset.next()) {
				Recipe r = new Recipe();

				r.setRecipeNo(rset.getInt("recipe_no"));
				r.setRecipePic(rset.getString("recipe_pic"));
				r.setRecipeName(rset.getString("recipe_name"));
				r.setRecipeDifficulty(rset.getString("recipe_difficulty"));
				r.setRecipeViews(rset.getInt("recipe_views"));
				list.add(r);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);

		}
		return list;

	}

	/**
	 * 레시피 추천 dao
	 *
	 * @param conn
	 * @param values
	 * @return
	 */
	public ArrayList<Recipe> selectMainThumbnailList(Connection conn, String[] values) {
		ArrayList<Recipe> list = new ArrayList<Recipe>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String sql = prop.getProperty("selectRecommnedRecipe");
		// System.out.println(values[0]);
		// System.out.println(values[1]);
		// System.out.println(values[2]);
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, values[0]);
			pstmt.setString(2, values[1]);
			pstmt.setInt(3, Integer.parseInt(values[2]));
			rset = pstmt.executeQuery();

			while (rset.next()) {
				Recipe r = new Recipe();
				r.setRecipeNo(rset.getInt("recipe_no"));
				r.setRecipePic(rset.getString("recipe_pic"));
				r.setRecipeName(rset.getString("recipe_name"));
				r.setRecipeDifficulty(rset.getString("recipe_difficulty"));
				r.setRecipeViews(rset.getInt("recipe_views"));
				list.add(r);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);

		}
		System.out.println(list);
		return list;

	}

	/**
	 * 마이페이지_내가 만든 레시피 목록 조회
	 *
	 * @author sm.kim
	 * @param conn
	 * @param memNo
	 * @return
	 */
	public ArrayList<Recipe> selectThumbnailList(Connection conn, int memNo) {
		ArrayList<Recipe> list = new ArrayList<Recipe>();
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("selectThumbnailList");
		ResultSet rset = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			rset = pstmt.executeQuery();

			while (rset.next()) {
				Recipe r = new Recipe();
				r.setRecipeNo(rset.getInt("recipe_no"));
				r.setRecipeName(rset.getString("recipe_name"));
				r.setRecipeDate(rset.getDate("recipe_date"));
				r.setRecipeViews(rset.getInt("recipe_views"));
				r.setRecipePic(rset.getString("recipe_pic"));

				list.add(r);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		System.out.println(list);
		return list;
	}

	/**
	 * 마이페이지_내가 작성한 댓글 조회
	 *
	 * @author sm.kim
	 * @param conn
	 * @param memNo
	 * @return
	 */
	public ArrayList<MyComment> selectCommentList(Connection conn, int memNo) {
		ArrayList<MyComment> clist = new ArrayList<MyComment>();
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("selectCommentList");
		ResultSet rset = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			rset = pstmt.executeQuery();

			while (rset.next()) {
				clist.add(new MyComment(rset.getString("com_no"), rset.getString("com_content"),
						rset.getDate("com_date"), rset.getString("recipe_name"), rset.getString("recipe_pic"),
						rset.getInt("recipe_views")));

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
	 * 마이페이지_내가 찜한 목록 조회
	 *
	 * @author sm.kim
	 * @param conn
	 * @param memNo
	 * @return
	 */
	public ArrayList<MyWishlist> selectWishList(Connection conn, int memNo) {
		ArrayList<MyWishlist> wlist = new ArrayList<MyWishlist>();
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("selectWishList");
		ResultSet rset = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			rset = pstmt.executeQuery();

			while (rset.next()) {
				wlist.add(new MyWishlist(rset.getString("recipe_name"), rset.getString("recipe_pic"),
						rset.getInt("recipe_views"),rset.getInt("recipe_no")));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		System.out.println("dao" + wlist);
		return wlist;
	}

	public Recipe selectDetailRecipe(Connection conn, int recipeNo) {
		Recipe r = new Recipe();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectDetailRecipe");

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, recipeNo);

			rset = pstmt.executeQuery();

			if (rset.next()) {
				r.setRecipeNo(rset.getInt("RECIPE_NO"));
				r.setRecipeName(rset.getString("recipe_name"));
				r.setRecipeTag(rset.getString("recipe_tag"));
				r.setRecipeVideo(rset.getString("recipe_video"));
				r.setRecipeDifficulty(rset.getString("recipe_difficulty"));
				r.setRecipePerson(rset.getInt("recipe_person"));
				r.setRecipeTime(rset.getInt("recipe_time"));
				r.setRecipeDate(rset.getDate("recipe_date"));
				r.setMemNo(rset.getInt("mem_no"));
				r.setRecipePic(rset.getString("recipe_pic"));
				r.setRecipeViews(rset.getInt("recipe_views"));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return r;

	}

	public ArrayList<IngreClass> selectDetailIngreClass(Connection conn, int recipeNo) {
		ArrayList<IngreClass> list = new ArrayList<IngreClass>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectDetailIngreClass");

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, recipeNo);

			rset = pstmt.executeQuery();

			while (rset.next()) {
				IngreClass ic = new IngreClass();

				ic.setIngreCname(rset.getString("ingre_c_name"));
				list.add(ic);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;

	}

	public ArrayList<Ingredient> selectDetailIngredient(Connection conn, int recipeNo) {
		ArrayList<Ingredient> list = new ArrayList<Ingredient>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectDetailIngredient");

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, recipeNo);

			rset = pstmt.executeQuery();

			while (rset.next()) {
				Ingredient i = new Ingredient();

				i.setIngreCno(rset.getInt("ingre_no"));
				i.setIngreCname(rset.getString("ingre_c_name"));
				i.setIngreName(rset.getString("ingre_name"));
				i.setIngreAmount(rset.getString("ingre_amount"));
				list.add(i);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;

	}

	public Category selectDetailCategory(Connection conn, int recipeNo) {
		Category c = new Category();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectDetailCategory");

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, recipeNo);

			rset = pstmt.executeQuery();

			if (rset.next()) {
				c.setcIngreName(rset.getString("c_ingre_name"));
				c.setcKindName(rset.getString("c_kind_name"));
				c.setcNatName(rset.getString("c_nat_name"));
				c.setcStepName(rset.getString("c_step_name"));
				c.setcThemeName(rset.getString("c_theme_name"));
				c.setcToolName(rset.getString("c_tool_name"));

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);

		}
		return c;

	}

	public ArrayList<CookingOrder> selectDetailCookingOrder(Connection conn, int recipeNo) {
		ArrayList<CookingOrder> list = new ArrayList<CookingOrder>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectDetailCookingOrder");

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, recipeNo);

			rset = pstmt.executeQuery();

			while (rset.next()) {
				CookingOrder co = new CookingOrder();

				co.setCoNo(rset.getInt("co_no"));
				co.setCoStep(rset.getString("co_step"));
				co.setCoContent(rset.getString("co_content"));
				co.setCoImg(rset.getString("co_img"));

				list.add(co);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);

		}
		return list;

	}

	public int updateMemImg(Connection conn, MemImg mi) {
		int result = 0;
		PreparedStatement pstmt = null;

		String sql = prop.getProperty("updateImg");
		System.out.println("Dao 이거 되나");

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, "/resources/image/mem-img/" + mi.getMemImg());
			pstmt.setString(2, mi.getMemId());

			result = pstmt.executeUpdate();
			System.out.println("Dao 이거 되나: " + result);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	/**
	 * 마이페이지 댓글 삭제하기
	 *
	 * @author sm.kim
	 * @param conn
	 * @param checkInt
	 * @return
	 */
	public int deleteComment(Connection conn, int[] checkInt) {
		int result = 0;

		PreparedStatement pstmt = null;

		String sql = prop.getProperty("deleteComment");

		for (int i = 0; i < checkInt.length; i++) {
			sql += "?,";
		}
		sql = sql.substring(0, sql.length() - 1) + ")";

		System.out.println("Dao" + sql);

		try {
			pstmt = conn.prepareStatement(sql);

			for (int i = 1; i <= checkInt.length; i++) {
				pstmt.setInt(i, checkInt[i - 1]);
			}
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public int insertRecipe(Connection conn, Recipe r) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertRecipe");
		System.out.println(r);
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, r.getRecipeName());
			pstmt.setString(2, r.getRecipeTag());
			pstmt.setString(3, r.getRecipeVideo());
			pstmt.setString(4, r.getRecipeDifficulty());
			pstmt.setInt(5, r.getRecipePerson());
			pstmt.setInt(6, r.getRecipeTime());
			pstmt.setInt(7, r.getMemNo());
			pstmt.setString(8, r.getRecipePic());

			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);

		}

		return result;



	}

	public int insertIngreClass(Connection conn,String ingreClass) {
		int result =0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertIngreClass");

		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, ingreClass);

			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}

		return result;
	}

	public void insertIngredient(Connection conn,String[] ingredient) {

		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertIngredient");

		try {
			pstmt = conn.prepareStatement(sql);

			for (int i = 0; i < ingredient.length; i++) {
				if(i+2==ingredient.length) {
					break;
				}
				pstmt.setString(1, ingredient[i]);
				System.out.println(ingredient[i]);
				pstmt.setString(2, ingredient[i+1]);
				System.out.println(ingredient[i]);
				pstmt.addBatch();
				pstmt.clearParameters();

			}
			pstmt.executeBatch();



		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}

	}

	public void insertCookingOrder(Connection conn,ArrayList<CookingOrder> cookList) {
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertCookingOrder");

		System.out.println(cookList);
			try {
				pstmt = conn.prepareStatement(sql);
				for (int i = 0; i < cookList.size(); i++) {

					pstmt.setString(1, cookList.get(i).getCoContent());
					pstmt.setString(2, cookList.get(i).getCoImg());
					pstmt.addBatch();
					pstmt.clearParameters();

				}
				pstmt.executeBatch();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				close(pstmt);
			}



	}

	public int insertRecipeCategory(Connection conn,Category c) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertRecipeCategory");

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, c.getcNatNo());
			pstmt.setString(2, c.getcStepNo());
			pstmt.setString(3, c.getcToolNo());
			pstmt.setString(4, c.getcKindNo());
			pstmt.setString(5, c.getcThemeNo());
			pstmt.setString(6, c.getcIngreNo());

			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;


	}

	public int insertComment(Connection conn,int recipeNo,int userNo,String comment) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertComment");

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, recipeNo);
			pstmt.setString(2, comment);
			pstmt.setInt(3, userNo);

			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);

		}
		return result;

	}

	public ArrayList<Comment> selectComList(Connection conn,int recipeNo){
		ArrayList<Comment> clist = new ArrayList<Comment>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectComList");
		System.out.println(recipeNo);
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, recipeNo);

			rset = pstmt.executeQuery();

			while(rset.next()) {
				Comment c =new Comment();

				c.setMemName(rset.getString("mem_name"));
				c.setComContent(rset.getString("com_content"));
				clist.add(c);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return clist;


	}
	
	public ArrayList<Recipe> selectRecipeListOrderByView(Connection conn){
		ArrayList<Recipe> list = new ArrayList<Recipe>();
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("selectRecipeListOrderByView");
		ResultSet rset = null;
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();

			while (rset.next()) {
				Recipe r = new Recipe();
				r.setRecipeNo(rset.getInt("recipe_no"));
				r.setRecipeName(rset.getString("recipe_name"));
				r.setRecipeDate(rset.getDate("recipe_date"));
				r.setRecipeViews(rset.getInt("recipe_views"));
				r.setRecipePic(rset.getString("recipe_pic"));

				list.add(r);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		System.out.println(list);
		return list;
	}
	
	public ArrayList<Recipe> searchRecipeName(Connection conn,String search){
		ArrayList<Recipe> list = new ArrayList<Recipe>();
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("searchRecipeName");
		ResultSet rset = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, search);
			rset = pstmt.executeQuery();

			while (rset.next()) {
				Recipe r = new Recipe();
				r.setRecipeNo(rset.getInt("recipe_no"));
				r.setRecipeName(rset.getString("recipe_name"));
				r.setRecipeDate(rset.getDate("recipe_date"));
				r.setRecipeViews(rset.getInt("recipe_views"));
				r.setRecipePic(rset.getString("recipe_pic"));

				list.add(r);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		System.out.println(list);
		return list;
	}
	
	public int increaseView(Connection conn,int recipeNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("increaseView");
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, recipeNo);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
		
	}
	public int insertWishlist(Connection conn,int memNo,int recipeNo) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertWishlist");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, memNo);
			pstmt.setInt(2, recipeNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	
	public int deleteWishlist(Connection conn,int memNo,int recipeNo) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteWishlist");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, memNo);
			pstmt.setInt(2, recipeNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}

}
