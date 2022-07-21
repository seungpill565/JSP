<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Attribute Scope</title>
</head>
<body>

	<h3># Attribute Scope</h3>
	
	
	<p>
		��Ʈ�� ��Ʈ���� ������ ������ �� �ִ�.
	</p>
	
	<dl>
		<dt>Page scope</dt>
		<dd>
			�ش� ����(JSP)������ ����� �� �ִ� ��Ʈ����Ʈ. �ش� ����(.jsp)�� ����� �������
		</dd>
		<dt>request scope</dt>
		<dd>
			�ش� ��û�� �����Ͽ� ��û ��ü�� ����������� �����Ǵ� ��Ʈ����Ʈ.(forward,include������ �����ȴ�)
		</dd>
		<dt>session scope</dt>
		<dd>
			������ ����ɶ� ���� ������ �����Ǵ� ��Ʈ����Ʈ.
			Ŭ���̾�Ʈ�� �� ������ ó�� ��û�� ������ �����κ��� ����ID�� �߱޹޴´�.
			Ŭ���̾�Ʈ�� �ش� ����ID�� ��û�� �׻� ���Խ��� ������ �ڽ��� ������ID�� ����
			���� ��Ŀ�� ó�� ���� ��ü�� ������ �� �ִ�.
			�ش� Ŭ���̾�Ʈ�� ����ID�� �����ϰ� �ִ� ���ȿ���
			���� ��ü�� ����� ��Ʈ����Ʈ�� ����ؼ� ������ �� �ִ�.
		</dd>
		
		<dt>application scope</dt>
		<dd>
			�� ���ø����̼� ����(Apache-Tomcat)�� �����س��� ��Ʈ����Ʈ
			������ ������ ������ �����ȴ�.
		</dd>	
	
	</dl>
	<div>
		<a href="/chap02/attribute/scope">��Ʈ����Ʈ ���� �׽�Ʈ1���� ���İ���</a>
	</div>
	<div>
		<a href="/chap02/attribute/view/car.jsp">��Ʈ����Ʈ ���� �׽�Ʈ2(�ٷ� Ȯ�� ������ ���� )</a>
	</div>
	

</body>
</html>