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

	<!--해당 객체의 속성에 Getter가 있으면 EL로 편린하게 해당 속성을 꺼내 사용할 수 있다. -->
	<h3>Employees</h3>
	
	<ul>
		<c:forEach items="${employees }" var="employee">
			<li>${employee.first_name } ${employee.last_name } 
			(<a href="/chap04/employee/modify_form?employee_id=${employee.employee_id }&last_name=${employee.last_name}
			&hire_date${employee.hire_date}&email=${employee.email}">수정</a> 
			<a href="/chap04/employee/del_form?employee_id=${employee.employee_id }">삭제</a>)</li>
		</c:forEach>
	</ul>

</body>
</html>