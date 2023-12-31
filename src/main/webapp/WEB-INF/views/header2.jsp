<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MZ(맛집) in Korea</title>
<script src="${cpath }/resources/js/BacktoTop.js"></script>
<link rel="stylesheet" href="${cpath }/resources/css/header2.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-nanum@1.0.0/css/font-nanum.min.css">
<style>
    body {
        font-family: 'Nanum Gothic', sans-serif;
    }
</style>
</head>
<body>
	<section class="header">
			<section class="header-bottom">
				<div class="logo">
					<a href="${cpath }"><img
						src="${cpath }/resources/img/logo_yellow.png"></a>
						<p class="header-title"><a href="${cpath }">"<spring:message code="header.title" text="default text" />"</a></p>
				</div>
				<!-- 메뉴-검색창 -->
				<div class="menu">
					<div class="sc_con">
						<div class="header2_search">
							<img class="sc2" onclick="toggleSearch()" src="${cpath }/resources/img/header/Search2.png">
						</div>
						<!-- 검색창 -->
						<div class="sc_input">
							<form action="${cpath }/search/sc_detail" method="get">
								<div>
							    	<select id="type">
										<option value="address"><spring:message code="header.search1-1" text="default text" /></option>
										<option value="category"><spring:message code="header.search1-2" text="default text" /></option>
									</select>
							        <input id="submit_type" name="address" placeholder="<spring:message code="header.search2" text="default text" />">
							        <button><spring:message code="header.search3" text="default text" /></button>
							    </div>
							</form>
						</div>
					</div>
					<!-- 번역아이콘 -->
					<div class="language-container" onclick="toggle2()">
					    <ul class="language">
					    	<li><img src="${cpath }/resources/img/header/trans.png"></a></li>
					        <li><a href="<c:url value="?lang=ko" />"><img src="${cpath }/resources/img/lang_kor.png"></a></li>
					        <li><a href="<c:url value="?lang=en" />"><img src="${cpath }/resources/img/lang_usa.png"></a></li>
					        <li><a href="<c:url value="?lang=jp" />"><img src="${cpath }/resources/img/jang_jap.png"></a></li>
					        <li><a href="<c:url value="?lang=zh" />"><img src="${cpath }/resources/img/lang_cha.png"></a></li>
					    </ul>
					</div>
					<!-- 메뉴 버튼 -->
					<div class="menu_container" onclick="toggle3()">
						<div class="menu_button" id="menu_button">
							<img src="${cpath }/resources/img/menu.png">
						</div>
				<div class="sub_container">
					<div class="sub_icons">
							<div class="sub_scroll">
								<div class="sub_back">
									<div class="sub_back2">
										<table>
											<tr>
												<td><a href="${cpath }/search/sc_main"><img
														src="${cpath }/resources/img/header/head1.png">
														<h5><spring:message code="header.menu1" text="default text" /></h5></a></td>
											</tr>
											<tr>
												<td><a href="${cpath }/rank/rank_main"><img
														src="${cpath }/resources/img/header/head2.png">
														<h5><spring:message code="header.menu2" text="default text" /></h5></a></td>
											</tr>
											<tr>
												<td><a href="${cpath }/mbti/mbti_main"><img
														src="${cpath }/resources/img/header/head3.png">
														<h5><spring:message code="header.menu3" text="default text" /></h5></a></td>
											</tr>
											<tr>
												<td><a href="${cpath }/recommend/roulette"><img
														src="${cpath }/resources/img/header/head4.png">
														<h5><spring:message code="header.menu4" text="default text" /></h5></a></td>
											</tr>
											<tr>
												<td><a href="${cpath }/photo/photo_main"><img
														src="${cpath }/resources/img/header/head5.png">
														<h5><spring:message code="header.menu5" text="default text" /></h5></a></td>
											</tr>
											<tr>
												<td><a href="${cpath }/support/sup_main"><img
														src="${cpath }/resources/img/header/head6.png">
														<h5><spring:message code="header.menu6" text="default text" /></h5></a></td>
											</tr>
											<c:if test="${empty user }">
											<tr>
												<td><a href="${cpath }/account/login"><img
														src="${cpath }/resources/img/header/head9.png">
														<h5><spring:message code="header.menu9" text="default text" /></h5></a></td>
											</tr>
											</c:if>
											<c:if test="${not empty user }"> 
											<tr>
												<td><a href="${cpath }/account/logout"><img
														src="${cpath }/resources/img/header/head10.png">
														<h5><spring:message code="header.menu10" text="default text" /></h5></a></td>
											</tr>
											</c:if>
											<tr>
												<td><a href="${cpath }/account/signUp"><img
														src="${cpath }/resources/img/header/head8.png">
														<h5><spring:message code="header.menu8" text="default text" /></h5></a></td>
											</tr>
										</table>
									</div>
								</div>
							</div>
						</div>
								</div>
				</div>
			</section>
		
		<!-- 최상단으로 올라가는 버튼 어느 정도 내려야 버튼이 생성됨 -->
		<button class="go-top">
			<svg xmlns="http://www.w3.org/2000/svg" width="38" height="38"
				fill="currentColor" class="bi bi-arrow-up-circle-fill"
				viewBox="0 0 16 16">
		<path fill-rule="evenodd"
					d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 
		    0zm-7.5 3.5a.5.5 0 0 1-1 0V5.707L5.354 7.854a.5.5 0 1 1-.708-.708l3-3a.5.5 0 0 1 
		    .708 0l3 3a.5.5 0 0 1-.708.708L8.5 5.707V11.5z" />
		</svg>
		</button>
	</section>
	
<script src="${cpath }/resources/js/header2.js"></script>