package com.todayTable.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.todayTable.recipe.model.service.RecipeService;

/**
 * Servlet implementation class MypageDeleteComment
 */
@WebServlet("/deleteComment.me")
public class MypageDeleteComment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MypageDeleteComment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String[] check = request.getParameterValues("commentCheck");
		
		if(check == null) { // 체크 된게 없을때
			request.getSession().setAttribute("alertMsg", "삭제할 항목을 선택해주세요");
			response.sendRedirect(request.getContextPath() + "/recipe.me");	// 선택하는 화면으로 보내기
			
		}else {
			int[] checkInt = new int[check.length]; 
			
			for(int i=0; i<check.length ;i++) {
				checkInt[i] = Integer.parseInt(check[i]);
			}
			
			int result = new RecipeService().deleteComment(checkInt);
			
			if(result > 0) {
				request.getSession().setAttribute("alertMsg", "삭제가완료되었습니다");
				response.sendRedirect(request.getContextPath() + "/recipe.me");
			}
		}
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
