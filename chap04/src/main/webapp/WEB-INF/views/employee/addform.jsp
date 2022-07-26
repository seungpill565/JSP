<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>새 사원 추가하기</title>
</head>
<body>


	<h3># 새 사원 추가하기</h3>
	
	<form    action="/chap04/views/employee/addform" method = "GET">
	
	사원 번호:<input type="text" name="employee_id"/>
	사원 성:<input type="text" name="first_name"/>
	사원 이름:<input type="text" name="last_name"/>
	사원 이메일:<input type="text" name="email"/>
	사원 입사날짜:<input type="text" name="hire_date"/>
	사원 직업:<input type="text" name="job_id"/>
	사원 전화번호:<input type="text" name="phone_number"/>
	사원 연봉:<input type="text" name="salary"/>
	<input type="submit" value="추가하기"/>
	
	</form>
	
	
	

</body>
</html>