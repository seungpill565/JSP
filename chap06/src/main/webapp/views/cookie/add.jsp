<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String name = request.getParameter("name");
	String value = request.getParameter("value");
	String maxAge = request.getParameter("max-age");
	
	//# ���������� ��Ű �����
	
	//1. �� ��Ű �ν��Ͻ��� �����Ѵ�.
	Cookie cookie = new  Cookie(name, value);
	
	//2. ��Ű �ν��Ͻ��� ���ϴ� ��� �����Ѵ�
	
	try{
		cookie.setMaxAge(Integer.parseInt(maxAge));
	}catch(NumberFormatException e){
		System.out.println("cookie max-age == session");
	}
	//��Ű�� ��ȿ�ð� ����(��) ,�������� ������ �� ������ ����� ���� (Session)
	//0���� ������ �ش� ��Ű�� �� ���������� �����Ѵ�
	
	
	//cookie.setPath();//�� ��Ű�� ����ϴ� ��θ� ����, �������� ������ ���� ��θ� �����
	
	cookie.setHttpOnly(true); // ��Ű�� http �̿��� ���α׷��� �� ���� �� ������ ���� (����)
	
	cookie.setComment("��Ű�� ���� ����...");
	
	//3. �ش� ��Ű�� ���信 �߰��� ���´�
	
	response.addCookie(cookie);
	
	response.sendRedirect(request.getContextPath()+"/views/cookie/index.jsp");
	
	
	
%>