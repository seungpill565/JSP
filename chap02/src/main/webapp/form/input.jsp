<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Input</title>
</head>
<body>

	<h3># input tags</h3>
	
	<ul>
		<li>����ڰ� ���ϴ� ���� �Է��� �� �ִ� �±�</li>
		<li>type �Ӽ��� ���� �پ��� ������� ���� �Է��� �� �ִ�</li>
	</ul>
	
	<hr>
	
	<table border="1">
		<tr>
			<th>tpye</th>
			<th>���</th>
			<th>�뵵</th>
		</tr>
		<tr>
			<td>type = "text"</td>
			<td><input type ="text"/></td>
			<td>���̵�,�� ���� ��</td>
		</tr>
		>
		<tr>
			<td>type = "password"</td>
			<td><input type ="password"/></td>
			<td>��й�ȣ</td>
		</tr>
		<tr>
			<td>type = "email"</td>
			<td>
				<form>
					<input type ="email"/>
					<input type ="submit"/>
				</form>
			</td>
			<td>�̸���,��û�� �̸��� ���� �˻�</td>
		</tr>
		<tr>
			<td>type="submit"</td>
			<td><input type="submit" /></td>
			<td>��û��ư</td>
		</tr>
		<tr>
			<td>type="reset"</td>
			<td><input type="reset" /></td>
			<td>�ʱ�ȭ��ư</td>
		</tr>
		<tr>
			<td>type="button"</td>
			<td><input type="button" /></td>
			<td>��ɾ��� ��ư</td>
		</tr>
		<tr>
			<td>type="file"</td>
			<td><input type="file" /></td>
			<td>���� ���ε�, ������ ���� ���ε�</td>
		</tr>
		
		<tr>
			<td>type ="date"</td>
			<td><input type="date" /></td>
			<td>��¥</td>
		</tr>
		
			<tr>
			<td>type ="radio"</td>
			<td>
			<!-- ���� name �Ӽ����� �����صθ� �ϳ��� ������ �� �ִ�. -->
				<input type="radio" name = "gender" id="man"/>
				<label for="man">����</label> <br />
				<input type="radio" name = "gender" id="woman"/>
				<label for="woman">����</label> <br />
				<input type="radio" name = "gender" id = "etc"/>
				<label for="etc">�� ��</label> <br />
				</td>
			<td>�ϳ��� ����</td>
		</tr>
		
			<tr>
			<td>type ="checkbox"</td>
			<td>
				<input type="checkbox" name = "bop" id=" boggeum"/>
				<label for="boggeum">������</label> <br />
				<input type="checkbox" name = "bop" id="bibim"/>
				<label for="bibim">�����</label> <br />
				<input type="checkbox" name = "bop" id = "soy"/>
				<label for="soy">�����</label> <br />
			</td>
			<td>���� ����</td>
		</tr>
	
	</table>

</body>
</html>