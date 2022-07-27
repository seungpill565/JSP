package chap04.process;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap04.database.DBConnector;

public class EmployeeModify implements Process{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		Integer employee_id = Integer.parseInt(request.getParameter("employee_id"));
		String last_name = request.getParameter("last_name");
		String email = request.getParameter("email");
		String hire_date = request.getParameter("hire_date");
//		String job_id = request.getParameter("job_id");
		
		String sql ="update employees set last_name = ? ,email = ?, hire_date = ? where employee_id = ? ";
		
		try(
				Connection conn = DBConnector.getConnction();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				){
			pstmt.setString(1, last_name);
			pstmt.setString(2, email);
//			pstmt.setString(3, job_id);
			pstmt.setString(3, hire_date);
			pstmt.setInt(4, employee_id);
			
			
			int row = pstmt.executeUpdate();
			
			System.out.println(row + "행이 변경되었습니다.");
			
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		return "redirect:/chap04/employee/list";
	}

}
