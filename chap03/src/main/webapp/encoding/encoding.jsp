<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���ڵ� ����</title>
</head>
<body>

	<h3>#JSP �������� charset ����</h3>
	
	<dl>
		<dt>1. meta �±��� charset</dt>
		<dd>Ŭ���̾�Ʈ�� �� �������� �ش� �������� �ؼ��� �� ����� charset</dd>
		<dt>2. pageEncoding �� charset</dt>
		<dd>�� JSP������ ����(.java)���� ��ȯ�� �� ����� charset</dd>
		<dt>3. contentType �� charset</dt>
		<dd>�������� ������ �����(����)�� charset</dd>
	</dl>
	
	<h3>#�������� �ѱ� ������ ���� ����(GET)</h3>
	
	<form action="<%=request.getContextPath() %>/encodingTest" method = "Get">
	<input id="kor" type="radio" name="subject" value="����" />
	<label for="kor">����</label>
	<input id ="eng "type="radio" name="subject" value="����" />
	<label for="eng">����</label>
	<input id="math" type="radio" name="subject" value="����" />
	<label for="math">����</label>
	<input type="submit" value = "����" />
	</form>
	
	<h3>#�������� �ѱ� ������ ���� ���� (POST)</h3>
	
	<form action="<%=request.getContextPath() %>/encodingTest" method = "POST">
	<input id="kor2" type="radio" name="subject" value="����" />
	<label for="kor2">����</label>
	<input id ="eng2 "type="radio" name="subject" value="����" />
	<label for="eng2">����</label>
	<input id="math2" type="radio" name="subject" value="����" />
	<label for="math2">����</label>
	<input type="submit" value = "����" />
	</form>
	

</body>
</html>