package chap04.process;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chpa04.dao.empDAO;

public class EmployeeDelProcess implements Process{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		Integer employee_id = Integer.parseInt(request.getParameter("employee_id"));
		System.out.println("hello");
		
		empDAO.delemp(employee_id);
		String sql2 =	"SELECT * FROM  employees WHERE employee_id = ?";
		
		
		return "redirect:/chap04/employee/list";
	}

}
