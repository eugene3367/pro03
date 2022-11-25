<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="path2" value="${pageContext.request.contextPath }" />
<div id="nav-group">
	<div class="container">
		<nav class="navbar" role="navigation" aria-label="main navigation">
		  <div class="navbar-brand">
		    <a class="navbar-item" id="logo2" href="<%=request.getContextPath() %>/">
		    <img alt="상단로고" src="./data/logo.png">
		    </a>
		
		    <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
		      <span aria-hidden="true"></span>
		      <span aria-hidden="true"></span>
		      <span aria-hidden="true"></span>
		    </a>
		  </div>		  
		  
		  <div id="navbarBasicExample" class="navbar-menu">
		    <div class="navbar-start" id="gnb">
		    <%-- ajax로 메뉴 로딩하여 추가하기 --%>
			<div class="navbar-item has-dropdown is-hoverable">
				<a href="${path2 }/GetTourCateListCtrl.do?cate=A" class="navbar-link">
				관광명소</a>
				<div class="navbar-dropdown cate" id="cate01">
					 <a class="navbar-item">용흥사계곡</a>
					 <a class="navbar-item">관방제림</a>
					 <a class="navbar-item">가마골용소</a>					          
				</div>
			</div>
			<div class="navbar-item has-dropdown is-hoverable">
				<a href="${path2 }/GetTourCateListCtrl.do?cate=B" class="navbar-link cate">
				문화예술</a>
				<div class="navbar-dropdown cate" id="cate02">
					 <a class="navbar-item">고하 송진우</a>
					 <a class="navbar-item">하서 김인후</a>
					 <a class="navbar-item">서하당 김성원</a>          
				</div>
			</div>
			<div class="navbar-item has-dropdown is-hoverable">
				<a href="${path2 }/GetTourCateListCtrl.do?cate=C" class="navbar-link cate">
				인문학기행</a>
				<div class="navbar-dropdown cate" id="cate03">
					 <a class="navbar-item">담양별빛달빛야행</a>
					 <a class="navbar-item">담양에서 일주일여행하기</a>					   
				</div>
			</div>
			<div  class="navbar-item has-dropdown is-hoverable">
				<a href="${path2 }/GetTourCateListCtrl.do?cate=D" class="navbar-link cate">
				담양의 축제</a>
				<div class="navbar-dropdown cate" id="cate04">
					 <a class="navbar-item">용면추월산 벚꽃축제</a>
					 <a class="navbar-item">담양대나무축제</a>
					  <a class="navbar-item">고서포도축제</a>						         
				</div>
			</div>
			<div  class="navbar-item has-dropdown is-hoverable">
				<a href="${path2 }/GetTourCateListCtrl.do?cate=E" class="navbar-link cate">
				담양의 음식</a>
				<div class="navbar-dropdown cate" id="cate05">
					 <a class="navbar-item">한우 떡갈비</a>
					 <a class="navbar-item">대통밥</a>
					 <a class="navbar-item">담양국수</a>							          
				</div>
			</div>			
			<div class="navbar-item has-dropdown is-hoverable">
				<a href="${path2 }/GetTourCateListCtrl.do?cate=F" class="navbar-link cate">
				담양의 숙소</a>
				<div class="navbar-dropdown cate" id="cate06">
					 <a class="navbar-item">힐링민박</a>
					 <a class="navbar-item">휴가림</a>
					 <a class="navbar-item">행복나드리 민박</a>          
				</div>
			</div> 			
			<div class="navbar-item has-dropdown is-hoverable single">
				<a class="navbar-link">함께하는 담양</a>
				<div class="navbar-dropdown single">
					 <a class="navbar-item" href="${path2 }/GetNoticeListCtrl.do">공지사항</a>
					 <a class="navbar-item" href="${path2 }/GetQnaListCtrl.do">묻고 답하기</a>
					 <a class="navbar-item" href="${path2 }/GetImpressListCtrl.do">이용후기</a>	
					 <a class="navbar-item" href="${path2 }/GetDatabankListCtrl.do">자료실</a>
					 <a class="navbar-item" href="${path2 }/impress/online.jsp">온라인 상담</a>			        
				</div>
			</div>
			<div class="navbar-item has-dropdown is-hoverable single">
				<a class="navbar-link">담양에 대하여</a>
				<div class="navbar-dropdown single">
					 <a class="navbar-item">담양소개</a>
					 <a class="navbar-item">담양 CI/BI</a>
					 <a class="navbar-item">담양홍보대사</a>
					 <hr class="navber-divider">
					 <a class="navbar-item">리플릿</a>	        
				</div>
			</div>			
		  </div>
		  
		  
		  <div class="navbar-end" id="tnb">
		    <div class="navbar-item">
		    	<c:if test="${empty sid }">
			      <div class="buttons">
			        <a class="button is-primary" href="${path2}/user/agree.jsp">
			          <strong>회원가입</strong>
			        </a>
			        <a class="button is-focused" href="${path2 }/user/login.jsp">
			         	로그인
			        </a>
			      </div>
				</c:if>
		  		<c:if test="${not empty sid }">
			      <div class="buttons">
			        <a class="button is-info" href="${path2}/UserInfoCtrl.do">
			          <strong>회원정보 보기</strong>
			        </a>
			        <a class="button is-focused" href="${path2 }/UserLogoutCtrl.do">
			          	로그아웃
			        </a>
			        <c:if test='${sid.equals("admin")}'>
			        <a class="button is-focused" href="${path2 }/AdminCtrl.do">관리자</a>
			        </c:if>
			      </div>
				</c:if>
		    </div>
		  </div>
		</div>
		</nav>
		<script>
		$(document).ready(function(){
			$.ajax({
				url:"${path2 }/MenuLoadCtrl.do",
				type:"POST",
				enctype:"UTF-8",
				datatype:"json",
				processData:false,
				contentType:false,
				cache:false,
				success:function(data){
					$(".navber-dropdown.cate").empty();
					var trans = $.parseJSON(data);
					$.each(trans, function(key, value){
						if(key=="data"){
							for(var i=0;i<value.length;i++){
								if(value[i].cate=="A"){
									$("#cate01").append("<a href='${path2 }/GetTourDetailCtrl.do?no="+value[i].no+"'>"+value[i].place+"</a>");
								} else if(value[i].cate=="B"){
									$("#cate02").append("<a href='${path2 }/GetTourDetailCtrl.do?no="+value[i].no+"'>"+value[i].place+"</a>");
								} else if(value[i].cate=="C"){
									$("#cate03").append("<a href='${path2 }/GetTourDetailCtrl.do?no="+value[i].no+"'>"+value[i].place+"</a>");
								} else if(value[i].cate=="D"){
									$("#cate04").append("<a href='${path2 }/GetTourDetailCtrl.do?no="+value[i].no+"'>"+value[i].place+"</a>");
								} else if(value[i].cate=="E"){
									$("#cate05").append("<a href='${path2 }/GetTourDetailCtrl.do?no="+value[i].no+"'>"+value[i].place+"</a>");
								} else if(value[i].cate=="F"){
									$("#cate06").append("<a href='${path2 }/GetTourDetailCtrl.do?no="+value[i].no+"'>"+value[i].place+"</a>");
								} 
							}
						}
					})
				}
			});
		})
		</script>
	</div>
</div>	