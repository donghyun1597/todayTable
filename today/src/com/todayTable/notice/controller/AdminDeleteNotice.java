package com.todayTable.notice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.todayTable.member.model.service.AdminService;
import com.todayTable.notice.model.service.AdminNoticeService;

/**
 * Servlet implementation class AdminDeleteNotice
 */
@WebServlet("/deleteNotice.no")
public class AdminDeleteNotice extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminDeleteNotice() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String[] check = request.getParameterValues("noticeCheck");
		// System.out.println(String.join(",", check));

		if (check == null) {
			request.getSession().setAttribute("alertMsg", "삭제할 항목을 선택해주세요.");
			
			response.sendRedirect(request.getContextPath() + "/adminNotice.no");
		} else {
			int[] checkInt = new int[check.length];

			for (int i = 0; i < check.length; i++) {
				checkInt[i] = Integer.parseInt(check[i]);
			}
			// String checkNo = String.join(",", check);

			int result = new AdminNoticeService().deleteNotice(checkInt);

			if (result > 0) {
				request.getSession().setAttribute("alertMsg", "삭제가 완료되었습니다.");
				
				response.sendRedirect(request.getContextPath() + "/adminNotice.no");
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
