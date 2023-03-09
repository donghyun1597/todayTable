package com.todayTable.customerCenter.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.todayTable.common.model.vo.PageInfo;
import com.todayTable.customerCenter.model.service.InquiryService;
import com.todayTable.customerCenter.model.vo.Inquiry;
import com.todayTable.member.model.vo.Member;

/**
 * Servlet implementation class SearchInquiryController
 */
@WebServlet("/searchInquiry.cu")
public class SearchInquiryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchInquiryController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		// 인코딩
		request.setCharacterEncoding("utf-8");
		
		//
		String searchOption = request.getParameter("searchOption");
		String searchText = request.getParameter("searchText");
		
		// ---------------- 페이징 처리 ------------------
		int listCount;
		int currentPage;
		int pageLimit;
		int boardLimit;
		
		int maxPage;
		int startPage;
		int endPage;
		
		listCount = new InquiryService().searchInquiryCount(searchOption, searchText);
		
		currentPage = Integer.parseInt(request.getParameter("cpage"));
		
		pageLimit = 5;
		
		boardLimit = 10;
		
		maxPage = (int)Math.ceil((double)listCount / boardLimit);
		startPage = (currentPage-1) / pageLimit * pageLimit + 1;
		endPage = startPage + pageLimit -1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);

		
		ArrayList<Inquiry> list = null;
		
		switch (searchOption) {
		case "title":
			list = new InquiryService().searchInquiry(searchOption, searchText, pi);
			break;
			
		case "content":
			list = new InquiryService().searchInquiry(searchOption, searchText, pi);
			break;
			
		case "titleContent":
			list = new InquiryService().searchInquiry(searchOption, searchText, pi);
			break;
			
		}
		
		request.setAttribute("list", list);
		Inquiry deleteNo = null;
		if(list.isEmpty()) {
			deleteNo = null;
		}else {
			deleteNo = list.get(0);
		}
		int search = 1;
		
		// 문의 목록 페이지	
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		request.setAttribute("deleteNo", deleteNo);
		request.setAttribute("search", search);
		
		request.setAttribute("searchOption", searchOption);
		request.setAttribute("searchText", searchText);
		
		request.getRequestDispatcher("views/customerCenter/searchInquiryList.jsp").forward(request, response);
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
