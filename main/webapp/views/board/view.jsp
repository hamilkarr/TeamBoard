<%@ page contentType="text/html; charset=utf-8" %>
<%@ page  import="com.models.member.*" %>
<%@ page import="com.models.board.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="layout_width">
    <h3>플레이어 게시판</h3>
    <div class="view_head">
        <div class="head_tit"><c:out value="${view.postTitle}"/></div>
            <div class="info_head">
                <dl class="left">
                    <dt>작성자</dt>
                    <dd>
                    <div class="profile_popup" data-mem-id="${view.memId}" data-mem-lv="${view.memLv}">
			         	<c:choose>
					     	<c:when test="${view.memLv == 'admin'}">
					      		<span class="ico_board_tier master"></span>
						      	<div class="user_id"><c:out value="관리자" /></div>
					      	</c:when>
					      	<c:when test="${view.memLv == 'platinum'}">
					      		<span class="ico_board_tier platinum"></span>
					      		<div class="user_id"><c:out value="${view.memId}"/></div>
					      	</c:when>
					      	<c:when test="${view.memLv == 'gold'}">
					      		<span class="ico_board_tier gold"></span>
					      		<div class="user_id"><c:out value="${view.memId}"/></div>
					      	</c:when>
					      	<c:otherwise>
					      		<span class="ico_board_tier silver"></span>
					      		<div class="user_id"><c:out value="${view.memId}"/></div>
					       	</c:otherwise>
				        </c:choose>
                    </div>
                    </dd> 
                </dl>
                <dl class="right_f">
                    <dt>작성일</dt>
                    <dd><c:out value="${view.regDt}" /></dd>
                </dl>     
                <dl class="right">
                    <dt>조회수</dt>
                    <dd>
                    	<fmt:formatNumber value="${view.viewCnt}" />
                    </dd> 
                </dl>
            </div>
        </div>
        <div class="view_content">${view.content}</div>
        <div class="view_btns">
            <a href="../board/list" class="btn_list"><i class="xi-bars xi-x"></i></a>
            <c:choose>
                <c:when test="${isLogin && (member.memId == view.memId || member.memLv == 'admin')}"> <!-- 본인 글일때 -->
                	<a class="btn_write del_cnt" href="delete?postNm=${view.postNm}" onclick="return confirm('정말 삭제하시겠습니까?');">삭제하기</a>
                    <a class="btn_write" href="edit?postNm=${view.postNm}">수정하기</a>
                </c:when>	
                <c:otherwise>
                    <a class="btn_write" onclick="location.href='write'">글쓰기</a>
                </c:otherwise>
            </c:choose>      
        </div>

        <!-- 댓글 -->
        <jsp:include page="_comment.jsp" />
        
        <!-- 프로필 -->
		<jsp:include page="_popup_profile.jsp" />
    </div>
