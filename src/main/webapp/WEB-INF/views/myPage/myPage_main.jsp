<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp"%>
<link rel="stylesheet" href="${cpath }/resources/css/account/myPage.css">  
<article class="myPage_art">
	<div class="profile">
		<div class="pro_img">
			<a href="${cpath }/myPage/img_change">			
				<img src="${cpath }/img/account/${user.img}"><br>
				<span><spring:message code="mypage1" text="default text" /></span>
			</a>
			<!-- <input name="upload" type="file" value="+"> --> 
			<div class="nick">			
				<h3>${user.nick } (${user.status })</h3>
				<h4>${user.nick }<spring:message code="mypage2" text="default text" /></h4>
			</div>
		</div>		
		