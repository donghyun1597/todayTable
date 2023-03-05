package com.todayTable.admin.main.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;
import com.todayTable.admin.main.model.service.AdminMainService;
import com.todayTable.member.model.vo.MainImg;

/**
 * Servlet implementation class AdminMainpicInsertController
 */
@WebServlet("/insert.mp")
public class AdminMainpicInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminMainpicInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(ServletFileUpload.isMultipartContent(request)) {
			int maxSize = 10 * 1024 * 1024;
			
			String savePath = request.getSession().getServletContext().getRealPath("/resources/image/bg-img/");
			
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8");
			
			String test = multiRequest.getOriginalFileName("fileName");
			
			String realPath = "/resources/image/bg-img/";
			String fullName = realPath + test;
			
			int result = new AdminMainService().insertPic(fullName);
			
			if(result > 0) {
				request.getSession().setAttribute("alertMsg", "수정");
				response.sendRedirect(request.getContextPath() + "/adminMain.pic");
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
