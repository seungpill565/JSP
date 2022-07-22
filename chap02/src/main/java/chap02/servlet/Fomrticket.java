package chap02.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/form/quiz/ticket")
public class Fomrticket extends HttpServlet{
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		String big = req.getParameter("big");
		String youth = req.getParameter("youth");
		String small = req.getParameter("small");
		
		Integer big_money =  (Integer.parseInt(big)*45000);
		Integer youth_money =  (Integer.parseInt(youth)*38000);
		Integer small_money =  (Integer.parseInt(small)*35000);
		
		HttpSession session = req.getSession();
		
		session.setAttribute(big, big_money);
		session.setAttribute(youth, youth_money);
		session.setAttribute(small, small_money);
		
		System.out.println(big_money);
		System.out.println(youth_money);
		System.out.println(small_money);
		
		RequestDispatcher dispatcher =  req.getRequestDispatcher("/form/quiz/ticket.jsp");
		

		dispatcher.forward(req, resp);
		
		
		
//		resp.sendRedirect("/chap02/form/quiz/ticket.jsp");
	}

}
