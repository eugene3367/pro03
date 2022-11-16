<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<%-- <c:set var="path1" value="${pageContext.request.contextPath }" />   --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSON Test1</title>
<jsp:include page="/head.jsp" />
</head>
<body>
	<h2 class="title">JSON(JavaScript Object Notation)</h2>
	<p>자바스크립스의 객체 형태로 데이터를 교환하는 방식</p>
	<div id="js"></div>
	<div id="con"></div>
	<div id="con2"></div>
	<script>$(document).ready(function(){
		var obj = {name:"고유진", age:32};
		$("#js").html("<p>이름 :"+"</p>");
		
	});
	</script>
	<script>
	$(document).ready(function(){
		var params = {name :"고유진"};
		$.ajax{{
			url:"${path1 }/JSONTest2.do",
			type:"post",
			dataType:"json",
			data:params,
			success.function(data){
				console.log(data);
				var user = data;
				$("#con2").html("이름 : "+user.name+", 점수 : "+user.point);
			}			
		}};
	});
	</script>
	<div id="con"></div>
</body>
</html>