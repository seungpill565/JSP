<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import = "java.util.ArrayList, java.util.List" %><%--JSP import --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSP Basic</title>
</head>
<body>

	<h3># JSP�� ó�� ����</h3>
	
	<ol>
		<li>JSP�� �ڵ带 �ۼ��Ѵ�.</li>
		<li>JSP�ڵ�� �ڹ� �ڵ� ���·� 1�� �����ȴ�.(Servlet ���·� ��ȯ)</li>
		<li>������ �� ���� ������ ���·� �� �����̳�(Tomcat)�� ��ϵȴ�.</li>
		<li>��û�� ������ �� �����̳ʿ� ��ϵ� ������ ������� �����ؿ� 
			�����Ǵ� HTML�� �ڵ带 �޾� �����Ѵ�</li>
		
	</ol>

	
	<%--JSP Script --%>
	
	<%--
		<% %> : ��� �ڹ� �ڵ带 ����� �� �ִ� ����
		<%= %> : �ش� ���� HTML�� ���
		<!% %> : �Լ��� ������ �� �ִ� ����
		<%@ %> : JSP ���� ����
	 --%>
	
	<%--
		�� �ּ��� �����Ϸ����� ó���Ǵ� �ּ��̱� ������ HTML���� ���� ó���ȴ�.
		(HTML�� �ּ��� �� ���������� �����ؾ� ó���Ǵ� �ּ��̴�.)
	 --%>
	 
	 <%
	 	 // �޼����� ���� ó�� ����� �� �ִ� ����
	 	int a = 10;
	 	int b = 11;
	 	
	 	class Apple{
	 		int size;
	 		int color;
	 		
	 		Apple(int size, int color){
	 			this.size= size;
	 			this.color = color;
	 		}
	 		
	 		public String toString(){
	 			return String.format("ũ��%d/%d����",size,color);
	 		}
	 	}
	 	
	 	List<Apple> apples = new ArrayList<>();
	 	
	 	Apple apple1 = new Apple(123,10);
	 	Apple apple2 = new Apple(444,44);
	 	
	 	for(int i = 0; i< 10; i++){
	 		apples.add(new Apple(i,i));
	 	}
	 	
	 	
	 %>
	 
	 <div><%=apple1 %></div>
	 <div><%=apple2 %></div>
	 <div><%=apples %></div>
	 <table border = "1">
	 	<tr>
	 		<th>��� ũ��</th>
	 		<th>��� ����</th>
	 	</tr>
	 <% for (int i =0; i<apples.size(); ++i){ %>
	 	<tr>
	 		<td><%=apples.get(i).size %></td>
	 		<td><%=apples.get(i).color %></td>
	 	</tr>
	 	<%} %>
	 </table>
	 <%for(int i=0; i<10; i++){
			rabbit(); 
	 } 
	 
	 //out ���尴ü :��� ��Ұ�  HTML�� �̸� ������� �ִ� OutputStream
	 	out.print("&nbsp;&nbsp;/)&nbsp;/)<br>");
		out.print("(&nbsp;&nbsp;&nbsp;&nbsp;..)<br>");
		out.print("( &nbsp;&nbsp;&nbsp;>$)<br>");
		
		for(int i=0; i<10; ++i){
			out.print(String.format("<a href=\"link%d\">��ũ%d</a><br>",i,i));
		}
	 %>
	 
	 <%!
	 	//Ŭ���� ����, �޼��� �ٱ� ó�� ����� �� �ִ� ����
	 	public  void rabbit(){
		 System.out.println("  /)/)");
		 System.out.println("(  ..)");
		 System.out.println("(  >$)");
	 }
	 %>

</body>
</html>