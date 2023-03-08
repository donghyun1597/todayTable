package com.todayTable.admin.customerCenter.report.model.service;

import static com.todayTable.common.JDBCTemplate.close;
import static com.todayTable.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.todayTable.admin.customerCenter.report.model.dao.AdminReportDao;
import com.todayTable.common.model.vo.PageInfo;
import com.todayTable.customerCenter.model.vo.Report;

public class AdminReportService {

	public int reportSelectListCount() {
		Connection conn = getConnection();
		
		int listCount = new AdminReportDao().reportSelectListCount(conn);
		
		close(conn);
		
		return listCount;
	}
	
	public ArrayList<Report> selectReportList(PageInfo pi) {
		Connection conn = getConnection();
		
		ArrayList<Report> list = new AdminReportDao().selectReportList(conn, pi);
		
		close(conn);
		
		return list;
	}
	
	public Report selectReport(int rNo) {
		Connection conn = getConnection();
		
		Report r = new AdminReportDao().selectReport(conn, rNo);
		
		close(conn);
		
		return r;
	}
	
	public int countReport() {
		Connection conn = getConnection();
		
		int reportCount = new AdminReportDao().countReport(conn);
		
		close(conn);
		
		return reportCount;
	}
}
