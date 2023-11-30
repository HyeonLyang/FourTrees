<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MZ(맛집) in Korea</title>
<link rel="stylesheet" href="${cpath }/resources/css/header.css">
<script src="${cpath }/resources/js/BacktoTop.js"></script>
</head>
<body>
<section class="header">
	<header>
            <section class="header-top">
            	<div class="logo">
                    <a href="${cpath }"><img src="${cpath }/resources/img/logo_yellow.png"></a>
                </div>
                <div class="top-menu1">
                	<a href="${cpath }"><img src="${cpath }/resources/img/signup.png"> signUp</a>
                </div>
                <div class="top-menu2">
                <a href="${cpath }"><img src="${cpath }/resources/img/login.png"> logIn</a>
                </div>
            </section>
            
            <section class="header-bottom">
            	<p></p>
                <p>"한국의 맛집여행, 레스토랑 가이드"</p>
                <div>
                </div>
                <!-- 메뉴-검색창 -->
                <div class="menu">
                    <div class="search">
                        <input name="search" placeholder="위치를 입력하세요.">
                        <button>검색</button>
                    </div>
            		<!-- 번역아이콘 -->
                    <div class="language-container">
                        <ul class="language">
                            <li><img src="${cpath }/resources/img/lang_kor.png"></li>
                            <li><img src="${cpath }/resources/img/lang_usa.png"></li>
                            <li><img src="${cpath }/resources/img/jang_jap.png"></li>
                            <li><img src="${cpath }/resources/img/lang_cha.png"></li>
                        </ul>
                    </div>
<!-- 메뉴 버튼 -->
<div class="menu_container">
	<div class="menu_button" id="menu_button">
		<img src="${cpath }/resources/img/menu.png">
	</div>
	
	<div class="menu_icons">
		<div class="menu_scroll">
			<div class="menu_back">
				<div class="menu_back2"> 	
					<table>
					<tr>
						<td><a href="${cpath }/myPage/bookmark"><img src="${cpath }/resources/img/icon1.png"></a></td>
						<td><a href="${cpath }/restaurant/res_detail/1001"><img src="${cpath }/resources/img/icon2.png"></a></td>
						<td><a href="${cpath }/recommend/roulette"><img src="${cpath }/resources/img/icon3.png"></a></td>
					</tr>
					<tr>
						<td><a href="${cpath }/rank/rank_main"><img src="${cpath }/resources/img/icon4.png"></a></td>
						<td><a href="${cpath }/review/review"><img src="${cpath }/resources/img/icon5.png"></a></td>
						<td><a href="${cpath }/support/notice"><img src="${cpath }/resources/img/icon6.png"></a></td>
					</tr>
					<tr>
						<td><a href="${cpath }/account/login"><img src="${cpath }/resources/img/icon7.png"></a></td>
						<td><a href="${cpath }/account/signUp"><img src="${cpath }/resources/img/icon8.png"></a></td>
						<td><a href="#"><img src="${cpath }/resources/img/icon9.png"></a></td>
					</tr>
					<tr>
						<td><a href="#"><img src="${cpath }/resources/img/icon10.png"></a></td>
						<td><a href="${cpath }/search/sc_main"><img src="${cpath }/resources/img/icon11.png"></a></td>
						<td><a href="#"><img src="${cpath }/resources/img/icon12.png"></a></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
                    
                </div>	
            </section>


	</header> 

<!-- 최상단으로 올라가는 버튼 어느 정도 내려야 버튼이 생성됨 -->
	<button class="go-top">
		<svg xmlns="http://www.w3.org/2000/svg" 
			width="38" height="38" fill="currentColor"
	  		class="bi bi-arrow-up-circle-fill" viewBox="0 0 16 16">
		<path fill-rule="evenodd"
		    d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 
		    0zm-7.5 3.5a.5.5 0 0 1-1 0V5.707L5.354 7.854a.5.5 0 1 1-.708-.708l3-3a.5.5 0 0 1 
		    .708 0l3 3a.5.5 0 0 1-.708.708L8.5 5.707V11.5z" />
		</svg>
	</button>
</section>