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
	<form action="attributeTest1_Form1.jsp" method="post">
		<table>
			<tr>
				<td colspan="2">Application 영역에 저장할 내용들</td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td colspan="2"><button type="submit" class="submitbtn">전송</button></td>
			</tr>
		</table>
		<%
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		application.setAttribute("name", name);
		application.setAttribute("id", id);
		%>
	</form>

</body>
</html>