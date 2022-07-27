package chap04.process;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap04.database.DBConnector;
import chap04.model.Employee;
import chap04.model.Job;
import chpa04.dao.JobDAO;

public class EmployeeModifyFormProcess implements Process{
	
	

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		Integer employee_id = Integer.parseInt(request.getParameter("employee_id"));
		
		request.setAttribute("jobs", JobDAO.getlist());
		String sql2 =	"SELECT * FROM  employees WHERE employee_id = ?";
		try(
			Connection conn = DBConnector.getConnction();
			PreparedStatement pstmt2 = conn.prepareStatement(sql2);
				
			){
			pstmt2.setInt(1, employee_id);
			
			try(	ResultSet rs2 = pstmt2.executeQuery();
					){
				request.setAttribute("employee", rs2.next() ? new Employee(rs2) : null);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return "/WEB-INF/views/employee/modifyform.jsp";
	}

}
