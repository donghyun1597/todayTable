package com.todayTable.admin.customerCenter.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.todayTable.common.JDBCTemplate.*;

import com.todayTable.admin.customerCenter.model.dao.AdminInquiryDao;
import com.todayTable.common.model.vo.PageInfo;
import com.todayTable.customerCenter.model.vo.Inquiry;

public class AdminInquiryService {

	public ArrayList<Inquiry> selectInquiryList(PageInfo pi) {
		Connection conn = getConnection();
		
		ArrayList<Inquiry> list = new AdminInquiryDao().selectInquiryList(conn, pi);
		
		close(conn);
		
		return list;
	}
	
	public Inquiry selectInquiry(int iNo) {
		Connection conn = getConnection();
		
		Inquiry iq = new AdminInquiryDao().selectInquiry(conn, iNo);
		
		close(conn);
		
		return iq;
	}
	
	public int insertAnswer(int iqNo, String answer) {
		Connection conn = getConnection();
		
		int result = new AdminInquiryDao().insertAnswer(conn, iqNo, answer);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	public int updateAnswer(int iqNo, String iqContent) {
		Connection conn = getConnection();
		
		int result = new AdminInquiryDao().updateAnswer(conn, iqNo, iqContent);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	public int deleteInquiry(int iqNo) {
		Connection conn = getConnection();
		
		int result = new AdminInquiryDao().deleteInquiry(conn, iqNo);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	public int inquirySelectListCount() {
		Connection conn = getConnection();
		
		int listCount = new AdminInquiryDao().inquirySelectListCount(conn);
		
		close(conn);
		
		return listCount;
	}
	
	public int countInquiry() {
		Connection conn = getConnection();
		
		int inquiryCount = new AdminInquiryDao().countInquiry(conn);
		
		close(conn);
		
		return inquiryCount;
	}
}
