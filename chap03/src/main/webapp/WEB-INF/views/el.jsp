<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
 <%
 	application.setAttribute("fruit", "dragonfruit");
 	session.setAttribute("fruit", "peach");
 	request.setAttribute("fruit", "orange");
 	pageContext.setAttribute("fruit", "pineapple");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>EL</title>
</head>
<body>
	<h3># �ܺ� ���̺귯�� �߰��ϴ� ����</h3>
	
	<ol>
		<li>���ϴ� ���̺귯�� �ٿ�ε�</li>
		<li>�ع� ������Ʈ ��Ŭ�� -> Build Path</li>
		<li>Configure Builid Path..</li>
		<li>Module path�� Add External Jars</li>
		<li>���ϴ� ���̺귯�� ã�Ƽ� ���</li>
		<li>�ش� ������Ʈ ��Ŭ�� -> properties</li>
		<li>Deployement Assembly -> Add</li>
	</ol>
	
	
	
	<h3>#EL (Expression Language)</h3>
	
	<ul>
		<li>JSP���� ��Ʈ����Ʈ�� ����ִ� ���� ���ϰ� ����� �� �ִ� ����</li>
		<li>
			���� ������ ���� name�� ���� ��Ʈ����Ʈ�� �����Ѵٸ�
			���� ����� ������ ���� ���� ����Ѵ�.
			(page -> request -> session -> application)
		</li>
		<li>
			��Ȯ�ϰ� �����ϰ� �ʹٸ� �ش� ���� �̸����� �տ� ����ؾ� �Ѵ�.
			(pageScope, requestScope, sesionsScope, applicationScope)
		</li>
	</ul>
	
	<h3># EL�� ��Ʈ����Ʈ�� ����� �� ����ϱ�</h3>
	
	
	<ul>
		<li>���� �׳� ��� : ${fruit }</li>
		<li>������ ����: ${pageScope.fruit }</li>
		<li>������Ʈ ����: ${requestScope.fruit }</li>
		<li>���� ���� : ${sessionScope.fruit}</li>
		<li>���ø����̼� ����: ${applicationScope.fruit }</li>
	</ul>
	
	<h3># EL�� ���ͳ�</h3>
	
	<ul>
		<li>boolean type: ${true},${false } </li>
		<li>���� Ÿ��:${123 },${456},${123+456 }</li>
		<li>�Ǽ� Ÿ��:${123.1234*3 }</li>
		<li>���ڿ� Ÿ��:${'Hello!!' }, ${"Hello!!!" }</li>
	</ul>
	
	${pageScope.fruit == 'pineapple'}, ${pageScope.fruit == "pineapple"}
	
	<h3># EL�� ������</h3>
	
	<dl>
		<dt><b>��� ������:</b>+,-,*,/,mod</dt>
		<dd>${'${15%10 } = '}${15 % 10 }</dd>
		<dt>
			<b>�� ������:</b> &lt;,&gt;,&le;,&ge;
			,==,!=,eq(equal),ne(not equl),<br />
			lt(less than),gt(greater than),<br />
			le(less than equal),ge(greater than equal)
		</dt>
		<dd>
			${'${15 eq 15 } '} = ${15 eq 15} <br />
			<!-- ${'${15 ne 15 } '} = ${15 ne 15 } -->
		</dd>
		
		<dt>
			<b>�� ���� :</b>and,or,not && ||,!
		</dt>
		
		<dd>
			${(fruit eq 'pineapple') 
				and (applicationScope.fruit eq 'dragonfruit') },
				<% pageContext.setAttribute("a", 33); %>
				${a % 2 == 0 && a % 11 == 0}
		</dd>
		
		<dt>
			<b>���� ������: </b>condtion ? yes : no
		</dt>
		
		<dd>
			<% request.setAttribute("apple", 20); %>
			${apple % 10 ==0 ? '<b>�ٱ���/ 10</b>' : '<b>�ٱ���/ 10+1</b>'} 
		</dd>
		
	</dl>
	
	
	
	
	
	
	
</body>
</html>