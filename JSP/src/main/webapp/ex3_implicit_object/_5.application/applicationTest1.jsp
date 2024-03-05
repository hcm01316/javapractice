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
	<table class="table table-striped">
		<tr>
			<td>Servlet API스펙의 버전 </td>
			<td><%=application.getMajorVersion() %>.
			<%=application.getMinorVersion() %></td>
			</tr>
			<tr>
				<td>컨테이너 이름과 버전</td>
				<td><%=application.getServerInfo()%></td>
			</tr>
			<tr>
				<td>웹 어플리케이션의 context경로</td>
				<td><%=application.getContextPath()%></td>
			</tr>
			<tr>
				<td>웹 어플리케이션의 실제 파일시스템 경로</td>
				<td><%=application.getRealPath("/")%></td>
			</tr>

	</table>


</div>
</body>
</html>