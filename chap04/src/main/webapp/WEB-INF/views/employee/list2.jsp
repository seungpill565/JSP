<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<!--�ش� ��ü�� �Ӽ��� Getter�� ������ EL�� ���ϰ� �ش� �Ӽ��� ���� ����� �� �ִ�. -->
	<h3>Employees</h3>
	
	<ul>
		<c:forEach items="${employees }" var="employee">
			<li>${employee.first_name } ${employee.last_name } 
			(<a href="/chap04/employee/modify_form?emp=${employee.employee_id }">����</a> /
			<a href="/chap04/employee/del_form?emp=${employee.employee_id }">����</a>)</li>
		</c:forEach>
	</ul>

</body>
</html>