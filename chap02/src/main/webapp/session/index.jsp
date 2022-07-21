<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Http Session</title>
</head>
<body>

	<h3># Http Session</h3>
	
	<ol>
		<li>웹 서버는 처음 접속하는 사용자의 쿠키에 세션ID를 추가한다.</li>
		<li>이 때, 세션ID는 함부로 위조/변조하기 힘든 어려운 값이어야 한다.</li>
		<li>사용자의 쿠키에 저장된 세션ID는 해당 사용자가 요청을 보낼때마다 함께 실려오게 된다.</li>
		<li>쿠키에 저장된 세션ID는 기본적으로 사용자의 웹 브라우저가 종료될때까지 유지된다.
			(물론,설정을 변경할 수 있다)</li>
		<li>세션에 데이터를 저장하는것은 서버에 컴퓨터의 자원을 사용하는 것으므로,
			세션에 너무 많은 데이터를 저장해서는 안된다.</li>
	</ol>
	
	<h3># 세션 어트리뷰트 추가하기</h3>
	
	<form action="./add.jsp" method="POST" id="attrAddForm">
		<input type="text" name="key" placeholder="Input Key" autocomplete="off"/>
		<input type="text" name="value" placeholder="Input Value" autocomplete="off"/>
	</form>
	
	<!-- from 바깥에 해당 form 소석의 input 태그를 추가할 수도 있다 -->
	<input type="number" name="age" form="attrAddForm" placeholder="Input Age" disabled/>
	<input type="submit" form="attrAddForm" />
	
	<hr />
	
	<form action="/chap02/session/fix" method="GET" id="attrAddFixForm">
	</form>
	
	<%
		// 세션에 있는 모든 어트리뷰트의 이름들을 꺼냄
		java.util.Enumeration<String> attrNames =  session.getAttributeNames();
		//다음 요소가 있으면 반복
		
		out.print("<table border = \"1\"><tr><th>key</th><th>Value</th>"
		+"<th>값 수정</th><th>삭제</th></tr>");
		while(attrNames.hasMoreElements()){
			String attrName = attrNames.nextElement(); // 어트리뷰트 이름을 하나 꺼냄
			
			
			
			if(attrName!=null){
			out.print(String.format("<tr><td>%s</td><td>%s</td>"
			+"<td><form action=\"/chap02/session/fix\" method=\"GET\" id=\"attrAddFixForm\">"
			+"<input type =\"text\" name=\"fix\">"
			+"<input type=\"hidden\" name=\"value\" value = \"%s\">"
			+"<input type=\"hidden\" name=\"key\" value = \"%s\">"
			+"<button type=\"submit\"> 수정</button></form></td>"
			+"<td><form action=\"/chap02/session/attribute/delete\" method=\"POST\">"
			+"<input type=\"hidden\" name=\"key\" value = \"%s\">"
			+"<input type=\"submit\" value =\"삭제\"></form></td></tr>",
					attrName,session.getAttribute(attrName),session.getAttribute(attrName),attrName,attrName));
			}
		}
		out.print("</table>");
	%>
	
	
	<!-- 
		<form action="deleteForm" action="/chap02/session/attribute" method="DELETE"></form>
	 -->
	<script src = "/chap02/assets/js/index.js"> </script>
	
	
	
	
	
	

</body>
</html>