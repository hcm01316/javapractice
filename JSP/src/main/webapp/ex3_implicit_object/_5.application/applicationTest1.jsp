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
			<td>Servlet API������ ���� </td>
			<td><%=application.getMajorVersion() %>.
			<%=application.getMinorVersion() %></td>
			</tr>
			<tr>
				<td>�����̳� �̸��� ����</td>
				<td><%=application.getServerInfo()%></td>
			</tr>
			<tr>
				<td>�� ���ø����̼��� context���</td>
				<td><%=application.getContextPath()%></td>
			</tr>
			<tr>
				<td>�� ���ø����̼��� ���� ���Ͻý��� ���</td>
				<td><%=application.getRealPath("/")%></td>
			</tr>

	</table>


</div>
</body>
</html>