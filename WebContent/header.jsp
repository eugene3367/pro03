<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar" role="navigation" aria-label="main navigation">
  <div class="navbar-brand">
    <a class="navbar-item" href="<%=request.getContextPath() %>/">
      <img src="<%=request.getContextPath() %>/resource/logo.png" width="112" height="28">
    </a>

    <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
    </a>
  </div>
  
  <div id="navbarBasicExample" class="navbar-menu">
    <div class="navbar-start">
	<div class="navbar-item has-dropdown is-hoverable">
		<a class="navbar-link">관광명소</a>
		<div class="navbar-dropdown">
			 <a class="navbar-item">관광명소</a>
			 <a class="navbar-item">담양슬로시티</a>
			 <a class="navbar-item">담양오방길</a>          
		</div>
	</div>
	<div class="navbar-item has-dropdown is-hoverable">
		<a class="navbar-link">테마관광</a>
		<div class="navbar-dropdown">
			 <a class="navbar-item">일정별</a>
			 <a class="navbar-item">권역별</a>
			 <a class="navbar-item">웰빙코스</a>          
		</div>
	</div>
	<div class="navbar-item has-dropdown is-hoverable">
		<a class="navbar-link">문화예술</a>
		<div class="navbar-dropdown">
			 <a class="navbar-item">담양의인물</a>
			 <a class="navbar-item">송강 문학기행</a>
			 <a class="navbar-item">담빛영화관</a>          
		</div>
	</div>
	<div class="navbar-item has-dropdown is-hoverable">
		<a class="navbar-link">인문학기행</a>
		<div class="navbar-dropdown">
			 <a class="navbar-item">담양별빛ㆍ달빛야행(夜行)</a>
			 <a class="navbar-item">담양에서일주일여행하기</a>
			 <a class="navbar-item">문화유산</a>          
		</div>
	</div>
	<div class="navbar-item has-dropdown is-hoverable">
		<a class="navbar-link">관광가이드</a>
		<div class="navbar-dropdown">
			 <a class="navbar-item" href="<%=request.getContextPath() %>/GetNoticeListCtrl.do">공지사항</a>
			 <a class="navbar-item">여행문의</a>
			 <a class="navbar-item">Contact</a>          
		</div>
	</div> 
  </div>
  <div class="navbar-end">
    <div class="navbar-item">
      <div class="buttons">
        <a class="button is-primary" href="<%=request.getContextPath() %>/user/join.jsp">
          <strong>Sign up</strong>
        </a>
        <a class="button is-light" href="<%=request.getContextPath() %>/user/login.jsp">
          Log in
        </a>
      </div>
    </div>
  </div>
</div>
</nav>