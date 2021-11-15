<%@ page contentType="text/html; charset=utf-8" %>
<script src="../resources/js/paging.js"></script>
<div class="swiper mySwiper">
      <div class="swiper-wrapper">
        <div class="swiper-slide">
        	<img src='../resources/css/banner/kakao.jpeg'>
        </div>
        <div class="swiper-slide">Slide 2</div>
        <div class="swiper-slide">Slide 3</div>
        <div class="swiper-slide">Slide 4</div>
      </div>
      <div class="swiper-pagination"></div>
</div>
<div class="inner_box">
	<h3>게시판 목록</h3>
	<div class="bord_tit">
		<ul>
			<li>전체</li>
			<li class="tit_link">일반</li>
			<li class="tit_link">팁과 정보</li>
		</ul>
	</div>
	<table class="board_table">
		<thead>
			<tr>
				<th>구분</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
			</tr>
		</thead>
		<tbody id='board_content'>
		<jsp:include page="_list.jsp" />
		</tbody>
	</table>
	<div id="board_bttom">
		<a id="page" href="#">다음 페이지</a>
		<button>
			<a href="write">글쓰기</a>
		</button>
	</div>
</div>
