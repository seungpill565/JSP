package chap02.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/form/tiketting")
public class TiketServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	
		resp.setCharacterEncoding("EUC-KR");
		PrintWriter out = resp.getWriter();
		out.print("<html><head><title>tiketting</title></head><body>");
		out.print("<h2 style=\"position: absolute; font-family: 'Oswald,sans-serif',sans-serif;\r\n"
				+ "	left: 40%;\">결제금액 확인</h2>");
		out.print("<table border=\"1\" style =\"position: absolute; left: 33%; top:13%\">");
		out.print("<tr style =\"background-color: blue; color: white\">");
		out.print("<th>");
		out.print("구분");
		out.print("</th>");
		out.print("<th>");
		out.print("인원수");
		out.print("</th>");
		out.print("<th>");
		out.print("가격");
		out.print("</th>");
		
		
		String adult = req.getParameter("adult");
		String teenager = req.getParameter("teenager");
		String child = req.getParameter("child");
		Integer adult_Money  =0;
		Integer teenager_Money = 0;
		Integer child_Money = 0;
		if(adult != null) {
			 adult_Money = (Integer.parseInt(adult)*45000);
		}
		if(teenager !=null) {
			teenager_Money = (Integer.parseInt(teenager)*38000);
		}
		if(child != null) {
			 child_Money = (Integer.parseInt(child)*38000);
		}
		
		
		
		int sum = adult_Money+teenager_Money+ child_Money;
		int people = (Integer.parseInt(adult)+Integer.parseInt(teenager)+Integer.parseInt(child));
		
		
		out.print("<tr style =\"background-color: black; color: white\">");
		out.print("<td>");
		out.print("대인");
		out.print("</td>");
		
		out.print("<td>");
		out.print("인원수 :"+ adult+"명");
		out.print("</td>");
		
		out.print("<td>");
		out.print("총가격 :"+adult_Money+"원");
		out.print("</td>");
		out.print("</tr>");
		
		out.print("<tr style =\"background-color: black; color: white\">");
		out.print("<td>");
		out.print("청소년");
		out.print("</td>");
		
		out.print("<td>");
		out.print("인원수 :"+ teenager+"명");
		out.print("</td>");
		
		out.print("<td>");
		out.print("총가격 :"+teenager_Money+"원");
		out.print("</td>");
		out.print("</tr>");
		
		out.print("<tr style =\"background-color: black; color: white\">");
		out.print("<td>");
		out.print("소인");
		out.print("</td>");
		
		out.print("<td>");
		out.print("인원수 :"+ child+"명");
		out.print("</td>");
		
		out.print("<td>");
		out.print("총가격 :"+child_Money+"원");
		out.print("</td>");
		out.print("</tr>");
		
		out.print("<tr style =\"background-color: black; color: white\">");
		out.print("<td>");
		out.print("총");
		out.print("</td>");
		
		out.print("<td>");
		out.print("총 인원수 :"+ people+"명");
		out.print("</td>");
		
		out.print("<td>");
		out.print("총 가격 :"+ sum+"원");
		out.print("</td>");
		
		
		
		
		out.print("</table>");
		out.print("</body>");
		out.print("</html>");
		
		
		
		
	}

}
