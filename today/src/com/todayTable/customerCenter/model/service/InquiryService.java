package com.todayTable.customerCenter.model.service;

import static com.todayTable.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.todayTable.common.model.vo.PageInfo;
import com.todayTable.customerCenter.model.dao.InquiryDao;
import com.todayTable.customerCenter.model.vo.Inquiry;
import com.todayTable.member.model.vo.Member;

public class InquiryService {

	public ArrayList<Inquiry> selectInquiryList(PageInfo pi) {
		java.sql.Connection conn = getConnection();
		
		ArrayList<Inquiry> list = new InquiryDao().selectInquiryList(conn, pi);
		close(conn);
		
		return list;
	}

	public int inquirySelectListCount() {
		
		Connection conn = getConnection();
		
		int listCount = new InquiryDao().inquirySelectListCount(conn);
		
		close(conn);
		
		return listCount;
		
	}

	public int writeInquiry(Inquiry i) {
		
		Connection conn = getConnection();
		
		int result = new InquiryDao().writeInquiry(conn, i);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	public Inquiry selectInquiry(int inquiryNo) {
		Connection conn = getConnection();
		
		Inquiry i = new InquiryDao().selectInquiryList(conn, inquiryNo);
		
		return i;
	}

	public int updateInquiry(Inquiry i) {
		
		Connection conn = getConnection();
		
		int result = new InquiryDao().updateInquiry(conn, i);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	public int deleteInquiry(int inqNo) {
		
		Connection conn = getConnection();
		
		int result = new InquiryDao().deleteInquiry(conn, inqNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	public ArrayList<Inquiry> searchInquiryTitle(String searchText, PageInfo pi) {
		
		Connection conn = getConnection();
		
		ArrayList<Inquiry> list = new InquiryDao().selectInquiryList(conn, searchText, pi);
		
		close(conn);
		
		return list;
	}

}
