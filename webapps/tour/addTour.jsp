<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="<%=request.getContextPath() %>" />
<%-- <c:set var="path1" value="${pageContext.request.contextPath }" />   --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>장소 등록</title>
<jsp:include page="/head.jsp" />
</head>
<body>
<jsp:include page="/header.jsp" />
	<section class="section">
		<div class="columns is-full">
			<jsp:include page="../admin/sidebar.jsp" />
			<div class="column is-10">
				<h1 class="title">장소 등록</h1>
					<form name="frm1" id="frm1" action="${path1 }/AddTourCtrl.do" method="post" onsubmit="return tourCheck(this)">
					<div class="field">
						<lable class="label">분류</lable>
						<div class="select">
						    <select name="cate" id="cate" class="select" onchange="changeTourNo()" required>
							  	<option value="">선택</option>
							    <option value="A">관광명소</option>
							    <option value="B">문화예술</option>
							    <option value="C">인문학기행</option>
							    <option value="D">담양의 축제</option>
							    <option value="E">담양의 음식</option>
							    <option value="F">담양의 숙소</option>
							    <input type="hidden" id="tourno" name="tourno" value="">
						    </select> 						    
						</div>
					</div>
					<div class="field">
						<lable class="label">장소이름</lable>
						<div class="control has-icons-left has-icons-right">
					    <input class="input is-success" type="text" name="place" id="place" placeholder="장소 입력" required>
					    <span class="icon is-small is-left">
					      <i class="fas fa-user"></i>
					    </span>
					    <span class="icon is-small is-right">
					      <i class="fas fa-check"></i>
					    </span>
					    </div>
					    <p class="help is-success">장소명을 입력하세요</p>						
					</div>
					
					<div class="field">
					  <label class="label">장소 주요설명</label>
					  <div class="control has-icons-left has-icons-right">
					    <textarea class="textarea" name="comment1" id="comment1" cols="80" rows="8" maxlength="500" required></textarea>
					  </div>
					  <p class="help is-success">장소의 주요설명을 넣어 주시기 바랍니다.</p>
					</div>

					<div class="field">
					  <label class="label">장소 부가설명</label>
					  <div class="control has-icons-left has-icons-right">
					    <textarea class="textarea" name="comment2" id="comment2" cols="80" rows="8" maxlength="500"></textarea>
					  </div>
					  <p class="help is-success">장소의 부가설명을 넣어 주시기 바랍니다.</p>
					</div>
					
					<div class="field">
					  	<label class="label">주소</label>
					    <input type="text" name="address1" id="address1" class="input" style="margin-bottom:10px;" placeholder="기본 주소" >
					    <input type="text" name="address2" id="address2" class="input" style="margin-bottom:10px;" placeholder="상세 주소" >
					    <input type="text" name="postcode" id="postcode" class="input" style="margin-bottom:10px;" placeholder="우편 번호" >
					    <button id="post_btn" onclick="findAddr()" class="button is-info">우편번호 검색</button>
					</div>					
					
					
					<div class="field">
						<lable class="label">이미지 추가</lable>
						<div class="control">
							<input type="hidden" name="pic_ck1" id="pic_ck1" value="no"/>
							<button type="button" class="button is-link" onclick="imgUpload(1)">이미지 추가</button>
							<input type="hidden" name="pic1" id="pic1" value=""/>
						</div>
					</div>
					<div class="field is-grouped">
					  <div class="control">
					    <button type="submit" class="button is-link">장소 등록</button>
					  </div>
					  <div class="control">
					    <button type="reset" class="button is-link is-light">취소</button>
					  </div>
					</div>				
					</form>
					<script>
					function imgUpload(no){
						var tourno = document.frm1.cate.value;
						if(tourno==""){
							alert("카테고리를 선택하지 않으셨습니다.");
							return;
						}
						var win1 = window.open("${path1 }/tour/imgUpload.jsp?no="+no+"&tourno="+tourno, "win", "width=850, height=400");
					}
					
					function changeTourNo(){
						var cate = document.frm1.cate.value; 
						if(cate==""){
							alert("분류를 선택하지 않으셨습니다. 기본값인 A 카테고리로 진행합니다.");
							cate = "A";
						}
						//ajax로 현재 마지막 레코드의 번호를 불러옴
						$.ajax({
							url:"${path1 }/NoLoadCtrl.do",
							type:"post",
							dataType:"json",
							success:function(data){
								console.log(data.no);
								$("#tourno").val(cate + data.no);
							}
						});
					}
					</script>
					<script>
					function tourCheck(f){
						if(f.pic_ck1.value!="yes"){
							alert("이미지가 등록되어 있지 않습니다.");
							return;
						}
					}
					</script>
				<script>
				function findAddr() {
					new daum.Postcode({
						oncomplete: function(data) {
							console.log(data);
							var roadAddr = data.roadAddress;
							var jibunAddr = data.jibunAddress;
							document.getElementById("postcode").value = data.zonecode;
							if(roadAddr !== '') {
								document.getElementById("address1").value = roadAddr;				
							} else if(jibunAddr !== ''){
								document.getElementById("address1").value = jibunAddr;
							}
							document.getElementById("address2").focus();
							return;
						}
					}).open();
				}
				</script>
				<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>					
			</div>		
		</div>	
	</section>
<jsp:include page="/footer.jsp" />
</body>
</html>


















