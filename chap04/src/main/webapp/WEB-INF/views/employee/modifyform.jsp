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

	<h3>#������ �����ϱ�</h3>
	
	<form action="./modify" method="POST">
	<table>
		<tr>
			<th>employee_id</th>
			<td><input type="text" name="employee_id" value="${employee.employee_id}"/></td>
		</tr>
		<tr>
			<th>first_name</th>
			<td><input type="text" name="first_name" value="${employee.first_name }" /></td>
		</tr>
		<tr>
			<th>last_name</th>
			<td><input type="text" name="last_name" value="${employee.last_name }" /> </td>
		</tr>
		<tr>
			<th>hire_date</th>
			<td><input type="date" name="hire_date" value="${employee.hire_date }" /></td>
		</tr>
		<tr>
			<th>salary</th>
			<td><input type="text" name="salary" value="${employee.salary }" /></td>
		</tr>
		<tr>
			<th>commission_pct</th>
			<td><input type="text" name="commission_pct" value="${employee.commission_pct }" /></td>
		</tr>
		<tr>
			<th>job_id</th>
			<td>
			<select name="job_id">
				<c:forEach items="${jobs }" var="job">
					<c:choose>
						<c:when test = "${job.job_id == employee.job_id }">
							<option value="${job.job_id }" selected="selected">${job.job_title }(${job.job_id })</option>
						</c:when>
						<c:otherwise>
							<option value="${job.job_id }">${job.job_title }(${job.job_id })</option>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</select>
			</td>
		</tr>
		<tr>
			<th>department_id</th>
			<td>
				<select>
				</select>
			</td>
		</tr>
	</table>
	
	<input type="submit" value="�����ϱ�"/>
	
	
	</form>
	
	



</body>
</html>