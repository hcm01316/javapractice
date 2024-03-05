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
	<h1>���� ���� �� �޼��� ��� ��</h1>
	<table class="table table-striped">
		<tr>
			<td>�������</td>
			<%
				Cookie[] cookie = request.getCookies();
				if (cookie == null) {
			
			%>
			<td>��Ⱑ �������� �ʽ��ϴ�</td>
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
				<td>���� ID</td>
				<td><%=session.getId()%></td>
			</tr>
			<tr>
				<td>���� ��ȿ �ð�</td>
				<td><%=session.getMaxInactiveInterval()/60 + "��"%></td>
			</tr>
			<tr>
				<td>���� ����</td>
				<td>�Ӽ� "id"�� "hong" ���� <%session.setAttribute("id", "hong"); %></td>
			</tr>
			<tr>
				<td>���� ������ ��������</td>
				<td><%=session.getAttribute("id")%></td>
			</tr>
		

	</table>


</div>
</body>
</html>