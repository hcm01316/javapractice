<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>파라미터 출력</title>
<style>
table{margin: auto; width: 500px; height: 200px;
border: 1px solid black;
}
h1{
text-align: center;
}
td{
text-align: center;
}
td:first-child{background-color: lightgreen;
}
td:nth-child(2n){background-color: yellow;
}
 input{ width: 95%; height: 80%; 
 }

</style>
</head>
<body>
		<h1>영역과 속성 테스트</h1>
		<table>
			<tr>
				<td colspan="2">Application 영역에 저장할 내용들</td>
			</tr>
			<tr>
				<td>이름</td>
				<td><%= application.getAttribute("name") %></td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><%= application.getAttribute("id") %></td>
		</table>
		<br>
		<table>
		<tr>
		<td colspan="2">Session 영역에 저장할 내용들</td>
		</tr>
		<tr>
		<td>e-mail 주소</td><td><%= session.getAttribute("email") %></td>
		</tr>
		<tr>
		<td>집 주소</td><td><%= session.getAttribute("address") %></td>
		</tr>
		<tr>
		<td>전화번호</td><td><%= session.getAttribute("tel") %></td>
		</tr>
		</table>
		

</body>
</html>