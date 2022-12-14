<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="<%=request.getContextPath()%>" />
<%-- <c:set var="path1" value="${pageContext.request.contextPath }" />   --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>로그인</title>
<jsp:include page="../head.jsp" />
<style>
.title { padding-top:36px; padding-bottom:20px; }
</style>
</head>
<body>
<jsp:include page="../header.jsp" />
	<section class="section">
		<div class="container">
			<h2 class="title">로그인</h2>
			<form name="frm1" id="frm1" action="${path1 }/UserLoginCtrl.do" method="post" onsubmit="return joinCheck(this)">
				<table class="table">
					<tbody>
						<tr>
							<th>아이디</th>
							<td>
								<div class="from-row">
									<input type="text" name="id" id="id" placeholder="아이디 입력" class="input" autofocus required />
								</div>
								<div>
									<c:if test="${empty msg }">
										<p></p>
									</c:if>
									<c:if test="${not empty msg }">
										<p>${msg }</p>
									</c:if>
								</div>
							</td>
						</tr>
						<tr>
							<th>비밀번호</th>
							<td><input type="password" name="pw" id="pw" placeholder="비밀번호 입력" class="input" required /></td>
						</tr>
					</tbody>
				</table>
				<div class="buttons">
					<button type="submit" class="button is-focused">로그인</button>
					<button type="reset" class="button is-focused">취소</button>
					<a href="<%=request.getContextPath() %>/user/agree.jsp" class="button is-info">회원가입</a>
				</div>
			</form>	
		</div>
	</section>
<jsp:include page="../footer.jsp" />
</body>
</html>