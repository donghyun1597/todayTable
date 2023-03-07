package com.todayTable.recipe.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;
import com.todayTable.common.model.RecipeImageRenamePolicy;

/**
 * Servlet implementation class RecipeInsertController
 */
@WebServlet("/insert.rc")
public class RecipeInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RecipeInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setCharacterEncoding("utf-8");
		
		if(ServletFileUpload.isMultipartContent(request)) {
			// 1_1 전송용량제한
			int maxSize = 10 * 1024 * 1024;
			System.out.println("파일저장");
			// 1_2. 저장시킬 폴더의 물리적인 경로
			String savePath = request.getSession().getServletContext().getRealPath("resources/test_img/");
//			MultipartRequest multiRequest =(MultipartRequest)request;
//			System.out.println(multiRequest.getParameter("file0"));
			// 2. 전달된 파일 업로드
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "utf-8", new RecipeImageRenamePolicy());
			System.out.println(multiRequest.getParameter("recipeName"));
			System.out.println(multiRequest.getParameter("recipeTag"));
			//3. db에 기록할 값 뽑기
			//Board insert
			System.out.println(multiRequest.getOriginalFileName("file0"));
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
