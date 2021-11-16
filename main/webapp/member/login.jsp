<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	String siteURL = (String)request.getAttribute("siteURL");
	String naverCodeURL = (String)request.getAttribute("naverCodeURL");
	String kakaoCodeURL = (String)request.getAttribute("kakaoCodeURL");
%>
<c:set var="siteURL" value="<%=siteURL%>" />
<c:set var="naverCodeURL" value="<%=naverCodeURL%>" />
<c:set var="kakaoCodeURL" value="<%=kakaoCodeURL%>" />
<link href='<%=siteURL%>/resources/css/member.css' rel='stylesheet' style='text/css' />

	<div class="loginbox">
		<div class='title'>로그인</div>
		<form name='frmLogin' id='frmLogin' method="post" action="${siteURL}/member/login" target="ifrmHidden" autocomplete="off">
			<input type="text" name="memId" placeholder="아이디">
			<input type="password" name="memPw" placeholder="비밀번호">
			
			<input type="submit" value="로그인">
			<div class='join_link'>
				<a href="${siteURL}/member/join">회원가입</a>
			</div>
			<div class="snsline">
				SNS 로그인
			</div>
		<br>

			<a href="${naverCodeURL}">
				<img src="${siteURL}/resources/image/naverlogin_btn.png" >
			</a>
			<a href="${kakaoCodeURL}">
				<img src="${siteURL}/resources/image/kakaologin_btn.png" >
			</a>
		</form>
	</div>