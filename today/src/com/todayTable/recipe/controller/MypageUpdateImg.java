package com.todayTable.recipe.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;
import com.todayTable.common.MyFileRenamePolicy;
import com.todayTable.member.model.vo.Member;
import com.todayTable.recipe.model.service.RecipeService;
import com.todayTable.recipe.model.vo.MemImg;

/**
 * Servlet implementation class MypageUpdateImg
 */
@WebServlet("/UpdateImg.me")
public class MypageUpdateImg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MypageUpdateImg() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Member m = (Member)session.getAttribute("loginUser");
        request.setCharacterEncoding("utf-8");
        
        if(ServletFileUpload.isMultipartContent(request)) {
        	
            int maxSize = 10 * 1024 * 1024;
            
            String savePath = request.getSession().getServletContext().getRealPath("/resources/image/mem-img");
            
            MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "utf-8", new MyFileRenamePolicy());
            
            MemImg mi = new MemImg();
            mi.setMemImg(multiRequest.getFilesystemName("updateImg"));
            mi.setMemId(m.getMemId());
            
                    
            int result = new RecipeService().updateMemImg(mi);
            
            if(result > 0) { // 사진 변경 성공
            	m.setMemImg("/resources/image/mem-img/"+multiRequest.getFilesystemName("updateImg"));
            	session.setAttribute("loginUser", m);
            	response.sendRedirect(request.getContextPath()+"/recipe.me");
            	// request.getRequestDispatcher("views/recipe/mypageRecipe.jsp").forward(request, response);
            }else { // 사진 변경 실패
                System.out.println("이거 왜 안되니...");
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
