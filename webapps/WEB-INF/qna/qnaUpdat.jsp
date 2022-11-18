<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="<%=request.getContextPath() %>" />
<%-- <c:set var="path1" value="${pageContext.request.contextPath }" />   --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>QNA 수정하기</title>
<jsp:include page="/head.jsp" />
</head>
<body>
<jsp:include page="/header.jsp" />
  <section class="section">
    <div class="container">
      <h1 class="title">QNA 수정하기</h1>
      <form action="ModifyQnaProCtrl.do" method="post">
		<table class="table">
		   <tbody>
		    <tr>
		      <th>번호</th>
		      <td>
		      	<input type="text" class="input" name="no" id="no" value="${dto.no }" readonly />
		      </td>
		    </tr>
		    <tr>
		      <th>제목</th>
		      <td><input type="text" class="input" maxlength="120" name="title" id="title" placeholder="제목 입력" value="${dto.title }" required /></td>
		    </tr>
		    <tr>
		      <th>내용</th>
		      <td><textarea rows="8" cols="100" name="content" id="content" class="textarea" required>${dto.content }</textarea></td>
		    </tr>
		  </tbody>
		</table>
		<div class="buttons">
		  <button type="submit" class="button is-focused">글 수정</button>
		  <button type="reset" class="button is-focused">취소</button>
		  <a href="${path1 }/GetQnaListCtrl.do" class="button is-info">목록</a>
		</div>
	  </form>
    </div>
  </section>
<jsp:include page="/footer.jsp"></jsp:include>

</body>
</html>