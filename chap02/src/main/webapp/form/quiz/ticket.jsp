<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<img src="/chap02/assets/img/img.PNG" alt="" />


	<form action="/chap02/form/quiz/ticket" method="GET">
	����   : <input type="text" name ="big" /><br />
	û�ҳ�: <input type="number" name ="youth" /><br />
	����/���:
	<%for (int i =1; i<=4; i++) {%>
		 <input id="small<%=i %>" type="radio" name ="small"  value="<%=i%>"/>
		<label for="small<%=i %>"><%=i %>��</label><br />
	<%} %>
	<button type="submit" >������</button>
	</form>
	<%if(session.getAttribute("big")!=null){ %>
		<div><%=session.getAttribute("big")%></div>
	<% }%>
	<%if(session.getAttribute("small")!=null){ %>
		<div><%=session.getAttribute("small")%></div>
	<% }%>
	<%if(session.getAttribute("youth")!=null){ %>
		<div><%=session.getAttribute("youth")%></div>
	<% }%>
	
</body>
</html>