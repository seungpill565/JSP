<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>#forward</h3>
	
	<ul>
		<li>
			����ڰ� ���� ��û�� �ϳ��� ����(�Ǵ� JSP)���� ó���ϴٰ� �ٸ� ����(�Ǵ� JSP)��
			�����Ͽ� ó���� �̾���°�
		</li>
		
		<li>
			������� ��û�� �״�� �ٸ� ���� �Ǵ� JSP�� �����ϴ� ���̱� ������
			��û�� �Ƿ��ִ� ��� ������ �Բ� �״�� ���޵ȴ�
		</li>
		<li>
		 	�������� ������ ��û�� ����, 
		 	�ڹٸ� ����� ó����(Control) ��� ����ģ ��
			JSP�� �������ϱ� ���� �뵵�� ����Ѵ�.(View) 
		</li>
	</ul>
		<h3># redirect</h3>
		<ul>
			<li>����Ʈ�� ������ Ŭ���̾�Ʈ���� �ش� �ּҷ� �ٽ� ��û�� ������ ����� ��</li>
			<li>������ ����ڰ� �� ���������� ���ο� ��û�� ����� ������(�ּ�â�� �� �ּҸ� �Է�) 
				������ ���� ��û��ü�� �Ƿ��ִ� ������ ��������������</li>
		</ul>
	
	
	<div>
		<a href="/chap02/forward/controller?name=hong&age=33">�����带 ���� Page1 ����</a>
	</div>
	
	
	<div>
		<a href="/chap02/redirect/controller?name=hong&age=33">����Ʈ�� ���� Page1 ����</a>
	</div>
	
	
	
	
	
	
	
	
</body>
</html>