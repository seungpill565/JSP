<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%	
	//pageContext : �� ������������ ����� �� �ִ� JSP ���� ��ü
	pageContext.setAttribute("car","kia");

	//Attribute���� ��� Ÿ���� ������ ���� �� �ֱ� ������ Object Ÿ������ ��������
	
	//application : �� ���ø����̼� ����(AWS)�� ������ ����ִ� JSP ���� ��ü
	String applicationCar = (String)application.getAttribute("car");
	//session : ���� ������ ��� �ִ� ��ü
	String sessionCar = (String)session.getAttribute("car");
	//request : ��û ������ ��� �ִ� JSP ���� ��ü
	String requestCar = (String)request.getAttribute("car");
	
	String pageCar = (String)pageContext.getAttribute("car");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	���� : <%=applicationCar %> <br />
	���� : <%=sessionCar %> <br />
	��û : <%=requestCar %> <br />
	������: <%=pageCar %> <br />
	
	<hr />
	
	�׳� ����:${car} (���� ����� ������ car�� ���´�.)<br />
	������Ʈ�� ����: ${requestScope.car} <br />
	���ǿ� ����: ${sessionScope.car} <br />
	Was�� ����: ${applicationScope.car} <br>  
	
	<hr />


</body>
</html>