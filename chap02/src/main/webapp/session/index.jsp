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
		<li>�� ������ ó�� �����ϴ� ������� ��Ű�� ����ID�� �߰��Ѵ�.</li>
		<li>�� ��, ����ID�� �Ժη� ����/�����ϱ� ���� ����� ���̾�� �Ѵ�.</li>
		<li>������� ��Ű�� ����� ����ID�� �ش� ����ڰ� ��û�� ���������� �Բ� �Ƿ����� �ȴ�.</li>
		<li>��Ű�� ����� ����ID�� �⺻������ ������� �� �������� ����ɶ����� �����ȴ�.
			(����,������ ������ �� �ִ�)</li>
		<li>���ǿ� �����͸� �����ϴ°��� ������ ��ǻ���� �ڿ��� ����ϴ� �����Ƿ�,
			���ǿ� �ʹ� ���� �����͸� �����ؼ��� �ȵȴ�.</li>
	</ol>
	
	<h3># ���� ��Ʈ����Ʈ �߰��ϱ�</h3>
	
	<form action="./add.jsp" method="POST" id="attrAddForm">
		<input type="text" name="key" placeholder="Input Key" autocomplete="off"/>
		<input type="text" name="value" placeholder="Input Value" autocomplete="off"/>
	</form>
	
	<!-- from �ٱ��� �ش� form �Ҽ��� input �±׸� �߰��� ���� �ִ� -->
	<input type="number" name="age" form="attrAddForm" placeholder="Input Age" disabled/>
	<input type="submit" form="attrAddForm" />
	
	<hr />
	
	<form action="/chap02/session/fix" method="GET" id="attrAddFixForm">
	</form>
	
	<%
		// ���ǿ� �ִ� ��� ��Ʈ����Ʈ�� �̸����� ����
		java.util.Enumeration<String> attrNames =  session.getAttributeNames();
		//���� ��Ұ� ������ �ݺ�
		
		out.print("<table border = \"1\"><tr><th>key</th><th>Value</th>"
		+"<th>�� ����</th><th>����</th></tr>");
		while(attrNames.hasMoreElements()){
			String attrName = attrNames.nextElement(); // ��Ʈ����Ʈ �̸��� �ϳ� ����
			
			
			
			if(attrName!=null){
			out.print(String.format("<tr><td>%s</td><td>%s</td>"
			+"<td><form action=\"/chap02/session/fix\" method=\"GET\" id=\"attrAddFixForm\">"
			+"<input type =\"text\" name=\"fix\">"
			+"<input type=\"hidden\" name=\"value\" value = \"%s\">"
			+"<input type=\"hidden\" name=\"key\" value = \"%s\">"
			+"<button type=\"submit\"> ����</button></form></td>"
			+"<td><form action=\"/chap02/session/attribute/delete\" method=\"POST\">"
			+"<input type=\"hidden\" name=\"key\" value = \"%s\">"
			+"<input type=\"submit\" value =\"����\"></form></td></tr>",
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