package com.todayTable.recipe.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.coyote.Request;

import com.todayTable.recipe.model.service.RecipeService;
import com.todayTable.recipe.model.vo.Recipe;

/**
 * Servlet implementation class MypageReceipe
 */
@WebServlet("/recipe.me")
public class MypageReceipe extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MypageReceipe() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @author sumin
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// thumbnailListView.jsp상에 필요한 데이터 조회 필요
		ArrayList<Recipe> list = new RecipeService().selectThumbnailList();
		
		// 레시피 페이지로 가자
		request.setAttribute("list", list);
		request.getRequestDispatcher("views/recipe/mypageRecipe.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
