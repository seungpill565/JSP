<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>새 사원 추가하기</title>
</head>
<body>


	<h3># 새 사원 추가하기</h3>
	
	
	
	<!-- /chap04/employee/add_form -->
	<form  action="./add" method = "POST">
	
	employee_id:
	<input type="number" name="employee_id" value="${new_id }"/><br>
	last_name:<input type="text" name="last_name"/><br>
	email:<input type="text" name="email"/><br>
	hire_date:<input type="date" name="hire_date"/><br>
	job_id:
	
	<select name="job_id">
		<c:forEach items="${jobs }" var="job">
			<option value="${job.job_id }">${job.job_title }(${job.job_id })</option>
		</c:forEach>
	</select> <br>
	
	
	<%--
		<c:forEach items="${jobs }" var="job">
			<input type="radio"  name="job_id"  value="${job.job_id }"/>
			<label for="${job.job_id }">${job.job_title }(${job.job_id })</label><br>
		</c:forEach> 
	
	 --%>
	
	<input type="submit" value="추가하기"/>
	</form>
	
	
	

</body>
</html>