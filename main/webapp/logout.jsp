<%@page import="org.apache.catalina.deploy.LoginConfig"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
session.setAttribute("Username", null);
session.setAttribute("logout", "true");

response.sendRedirect("newindex.jsp");
%>
</body>
</html>