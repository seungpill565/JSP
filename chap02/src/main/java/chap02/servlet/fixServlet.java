package chap02.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/session/fix")
public class fixServlet extends HttpServlet{
	

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse resp) 
			throws ServletException, IOException {
		String fix = request.getParameter("fix");
		String key = request.getParameter("key"); 
		String value = request.getParameter("value");
		
		System.out.println(key);
		request.getSession().setAttribute(key, fix);
		
		resp.sendRedirect("/chap02/session/index.jsp");
		return;
	}

}
