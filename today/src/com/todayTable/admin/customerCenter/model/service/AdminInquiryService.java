package com.todayTable.admin.customerCenter.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.todayTable.common.JDBCTemplate.*;

import com.todayTable.admin.customerCenter.model.dao.AdminInquiryDao;
import com.todayTable.customerCenter.model.vo.Inquiry;

public class AdminInquiryService {

	public ArrayList<Inquiry> selectInquiryList() {
		Connection conn = getConnection();
		
		ArrayList<Inquiry> list = new AdminInquiryDao().selectInquiryList(conn);
		
		close(conn);
		
		return list;
	}
}
