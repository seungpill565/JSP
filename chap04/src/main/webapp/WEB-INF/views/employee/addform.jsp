<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�� ��� �߰��ϱ�</title>
</head>
<body>


	<h3># �� ��� �߰��ϱ�</h3>
	
	<form    action="/chap04/views/employee/addform" method = "GET">
	
	��� ��ȣ:<input type="text" name="employee_id"/>
	��� ��:<input type="text" name="first_name"/>
	��� �̸�:<input type="text" name="last_name"/>
	��� �̸���:<input type="text" name="email"/>
	��� �Ի糯¥:<input type="text" name="hire_date"/>
	��� ����:<input type="text" name="job_id"/>
	��� ��ȭ��ȣ:<input type="text" name="phone_number"/>
	��� ����:<input type="text" name="salary"/>
	<input type="submit" value="�߰��ϱ�"/>
	
	</form>
	
	
	

</body>
</html>