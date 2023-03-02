package com.todayTable.recipe.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.todayTable.member.model.vo.Member;
import com.todayTable.recipe.model.service.RecipeService;
import com.todayTable.recipe.model.vo.MyComment;
import com.todayTable.recipe.model.vo.MyWishlist;
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
		Member m = (Member)request.getSession().getAttribute("loginUser");
		
		// 내가 로그인한 회원의 정보 getMemNo로 얻어올 정보_내가 쓴 레시피
		ArrayList<Recipe> list = new RecipeService().selectThumbnailList(m.getMemNo());
		// 내가 로그인한 회원의 정보 getMemNo로 얻어올 정보_내가 쓴 댓글
		ArrayList<MyComment> clist = new RecipeService().selectCommentList(m.getMemNo());
		// 내가 로그인한 회원의 정보 getMemNo로 얻어올 정보_찜한 목록
		ArrayList<MyWishlist> wlist = new RecipeService().selectWishList(m.getMemNo());
		
		
		
		// mypageRecipe.jsp 페이지로 가자 list랑 clist랑 wlist 다 데리고 갈거임
		request.setAttribute("list", list);
		request.setAttribute("clist", clist);
		request.setAttribute("wlist", wlist);
		System.out.println("서블렛" + wlist );
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
