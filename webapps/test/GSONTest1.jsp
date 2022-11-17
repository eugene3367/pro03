<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<%@ page import="com.google.gson.Gson" %>
<c:set var="path1" value="<%=request.getContextPath() %>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GSONTest1</title>
<jsp:include page="/head.jsp" />
</head>
<body>
<div class="container">
<%
	int[] arr = {10,20,30,40,50,60,70,80,90};

	Gson gson = new Gson();
	
	String jsonArrya = gson.toJson(arr);
%>
</div>
</body>
</html>