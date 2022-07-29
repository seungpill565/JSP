<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ include file = "/WEB-INF/views/jspf/taglib.jspf" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Include 활용하기</title>
<%@ include file="/WEB-INF/views/jsdf/bootstrap_header.jspf" %>
</head>
<body>
	
	
	<c:set var="x" value="10" scope="page"/>
	<c:set var="x" value="10" scope="request"/>
	<c:set var="x" value="10" scope="session"/>
	<c:set var="x" value="10" scope="application"/>
	<p>x : ${x }</p>
	
	
	<%@include file ="/WEB-INF/views/include1.jsp" %>
	<jsp:include page="/WEB-INF/views/include2.jsp"/>
	
	<h3># include</h3>
	
	<dl>
		<dt>include directive</dt>
		<dd>해당 파일을 그대로 현재 파일에 포함시키는 방식</dd>
		<dt>jsp include</dt>
		<dd>해당 파일을 실행시킨 결과를 현재 파일에 포함시키는 방식</dd>
	</dl>

</body>
</html>