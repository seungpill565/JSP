<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α��� ������</title>
</head>
<body>

	<form action="/chap02/attribute/login" method="POST">
	
		���̵� :  <input type="text" name="user_id"/><br />
		��й�ȣ : <input type="password" name="user_password"/><br />
		<input type="submit" value="�α���"/>
		<input type="reset" value= "���"/>
		
		
		</form>
		
		<a href="./view/login_result_page.jsp">�α��� ���� Ȯ�� ������</a>
		
		<%if (session.getAttribute("login")!=null&&
		((boolean)session.getAttribute("login"))) {%>
			<div>���� �α������Դϴ�.<button id="btn-logout">�α׾ƿ�</button></div>
		<%} else{%>
			<div>�α����� �ʿ��մϴ�.</div>
		<%} %>
		
		
		<script src = "/chap02/assets/js/login.js"> </script>
		
			
		
		
		

</body>
</html>