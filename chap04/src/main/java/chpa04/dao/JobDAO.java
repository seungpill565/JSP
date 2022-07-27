package chpa04.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import chap04.database.DBConnector;
import chap04.model.Job;

public class JobDAO {
	
	
	public static List<Job> getlist() {
		List<Job> list = new ArrayList<>();
		String sql = "SELECT  job_id,job_title FROM jobs";
		
		
		try(
		Connection conn = DBConnector.getConnction();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
				
		){
			while(rs.next()) {
				list.add(new Job(
						rs.getString("job_id"),
						rs.getString("job_title")));
			}
			
		} catch (SQLException e) {
		}
		
		return list;
		
	}

}
