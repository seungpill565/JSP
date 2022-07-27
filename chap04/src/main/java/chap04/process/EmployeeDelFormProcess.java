package chap04.process;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chpa04.dao.empDAO;

public class EmployeeDelFormProcess implements Process{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		Integer employee_id = Integer.parseInt(request.getParameter("employee_id"));
		
		request.setAttribute("employee_id", employee_id);
		
		
		return "/WEB-INF/views/employee/delform.jsp";
		
		
	}
	
	

}
