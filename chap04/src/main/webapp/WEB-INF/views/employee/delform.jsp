<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h3>#데이터 삭제하기</h3>


	<form action="./del" method="POST">
	employee_id:
	<input type="number" name="employee_id" value="${employee_id }" readonly/><br>
	<input type="submit" value="삭제하기"/>
	</form>
</body>
</html>