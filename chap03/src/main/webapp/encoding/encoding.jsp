<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>인코딩 설정</title>
</head>
<body>

	<h3>#JSP 여러가지 charset 설정</h3>
	
	<dl>
		<dt>1. meta 태그의 charset</dt>
		<dd>클라이언트의 웹 브라우저가 해당 페이지를 해석할 때 사용할 charset</dd>
		<dt>2. pageEncoding 의 charset</dt>
		<dd>이 JSP파일을 서블릿(.java)으로 변환할 때 사용할 charset</dd>
		<dt>3. contentType 의 charset</dt>
		<dd>서블릿으로 생성된 결과물(응답)의 charset</dd>
	</dl>
	
	<h3>#서블릿으로 한글 데이터 보내 보기(GET)</h3>
	
	<form action="<%=request.getContextPath() %>/encodingTest" method = "Get">
	<input id="kor" type="radio" name="subject" value="국어" />
	<label for="kor">국어</label>
	<input id ="eng "type="radio" name="subject" value="영어" />
	<label for="eng">영어</label>
	<input id="math" type="radio" name="subject" value="수학" />
	<label for="math">수학</label>
	<input type="submit" value = "선택" />
	</form>
	
	<h3>#서블릿으로 한글 데이터 보내 보기 (POST)</h3>
	
	<form action="<%=request.getContextPath() %>/encodingTest" method = "POST">
	<input id="kor2" type="radio" name="subject" value="국어" />
	<label for="kor2">국어</label>
	<input id ="eng2 "type="radio" name="subject" value="영어" />
	<label for="eng2">영어</label>
	<input id="math2" type="radio" name="subject" value="수학" />
	<label for="math2">수학</label>
	<input type="submit" value = "선택" />
	</form>
	

</body>
</html>