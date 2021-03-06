<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String pagingHtml = (String)request.getAttribute("pagingHtml");
String skey= request.getParameter("skey");
String sopt = request.getParameter("sopt");
%>
<c:set var="skey" value="<%=skey%>" />
<c:set var="sopt" value="<%=sopt%>" />
 
<!-- 게시판 목록S -->
<div class="inner_box">
  <h3>플레이어 게시판</h3>
  <div class="bord_tit">
    <ul class="tit_list">
      <li id="total" class="on"><a href="${rootURL}/board/list">전체</a></li>
      <li id="normal" class="tit_link">
      	<a href="${rootURL}/board/list?status=normal">일반</a>
      </li>
      <li id="tip" class="tit_link">
      	<a href="${rootURL}/board/list?status=tip">팁과 정보</a>
      </li>
    </ul>
  </div>
<!-- 검색 결과 박스. 평소에는 숨김 -->	
  <c:if test="${skey != null}" > 
	  <div class="search_resultBox">
	  	"<em class="sw"><%=skey%></em>" 에 대한 <em class="sw">${total}</em>개의 게시글이 검색되었습니다. &nbsp
	  	<a href="../board/list" class="link_back">돌아가기</a>
	  </div>
  </c:if>
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
      	<c:choose>
      		<c:when test="${item.isNotice == 1}">
      			<tr class="tr_list notice">
      		</c:when>
      		<c:otherwise>
        		<tr class="tr_list">
        	</c:otherwise>
        </c:choose>
          <td>
          <!-- 글 구분 -->
          	<c:choose>
	      		<c:when test="${item.status == 'normal'}">
	      			<c:out value="일반"/>
	      		</c:when>
	      		<c:when test="${item.status == 'tip'}">
	      			<c:out value="팁과 정보"/>
	      		</c:when>
	      		<c:otherwise>
	        		<c:out value="공지사항"/>
	        	</c:otherwise>
        	</c:choose>
          </td>
          <td>
          <!-- 글 제목 -->
            <a class="postNm" href="view?postNm=${item.postNm}">
            	<c:out value="${item.postTitle}" />
            	<c:if test="${item.commentCnt > 0}">
            	<span class='comment_cnt'>
            		[<fmt:formatNumber value="${item.commentCnt}" />]
            	</span>
            	</c:if>
            	<c:if test="${item.isNew}">
            		<i class='xi-naver-square'></i>
            	</c:if>
            </a>
          </td>
          <td>
          <!-- 유저 정보 -->
          	<div class="profile_popup" data-mem-id="${item.memId}" data-mem-lv="${item.memLv}">
	          <c:choose>
		     	<c:when test="${item.memLv == 'admin'}">
			      	<span class="ico_board_tier master"></span>
			      	<c:out value="관리자" />
		      	</c:when>
		      	<c:when test="${item.memLv == 'platinum'}">
			      	<span class="ico_board_tier platinum"></span>
			      	<c:out value="${item.memId}"/>
		      	</c:when>
		      	<c:when test="${item.memLv == 'gold'}">
			      	<span class="ico_board_tier gold"></span>
			      	<c:out value="${item.memId}"/>
		      	</c:when>
		      	<c:otherwise>
			      	<span class="ico_board_tier silver"></span>
			      	<c:out value="${item.memId}"/>
		       	</c:otherwise>
	        </c:choose>
	        </div>
          </td>
          <!-- 글 작성 시간 -->
          <td><c:out value="${item.regDtSt}" /></td>
          <td><fmt:formatNumber value="${item.viewCnt}" /></td>
      </c:forEach>
    </tbody>
  </table>	
  <div id="board_bttom">
    <%=pagingHtml%>
    <button class="write_btn" onclick="location.href='write'">글쓰기</button>
    <!-- 검색 박스 -->
    <form name="searchForm" method="get" action="?" class=wrap_search >
    	<select name="sopt" class="search">    	
    		<option value="postTitle" <c:if test="${sopt == 'postTitle'}">selected</c:if>> 제목 </option>
    		<option value="postTitle_content" <c:if test="${sopt == 'postTitle_content'}">selected</c:if>>제목 + 본문</option>
    		<option value="memId" <c:if test="${sopt == 'memId'}">selected</c:if>>작성자</option>
    	</select>
    	<input type="text" name="skey" class="search_box" value='${skey}' />
    	<button type="submit" class="search_btn"><i class="xi-search"></i></button>
    </form>
  </div>  
</div>
<!-- 게시판 목록E -->

<jsp:include page="_popup_profile.jsp" />