package chap02.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/form/quiz/ticket")
public class Fomrticket extends HttpServlet{
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		String big = req.getParameter("big");
		String youth = req.getParameter("youth");
		String small = req.getParameter("small");
		System.out.println(big);
		System.out.println(youth);
		System.out.println(small);
		
		
		
		resp.sendRedirect("/chap02/form/quiz/ticket.jsp");
	}

}
