package chap03.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ElseServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		resp.setCharacterEncoding("EUC-KR");
		resp.getWriter().append("어떤 매핑에도 해당하지 않습니다.(ElseServlet)");
		
	}

}
