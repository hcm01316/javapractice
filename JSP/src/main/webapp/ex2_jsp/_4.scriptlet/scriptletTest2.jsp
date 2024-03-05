<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%!
	public int sum() {
		int total = 0;
		for (int i = 1; i <= 100; i++) {
			total += i;
		}
		return total;
		}
%>
<%
	String str = "1부터 100까지의 합";
%>


<!DOCTYPE html>
<html>
	<head>
	<style>
	span {color : red;}
	</style>
	</head>
<body>
	<h1><%=str%>은 <span><%=sum()%>입니다 </span></h1>
	<h1><%=str%>에 3을 곱하면 <span><%=sum()*3%></span>이 됩니다. </h1>
	<h1><%=str%>1000으로 나누면 <span><%=sum()/1000.0%></span>이 됩니다. </h1>
</body>
</html>	