package chpa04.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import chap04.database.DBConnector;

public class empDAO {
	
	
	public static void delemp(Integer employee_id) {
		String sql = "delete from employees where employee_id = ?";
		
		try(
				Connection conn = DBConnector.getConnction();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				){
			
			pstmt.setInt(1, employee_id);
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		
	}

}
