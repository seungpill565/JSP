<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	// Servlet
	
	//�ش� path�� ��Ű�� ��û�� �Բ� �Ƿ����� �ȴ�	
	Cookie[] cookies = request.getCookies();

	if(cookies !=null){
		for(int i=0, len = cookies.length ;i< len; ++i){
			
			String name = cookies[i].getName();
			String value = cookies[i].getValue();
			
			System.out.println(name+ "=" + value);
		}
	}

%>    
    
      
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>

	<h1>��Ű �����ϱ�</h1>