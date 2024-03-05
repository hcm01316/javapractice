<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>파라미터 출력</title>
<style>
table{margin: auto; width: 500px; height: 200px;
border: 1px solid black;
}
h1,h3{
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
<%
String id = request.getParameter("id");
String name = request.getParameter("name");
application.setAttribute("id", id);
application.setAttribute("name", name);
%>

		<h1>영역과 속성 테스트</h1>
		<h3><%= application.getAttribute("name") %>님 반갑습니다. </h3>
		<h3><%= application.getAttribute("name") %>님의 아이디는 <%= application.getAttribute("id") %>입니다 </h3>
<form action="attributeTest1_Form2.jsp" method = "post">
		<table>
		<tr>
		<td colspan="2">Session 영역에 저장할 내용들</td>
		</tr>
		<tr>
		<td>e-mail 주소</td><td><input type="text" name = "email"></td>
		</tr>
		<tr>
		<td>집 주소</td><td><input type="text" name = "address"></td>
		</tr>
		<tr>
		<td>전화번호</td><td><input type="text" name = "tel"></td>
		</tr>
		<tr>
			<td colspan="2"><button type ="submit" class="submitbtn">전송</button></td>
		</tr>
		</table>
		<%
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String tel = request.getParameter("tel");
		session.setAttribute("email", email);
		session.setAttribute("address", address);
		session.setAttribute("tel", tel);
		%>
</form>
</body>
</html>