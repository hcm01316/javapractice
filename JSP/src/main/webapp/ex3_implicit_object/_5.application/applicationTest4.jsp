<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.Enumeration" %>
<!DOCTYPE html>
<html>

<head>
<title>Application Test - 초기화 파라미터 읽어오기 </title>
	<link rel="stylesheet"
	href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

</head>
<body>
    <h2>초기화 파라미터 목록</h2>
    <ul>
    <%
    	Enumeration<String> initParamEnum = application.getInitParameterNames();
    	
    	while (initParamEnum.hasMoreElements()) {
    		String initParamName = initParamEnum.nextElement();
    	
    	%>
    
    	<li>
    		<%=initParamName %> = 
    		<%= application.getInitParameter(initParamName) %>
		</li>
   <%
    	}
   %>
    </ul>
	</body>
</html>