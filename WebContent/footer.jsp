<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<footer class="footer">
  <div class="content has-text-centered">
  	<div class="ft_logo"><img src="./data/footer_logo.gif" alt="하단로고"></div>
  	<div class="sel_box">
        <select name="sel" id="sel" class="sel" onchange="sel_link(this)">
            <option value="">부서별안내</option>
            <option value="">기획예산실</option>
            <option value="">행정과</option>
        </select>
    </div>
    <div class="sel_box">
        <select name="sel" id="sel" class="sel" onchange="sel_link(this)">
            <option value="">읍면 홈페이지</option>
            <option value="">담양읍</option>
            <option value="">봉산면</option>
        </select>
    </div>
    <div class="sel_box">
        <select name="sel" id="sel" class="sel" onchange="sel_link(this)">
            <option value="">관련사이트</option>
            <option value="">담양군의회</option>
            <option value="">문화관광</option>
        </select>
    </div>
    <div class="sel_box">
        <select name="sel" id="sel" class="sel" onchange="sel_link(this)">
            <option value="">유관기관</option>
            <option value="">담양경찰서</option>            
        </select>
    </div>    
    <div class="mid_box">
        <nav class="fnb">
            <a href="" class="dpc">저작권보호정책</a>
            <a href="" class="dpc">개인정보처리방침</a>
            <a href="" class="dpc">이메일무단수집거부</a>
        </nav>
        <p class="addr">
            (57339)전라남도 담양군 담양읍 추성로 1371 / 대표전화 061-380-3114<br></p>
        <p class="copyright">Copyright by Damyang-Gun. All Right Reserved.</p>
    </div>    
  </div>
  <script>
        function sel_link(sel) {
            location.href = sel.value;
        }
    </script>
</footer>