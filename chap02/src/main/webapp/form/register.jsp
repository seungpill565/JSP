<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%	

	// �� �����͸� ���� �� �׻� ����ִ� ���� ���� ó���� �Ǿ��־�� �Ѵ�.
	
	//JSP�� request ���� ��ü : �Ű������� �޴� HTTpServletRequest req�� �ǹ���
	String name = request.getParameter("name");
	//�Ķ���ʹ� ���ڵ� ���ڿ��� �޴´�.
	String strAge = request.getParameter("age");
	Integer age = null;
	if(strAge !=null && !strAge.equals("")){ //null�Ǵ� �� ���� ���� ��� �ʿ��ϴ�.
		 age = Integer.parseInt(request.getParameter("age"));	
	}
	
	String[] hobbies  = request.getParameterValues("hobby");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%for(int i=0; i<hobbies.length; ++i){ %>
	
	<div id ="<%=hobbies[i] %>" class ="hobby"><%=hobbies[i] %></div>
	<% } %>

</body>
</html>