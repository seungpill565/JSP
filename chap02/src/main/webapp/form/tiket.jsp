<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2 style="position: absolute; font-family: 'Oswald,sans-serif',sans-serif;
	left: 40%;">�������� Ƽ����</h2>
	<form action ="http://localhost:8888/chap02/form/tiketting" method="GET">
	<table border="1"style="position: absolute; font-family: 'Oswald,sans-serif',sans-serif;
	left: 10%; top:13%">
		<tr style="background-color: blue; color: white">
			<th>����</th>
			<th>����</th>
			<th>û�ҳ�</th>
			<th>����/���</th>
			<th>���</th>
			<th>������ư</th>
		</tr>
		
		<tr style="background-color: black; color: white">
		<td>�ְ���(1�ϱ�)</td>
		<td> 
			<input type = "checkbox" name ="tiket" value= "45000"/>45,000 <br />
		</td>
		<td> 
			<input type = "checkbox" name ="tiket" value= "38000"/>38,000 <br />
		</td>
		<td> 
			<input type = "checkbox" name ="tiket" value= "35000"/>35,000 <br />
		</td>
		<td rowspan='2'>
			<ul>
				<li>�������� ����</li>
				<li>������� ����Ʈ ����Ұ�</li>
			</ul>
		</td>
		<td rowspan='2'>
			<input type="submit" value="�����ϱ�" /> 
		</td>
		</tr>
		
		<tr style="background-color: black; color: white">
		<td>�߰���(17��~)*1,2��:16��~)</td>
		<td> 
			<input type = "checkbox" name ="tiket" value= "36000"/>36,000 <br />
		</td>
		<td> 
			<input type = "checkbox" name ="tiket" value= "33000"/>33,000 <br />
		</td>
		<td> 
			<input type = "checkbox" name ="tiket" value= "31000"/>31,000 <br />
		</td>
		</tr>
		
	</table >
	
	<table border ="1" style="position: absolute; top : 50%; left:20% ">
	<tr>
	<th>����</th>
	<th colspan="4">�ο���</th>
	</tr>
	<tr>
	<td>����</td>
	<td>
		<input id = "radio" type="radio" name="adult" value ="1" />1��
	</td>
	<td>
		<input id = "radio" type="radio" name="adult" value ="2" />2��
	</td>
	<td>
		<input id = "radio" type="radio" name="adult" value ="3" />3��
	</td>
	<td>
		<input id = "radio"  type="radio" name="adult" value ="4" />4��
	</td>
	</tr>
	<tr>
	<td>û�ҳ�</td>
	<td>
		<input type="radio" name="teenager" value ="1" />1��
	</td>
	<td>
		<input type="radio" name="teenager" value ="2" />2��
	</td>
	<td>
		<input type="radio" name="teenager" value ="3" />3��
	</td>
	<td>
		<input type="radio" name="teenager" value ="4" />4��
	</td>
	</tr>
	<tr>
	<td>����</td>
	<td>
		<input type="radio" name="child" value ="1" />1��
	</td>
	<td>
		<input type="radio" name="child" value ="2" />2��
	</td>
	<td>
		<input type="radio" name="child" value ="3" />3��
	</td>
	<td>
		<input type="radio" name="child" value ="4" />4��
	</td>
	</tr>

	</table>
	<input style = "position: absolute; top : 70%; left:20%" type="submit" value="�����ϱ�" /> 
	
	</form>
	
	<script>
		const document.getElementById('radio');
	</script>

</body>
</html>