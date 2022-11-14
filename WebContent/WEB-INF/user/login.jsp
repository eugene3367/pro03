<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="${request.getContextPath() }" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>로그인 페이지</title>
    <jsp:include page="/head.jsp" />
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="${path1 }/header.jsp" />
		<div class="content container" id="content">
			<h2 class="title">로그인</h2>
			<form name="frm1" id="frm1" action="<%=request.getContextPath() %>/UserLoginCtrl" method="post">
				<table class="table">
					<tbody>
						<tr>
							<th>아이디</th>
							<td>
								<input type="text" name="userId" id="userId" placeholder="아이디 입력" class="form-control" autofocus required />
							</td>
						</tr>
						<tr>
							<th>비밀번호</th>
							<td><input type="password" name="userPw" id="userPw" placeholder="비밀번호 입력" class="form-control" required /></td>
						</tr>
					</tbody>
				</table>
				<div class="btn-group">
					<input type="submit" name="submit-btn" class="btn btn-info" value="로그인">
					<input type="reset" name="reset-btn" class="btn btn-info" value="취소">
					<a href="<%=request.getContextPath() %>/user/join.jsp" class="btn btn-danger">회원가입</a>
				</div>
			</form>	
		</div>
	<jsp:include page="${path1 }/footer.jsp" />
</body>
</html>