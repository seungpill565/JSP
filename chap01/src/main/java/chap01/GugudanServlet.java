package chap01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet/gugudan")
public class GugudanServlet extends HttpServlet{
	
	/*
	 	/chap01/servlet/gugudan으로 접속하는 크라이언트에게 예쁜 구구단 표를 응답하는 서블릿을 만들어 보세요
	 
	 */
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) 
	throws ServletException, IOException {
		
		resp.setCharacterEncoding("EUC-KR");
		PrintWriter out = resp.getWriter();
		
		out.print("<html>");
		out.print("<head>");
		out.print("<title>멋진 구구단</title>");
		out.print("<meta charset = \"EUC-KR\">");
		out.print("<style>");
		out.print("table{ background-color : black; color: white; }");
		out.print("td{border : solid white 3px}");
		out.print("</style>");
		out.print("</head>");
		out.print("<body>");
		out.print("<table>");
		for(int gop = 0; gop <=9; ++gop) {
			out.print("<tr>");
			for(int dan = 1; dan <=9; ++dan) {
				out.print("<td>");
				if(gop == 0) {
				out.print(String.format("<th>%d단</th>",dan));
				}else{out.print(String.format("<td>%d x %d = %d</td>",dan,gop,dan*gop));
				out.print("</td>");
				}
			}
		}
		out.print("/<table>");
		out.print("</body>");
		out.print("</html>");
		
	}

}
