<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
<link rel="stylesheet" href="${cpath }/resources/css/search_css/sc_main.css">

<c:set var="imgPath" value="${cpath }/resources/img/search"></c:set>
<c:set var="moveDetail" value="${cpath }/search/sc_detail?address"></c:set>
<c:set var="moveDetail2" value="${cpath }/search/sc_detail?address=서울&category"></c:set>

<section class="sc_main">
	<div class="sc_back">
		<div  class="sc_title">
			<div>
				<h1>전국의 맛집 찾기</h1>
			</div>
		</div>
		<div class="sc_area">
			<div>
				<h3><a href="${moveDetail }=서울">지역명으로 찾기</a></h3>
				<hr>
			</div>
			<div>
				<ul class="sc_img1">
					<li><a href="${moveDetail }=서울"><img src="${imgPath }/서울전경.jpg"></a></li>
					<li><a href="${moveDetail }=부산"><img src="${imgPath }/부산전경.jpg"></a></li>
				</ul>
			</div>
			<div>
				<ul class="sc_img2">
					<li><a href="${moveDetail }=제주"><img src="${imgPath }/제주전경.jpg"></a></li>
					<li><a href="${moveDetail }=강원"><img src="${imgPath }/강원도전경.jpg"></a></li>
					<li><a href="${moveDetail }=서울"><img src="${imgPath }/경주명소.jpg"></a></li>
				</ul>
			</div>
		</div>
		<div class="sc_area" id="sc_cate">
			<div>
				<h3><a href="${moveDetail2 }=백반">카테고리별로 찾기</a></h3>
				<hr>
			</div>
			<div>
				<ul class="sc_img2">
					<li><a href="${moveDetail2 }=백반"><img src="${imgPath }/백반.png"></a></li>
					<li><a href="${moveDetail2 }=고기"><img src="${imgPath }/고기.jpg"></a></li>
					<li><a href="${moveDetail2 }=찌개"><img src="${imgPath }/찌개.jpg"></a></li>
				</ul>
			</div>
			<div>
				<ul class="sc_img2">
					<li><a href="${moveDetail2 }=양식"><img src="${imgPath }/양식.jpg"></a></li>
					<li><a href="${moveDetail2 }=패스트"><img src="${imgPath }/패스트푸드.jpg"></a></li>
					<li><a href="${moveDetail2 }=분식"><img src="${imgPath }/분식.jpg"></a></li>
				</ul>
			</div>
			<div>
				<ul class="sc_img2">
					<li><a href="${moveDetail2 }=치킨"><img src="${imgPath }/남원통닭.jpg"></a></li>
					<li><a href="${moveDetail2 }=일식"><img src="${imgPath }/일식.jpg"></a></li>
					<li><a href="${moveDetail2 }=중식"><img src="${imgPath }/중식.jpg"></a></li>
				</ul>
				<ul class="sc_img2">
					<li><a href="${moveDetail2 }=카페"><img src="${imgPath }/카페.jpg"></a></li>
					<li><img src="${imgPath }/일식.jpg"></li>
					<li><img src="${imgPath }/중식.jpg"></li>
				</ul>
			</div>
		</div>
	</div>
	
	<div class="ad_back">
		<div>
			<ul class="sc_ad">
				<li><img alt="" src="${imgPath }/광고1.png"></li>
				<li><img alt="" src="${imgPath }/광고2.png"></li>
			</ul>
		</div>
	</div>


</section>

<%@ include file="../footer.jsp" %>