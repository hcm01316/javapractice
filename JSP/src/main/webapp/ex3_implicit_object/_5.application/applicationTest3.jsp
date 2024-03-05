<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    	<li>
    		logEnabled = <%= application.getInitParameter("logEnabled") %>
		</li>
		<li>
			debugLevel = <%= application.getInitParameter("debugLevel") %>
    	</li>
 
    
    </ul>
	
	</body>
</html>