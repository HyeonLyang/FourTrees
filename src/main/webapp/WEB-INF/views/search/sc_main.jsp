<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link rel="stylesheet" href="${cpath }/resources/css/search_css/sc_main.css">

<c:set var="imgPath" value="${cpath }/resources/img/search"></c:set>
<c:set var="moveDetail" value="${cpath }/search/sc_detail?address"></c:set>
<c:set var="moveCate" value="${cpath }/search/sc_category?category"></c:set>

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
					<li><a href="${moveDetail }=서울"><img src="${imgPath }/서울 야경.jpg"></a></li>
					<li><a href="${moveDetail }=부산"><img src="${imgPath }/부산 일러스트.jpg"></a></li>
				</ul>
			</div>
			<div>
				<ul class="sc_img2">
					<li><a href="${moveDetail }=제주"><img src="${imgPath }/제주 일러스트.jpg"></a></li>
					<li><a href="${moveDetail }=강원"><img src="${imgPath }/강원도 사진.png"></a></li>
					<li><a href="${moveDetail }=서울"><img src="${imgPath }/서울일러스트.jpg"></a></li>
				</ul>
			</div>
		</div>
		<div class="sc_area" id="sc_cate">
			<div>
				<h3><a href="${moveCate }=백반">카테고리별로 찾기</a></h3>
				<hr>
			</div>
			<div>
				<ul class="sc_img2">
					<li><a href="${moveCate }=백반"><img src="${imgPath }/백반.png"></a></li>
					<li><a href="${moveCate }=고기"><img src="${imgPath }/고기.jpg"></a></li>
					<li><a href="${moveCate }=찌개"><img src="${imgPath }/찌개.jpg"></a></li>
				</ul>
			</div>
			<div>
				<ul class="sc_img2">
					<li><a href="${moveCate }=양식"><img src="${imgPath }/양식.jpg"></a></li>
					<li><a href="${moveCate }=패스트"><img src="${imgPath }/패스트푸드.jpg"></a></li>
					<li><a href="${moveCate }=분식"><img src="${imgPath }/분식.jpg"></a></li>
				</ul>
			</div>
			<div>
				<ul class="sc_img2">
					<li><a href="${moveCate }=치킨"><img src="${imgPath }/남원통닭.jpg"></a></li>
					<li><a href="${moveCate }=일식"><img src="${imgPath }/일식.jpg"></a></li>
					<li><a href="${moveCate }=중식"><img src="${imgPath }/중식.jpg"></a></li>
				</ul>
				<ul class="sc_img2">
					<li><img src="${imgPath }/찌개.jpg"></li>
					<li><img src="${imgPath }/일식.jpg"></li>
					<li><img src="${imgPath }/중식.jpg"></li>
				</ul>
			</div>
		</div>
	</div>
	
	<div class="ad_back">
		<article>
			<ul class="sc_total">
				<li><span>###</span>건의 맛집</li>
				<li><span>###</span>건의 리뷰</li>
			</ul>
		</article>
		<div>
			<ul class="sc_ad">
				<li><img alt="" src="${imgPath }/광고1.png"></li>
				<li><img alt="" src="${imgPath }/광고2.png"></li>
			</ul>
		</div>
	</div>


</section>

<%@ include file="../footer.jsp" %>