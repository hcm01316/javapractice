<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
h1,h3,div{
text-align: center;
}
</style>
<title>파라미터 출력</title>
</head>
<body>
			<%
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String tel = request.getParameter("tel");
		session.setAttribute("email", email);
		session.setAttribute("address", address);
		session.setAttribute("tel", tel);
		%>
		<h1>영역과 속성 테스트</h1>
		<h3><%= application.getAttribute("name") %>님의 정보가 모두 저장 되었습니다. </h3>
		<div>
		<a href="attributeTest1_Form3.jsp">확인하러 가기</a></div>
	
</body>
</html>