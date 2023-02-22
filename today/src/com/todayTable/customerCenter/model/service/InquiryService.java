package com.todayTable.customerCenter.model.service;

import static com.todayTable.common.JDBCTemplate.close;
import static com.todayTable.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.todayTable.common.model.vo.PageInfo;
import com.todayTable.customerCenter.model.dao.InquiryDao;
import com.todayTable.customerCenter.model.vo.Inquiry;

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

}
