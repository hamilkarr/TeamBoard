<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String rootURL = (String)request.getAttribute("rootURL");
%>
<c:set var="rootURL" value="<%=rootURL%>" />

<script src="../resources/js/paging.js"></script>

<!-- 배너S -->
<div class="swiper mySwiper">
      <div class="swiper-wrapper">
        <div class="swiper-slide">
        	<img src='${rootURL}/resources/css/banner/banner0.jpeg'>
        </div>
        <div class="swiper-slide">
        	<img src='${rootURL}/resources/css/banner/banner1.jpeg'>
        </div>
        <div class="swiper-slide">
        	<img src='${rootURL}/resources/css/banner/banner2.jpeg'>
        </div>
        <div class="swiper-slide">
        	<img src='${rootURL}/resources/css/banner/banner3.jpeg'>
        </div>
      </div>
      <div class="swiper-pagination"></div>
</div>
<!-- 배너E -->
<!-- 게시판 목록S -->
<div class="inner_box">
	<h3>게시판 목록</h3>
	<div class="bord_tit">
		<ul class="tit_list">
			<li><a href="#">전체</a></li>
			<li class="tit_link"><a href="#">일반</a></li>
			<li class="tit_link"><a href="#">팁과 정보</a></li>
		</ul>
	</div>
	<table class="board_table">
		<thead>
			<tr class="table_tit">
				<th>구분</th>
				<th class="th_tit">제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody class="board_content">
		<c:forEach var="item" items="${list}">
			<tr class="tr_list">
					<td><c:out value="${item.status}"/></td>
					<td><c:out value="${item.postTitle}"/></td>
					<td><c:out value="${item.memId}"/></td>
					<td><c:out value="${item.regDt}"/></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	레벨 아이콘 예시..<i class='xi-naver-square'></i>
	<span class="material-icons">coronavirus</span>
	<span class="material-icons">stream</span>
	<span class="material-icons">workspace_premium</span>
	<span class="material-icons">transgender</span>
	<span class="material-icons">compost</span>
	<span class="material-icons">hive</span><br>
	배틀 그라운드 아이콘 ..
	<div>
		<span class="ico_board_tier silver"></span>
		<span class="ico_board_tier gold"></span>
		<span class="ico_board_tier platinum"></span>
		<span class="ico_board_tier bronze"></span>
             
		
	</div>
	<div id="board_bttom">
		<button class="write_btn" onclick="location.href='write'">
			글쓰기
		</button>
	</div>
</div>
<!-- 게시판 목록E -->