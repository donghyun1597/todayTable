package com.todayTable.customerCenter.model.service;

import static com.todayTable.common.JDBCTemplate.close;
import static com.todayTable.common.JDBCTemplate.getConnection;

import java.util.ArrayList;

import com.todayTable.customerCenter.model.dao.InquiryDao;
import com.todayTable.customerCenter.model.vo.Inquiry;

public class InquiryService {

	public ArrayList<Inquiry> selectInquiryList() {
		java.sql.Connection conn = getConnection();
		
		ArrayList<Inquiry> list = new InquiryDao().selectInquiryList(conn);
		close(conn);
		
		return list;
	}

}
