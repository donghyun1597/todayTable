package com.todayTable.admin.notice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.todayTable.notice.model.service.NoticeService;

/**
 * Servlet implementation class AdminNoticeInsertForm
 */
@WebServlet("/insertNotice.no")
public class AdminNoticeInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminNoticeInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String noticeTitle = request.getParameter("noticeTitle");
		String noticeContent = request.getParameter("noticeContent");
		String checkEmerge = "";
		
		if(request.getParameter("checkEmerge") == null) {
			checkEmerge = "일반";
		} else {
			checkEmerge = "긴급";
		}
		
		int result = new NoticeService().insertNotice(noticeTitle, noticeContent, checkEmerge);
		
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "등록완료");
			
			response.sendRedirect(request.getContextPath() + "/adminNotice.no");
		} else {
			request.getSession().setAttribute("alertMsg", "등록실패");
			
			request.getRequestDispatcher("/insertNoticeForm.no").forward(request, response);
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
