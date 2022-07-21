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
	left: 40%;">에버랜드 티켓팅</h2>
	<form action ="http://localhost:8888/chap02/form/tiketting" method="GET">
	<table border="1"style="position: absolute; font-family: 'Oswald,sans-serif',sans-serif;
	left: 10%; top:13%">
		<tr style="background-color: blue; color: white">
			<th>종류</th>
			<th>대인</th>
			<th>청소년</th>
			<th>소인/경로</th>
			<th>비고</th>
			<th>결제버튼</th>
		</tr>
		
		<tr style="background-color: black; color: white">
		<td>주간권(1일권)</td>
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
				<li>에버랜드 입장</li>
				<li>입장권은 스마트 예약불가</li>
			</ul>
		</td>
		<td rowspan='2'>
			<input type="submit" value="결제하기" /> 
		</td>
		</tr>
		
		<tr style="background-color: black; color: white">
		<td>야간권(17시~)*1,2월:16시~)</td>
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
	<th>구분</th>
	<th colspan="4">인원수</th>
	</tr>
	<tr>
	<td>대인</td>
	<td>
		<input id = "radio" type="radio" name="adult" value ="1" />1명
	</td>
	<td>
		<input id = "radio" type="radio" name="adult" value ="2" />2명
	</td>
	<td>
		<input id = "radio" type="radio" name="adult" value ="3" />3명
	</td>
	<td>
		<input id = "radio"  type="radio" name="adult" value ="4" />4명
	</td>
	</tr>
	<tr>
	<td>청소년</td>
	<td>
		<input type="radio" name="teenager" value ="1" />1명
	</td>
	<td>
		<input type="radio" name="teenager" value ="2" />2명
	</td>
	<td>
		<input type="radio" name="teenager" value ="3" />3명
	</td>
	<td>
		<input type="radio" name="teenager" value ="4" />4명
	</td>
	</tr>
	<tr>
	<td>소인</td>
	<td>
		<input type="radio" name="child" value ="1" />1명
	</td>
	<td>
		<input type="radio" name="child" value ="2" />2명
	</td>
	<td>
		<input type="radio" name="child" value ="3" />3명
	</td>
	<td>
		<input type="radio" name="child" value ="4" />4명
	</td>
	</tr>

	</table>
	<input style = "position: absolute; top : 70%; left:20%" type="submit" value="결제하기" /> 
	
	</form>
	
	<script>
		const document.getElementById('radio');
	</script>

</body>
</html>