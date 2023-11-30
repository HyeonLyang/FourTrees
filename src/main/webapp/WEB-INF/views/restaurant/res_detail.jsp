<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link href="${cpath }/resources/css/res_css/res_detail_style.css" rel="stylesheet">


<section class="res_detail">
	
<%@ include file="res_header.jsp" %>


	<section class="res_detail_menu">

		<p class="res_detail_menu_cu" style="background-color: #bd8f4d">
			<a>TOP</a>
		</p>
		<p OnClick="location.href ='${cpath }/restaurant/res_img/${res.idx }'" style="cursor:pointer">
			사진
		</p>
		<p OnClick="location.href ='${cpath }/restaurant/res_review/${res.idx }'" style="cursor:pointer">
			리뷰
		</p>
		<p OnClick="location.href ='${cpath }/restaurant/res_map/${res.idx }'" style="cursor:pointer">
			확대지도
		</p>

	</section>
	
	<!-- ▲ 점포 상세 상단 공통부분 -->
	
<div class="res_detail_main">
	<section class="res_detail_select">
		<div class="res_detail_container">
			<article>
			<img src="${cpath }/resources/img/ex01.jpg" />
			<img src="${cpath }/resources/img/ex02.png" />
			<img src="${cpath }/resources/img/ex03.jpg" />
			<img src="${cpath }/resources/img/ex04.jpg" />
			<img src="${cpath }/resources/img/ex05.jpg" />
			</article>	
		</div>
	</section>
	<aside class="res_detail_ad">
		<img src="${cpath }/resources/img/restaurant/res_AD.jpg" class="res_detail_ad">
	</aside>
</div>
	<section class="res_detail_detail">
	<hr class="res_detail_hr">
	<h3>점포 정보(상세)</h3>
	
	<table class="res_detail_information">
		<tr>
			<th>가게 이름</th>
			<td>${res.name }</td>
		</tr>
		<tr>
			<th>카테고리</th>
			<td>${res.category }</td>
		</tr>
		<tr>
			<th>전화번호</th>
			<td>${res.res_phone }</td>
		</tr>
		<tr>
			<th>주소</th>
			<td>${res.address }</td>
		</tr>
		<tr>
			<th>영업시간</th>
			<td>${res.op_hour }</td>
		</tr>
		<tr>
			<th>예산</th>
			<td>${res.price }</td>
		</tr>
		<tr>
			<th>주차장</th>
			<td>${parking }</td>
		</tr>
		<tr>
			<th>홈페이지</th>
			<td><a href="${res.link }" target="_blank">${res.link }</a></td>
		</tr>
	</table>
	
	</section>
</section>
</body>
</html>