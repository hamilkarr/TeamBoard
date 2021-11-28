<%@ page contentType="text/html; charset=utf-8" %>
<%@ page  import="com.models.member.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String rootURL = (String)request.getAttribute("rootURL");
	boolean isLogin = (Boolean)request.getAttribute("isLogin");
	Member member = (Member)request.getAttribute("member");
%>
<c:set var="rootURL" value="<%=rootURL%>" />
<c:set var="isLogin" value="<%=isLogin%>" />
<c:set var="member" value="<%=member%>" />

<div class="layout_width">
    <h3>플레이어 게시판</h3>
    <div class="view_head">
        <div class="head_tit">글 제목</div>
            <div class="info_head">
                <dl class="left">
                    <dt>작성자</dt>
                    <dd><a href=""> <c:out value="${member.memId}(아이디)" /></a></dd> <!-- a 태그 아이디 정보 팝업?(list처럼)  -->
                </dl>
                <dl class="right_f">
                    <dt>작성일</dt>
                    <dd>2021.11.25 오후 08:04</dd> <!-- dto -->
                </dl>     
                <dl class="right">
                    <dt>조회수</dt>
                    <dd>6</dd> 
                </dl>
            </div>
        </div>
        <div class="view_content">
            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
        </div>
        <div class="view_btns">
            <a href="" class="btn_list"></a>
            <c:choose>
                <c:when test=""> <!-- 본인 글일때 -->
                    <a href="">수정하기</a>
                </c:when>
                <c:otherwise>
                    <a href="">글쓰기</a>
                </c:otherwise>
            </c:choose>
        </div>
        <!-- 댓글입력창 -->
        <div class="comment">
            <div class="tit_cmt">
                <span>댓글</span>
                <span>2</span>
            </div>
        <div class="byte_info">
            <span>0</span>
            <span>/ 600 bytes (한글 300자) | </span>
            <a href="">댓글 운영정책</a>
        </div>
        <!-- 로그인 후 댓글 작성 가능 -> 알림창(로그인 필요, 로그인 go) 뜨고 로그인 페이지로 이동 -->
        <form class="write_cmt" action="">
            <textarea name="" id="" cols="30" rows="10">댓글 내용</textarea>
        </form>
        <c:choose>
            <c:when test="${isLogin}"> <!-- 로그인 O -->
                <div>댓글 작성 시 타인에 대한 배려와 책임을 담아주세요.</div>
            </c:when>
            <c:otherwise> <!-- 로그인 X -->
                <div>로그인후 이용하실 수 있습니다.</div>
            </c:otherwise>
        </c:choose>
        <!-- 댓글 list -->
        <div class="list_cmt">
            <div class="left_cmt">
                <i class="xi-trophy xi-x"></i>
                <div><c:out value="${member.memId}(아이디)" /></div> <!-- a 태그 아이디 정보 팝업?(list처럼)  -->
                <div>21.11.25</div> <!-- dto -->
            </div>
            <div class="right_cmt">
                <!-- 작성된 댓글 들어갈 공간 -->
            </div>
            <!-- 댓글 페이징 들어갈 자리-->
        </div>
        </div>
    </div>
