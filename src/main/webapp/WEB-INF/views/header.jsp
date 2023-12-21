<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
                <c:if test="${empty user }">				
					<div class="top-menu1">
						<a href="${cpath }/account/signUp">
						<img src="${cpath }/resources/img/signup.png"> signUp</a>
					</div>
					<div class="top-menu2">
						<a href="${cpath }/account/login">
						<img src="${cpath }/resources/img/login.png"> logIn</a>
					</div>
				</c:if>
				 <c:if test="${not empty user }">                
	                <div class="top-menu1">
						<a href="${cpath }/myPage/bookmark">
						<img src="${cpath }/resources/img/signup.png"> ${user.nick }</a>
					</div>
					<div class="top-menu2">
						<a href="${cpath }/account/logout">
						<img src="${cpath }/resources/img/login.png"> logout</a>
					</div>
                </c:if>
            </section>
            
            <section class="header-bottom">
                <p>"한국의 맛집여행, 레스토랑 가이드"</p>
                <div><!-- 빈칸 space betweend 용 --></div>
                <div class="menu">
                	<!-- 메뉴-검색창 -->
					<form action="${cpath }/search/sc_detail" method="get">
<<<<<<< HEAD
=======
					
>>>>>>> origin/master
					    <div class="search">
					    	<select id="type">
								<option value="address">지역</option>
								<option value="category">카테고리</option>
							</select>
					        <input id="submit_type" name="address" placeholder="위치나 카테고리를 입력하세요.">
					    	<select id="type">
								<option value="address">지역</option>
								<option value="category">카테고리</option>
							</select>
					        <input id="submit_type" name="address" placeholder="위치나 카테고리를 입력하세요.">
					        <button>검색</button>
					    </div>
					</form>
					<script>
					    // 옵션 변경 시 이벤트 리스너 추가
					    document.getElementById("type").addEventListener("change", function () {
					        var type = this.value; // 선택된 옵션의 값
					
					        // input의 name 동적으로 변경
					        document.getElementById("submit_type").setAttribute("name", type);
					    });
					</script>
					
					<script>
					    // 옵션 변경 시 이벤트 리스너 추가
					    document.getElementById("type").addEventListener("change", function () {
					        var type = this.value; // 선택된 옵션의 값
					
					        // input의 name 동적으로 변경
					        document.getElementById("submit_type").setAttribute("name", type);
					    });
					</script>
					
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
<div class="menu_container" onclick="toggle3()">
	<div class="menu_button" id="menu_button">
		<img src="${cpath }/resources/img/menu.png">
	</div>
<script src="${cpath }/resources/js/header.js"></script>
	<div class="menu_icons">
		<div class="menu_scroll">
			<div class="menu_back">
				<div class="menu_back2"> 	
					<table>
						<tr>
						<td><a href="${cpath }/search/sc_main"><img src="${cpath }/resources/img/header/icon1.png"></a></td>
						<td><a href="${cpath }/rank/rank_main"><img src="${cpath }/resources/img/header/icon2.png"></a></td>
						<td><a href="${cpath }/mbti/mbti_main"><img src="${cpath }/resources/img/header/icon3.png"></a></td>
						<td><a href="${cpath }/recommend/roulette"><img src="${cpath }/resources/img/header/icon4.png"></a></td>
						<td><a href="${cpath }/photo/photo_main"><img src="${cpath }/resources/img/header/icon5.png"></a></td>
						<td><a href="${cpath }/support/sup_main"><img src="${cpath }/resources/img/header/icon6.png"></a></td>
						
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