package com.todayTable.admin.notice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.todayTable.admin.notice.model.service.AdminNoticeService;
import com.todayTable.notice.model.vo.Notice;

/**
 * Servlet implementation class AdminUpdateNoticeController
 */
@WebServlet("/update.no")
public class AdminUpdateNoticeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminUpdateNoticeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		int noticeNo = Integer.parseInt(request.getParameter("num"));
		
		String noticeTitle = request.getParameter("noticeTitle");
		String noticeContent = request.getParameter("noticeContent");
		String noticeClsfc = request.getParameter("checkEmerge");
		Notice n = new Notice();
		
		n.setNoticeNo(noticeNo);
		n.setNoticeName(noticeTitle);
		n.setNoticeContents(noticeContent);
		
		if(noticeClsfc == null) {
			noticeClsfc = "일반";
		}
		System.out.println(noticeClsfc);
		n.setNoticeClsfc(noticeClsfc);
		int result = new AdminNoticeService().updateNotice(n);
		
		if(result > 0) {
			response.sendRedirect(request.getContextPath() + "/adminDetail.no?num=" + noticeNo);
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
