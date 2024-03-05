<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<head>
<title>Request Test3(requestTest3.jsp)</title>
	<link rel="stylesheet"
	href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

</head>
<body>
<div class="container">
	<h1>세션 설정 및 메서드 사용 법</h1>
	<table class="table table-striped">
		<tr>
			<td>쿠기정보</td>
			<%
				Cookie[] cookie = request.getCookies();
				if (cookie == null) {
			
			%>
			<td>쿠기가 존재하지 않습니다</td>
			<%
				} else {
					for (int i = 0; i < cookie.length; i++) {
			%>
			<td><%=cookie[i].getName()%>(<%=cookie[i].getValue()%>)
			&nbsp;&nbsp;</td>
			<%
					}
				}
			%>
			</tr>
			<tr>
				<td>세션 ID</td>
				<td><%=session.getId()%></td>
			</tr>
			<tr>
				<td>서버 유효 시간</td>
				<td><%session.setMaxInactiveInterval(10);%></td>
			</tr>
			<tr>
				<td>isNew() : 새로 생성된 세션이면</td>
				<td><%=session.isNew()%></td>
			</tr>
			<tr>
				<td>세션 설정값 가져오기</td>
				<td><%=session.getAttribute("id")%></td>
			</tr>
		

	</table>


</div>
</body>
</html>