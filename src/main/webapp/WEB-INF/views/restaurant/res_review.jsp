<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>	<!-- 헤더 추가 -->
<link href="${cpath }/resources/css/res_css/res_review_style.css" rel="stylesheet"> <!-- css적용 -->
<c:set var="parking" value="${res.park_area  == 1 ? '주차가능' : '주차불가'}"/>
<c:set var="star_rating" value="${res.score / 5 * 100 }"/>
<section class="res_review">

<%@ include file="res_header.jsp" %>


	<section class="res_detail_menu">

		<p OnClick="location.href ='${cpath }/restaurant/res_detail/${res.idx }'" style="cursor:pointer">
			TOP
		</p>
		<p OnClick="location.href ='${cpath }/restaurant/res_img/${res.idx }'" style="cursor:pointer">
			사진
		</p>
		<p style="background-color: #FF7F50">
			<a>리뷰</a>
		</p>
		<p OnClick="location.href ='${cpath }/restaurant/res_map/${res.idx }'" style="cursor:pointer">
			확대지도
		</p>

	</section>
	
	<!-- ▲ 점포 상세 상단 공통부분 -->
	
	<section class="res_review_main">
		<section class="res_review_con">
			
			<c:if test="${empty reviews }">
				<p>등록된 리뷰가 없습니다</p>	
			</c:if>
			<c:forEach var="review" items="${reviews }">
			<c:set var="review_rating" value="${review.score / 5 * 100 }"/>
			<article class="res_review_list">
				<div class="res_review_pro">
					<img src="${cpath }/resources/img/profile.PNG">
					<p>
						${review.writer }
					</p>
				</div>
				<div class="res_review_score">
					<div class="res_review_rate_back">
					<!-- db연결 후 width: 별점 -->
			    		<span style="width: ${review_rating}%" class="res_review_rate_front"></span>
		    		</div>
		    		${review.score }
				</div>
				<div class="res_review_content">
					<p style="font-size: 12px">방문일 : ${review.visit_date }</p>
					<p>${review.content }</p>
				</div>
				<div class="res_review_reImg">
					<img src="${cpath }/resources/img/reImg1.png">
					<img src="${cpath }/resources/img/reImg2.jpg">
				</div>
			</article>
			<br>
			</c:forEach>
			
			<p OnClick="location.href ='${cpath }/review/review/${res.idx }'" 
				style="cursor:pointer" class="res_review_goTo">
				리뷰 모아보기 ->
			</p>
			
		</section>
		<aside class="res_review_ad">
			<img src="${cpath }/resources/img/restaurant/res_AD.jpg" class="res_review_ad">
		</aside>
	</section>

</section>
	
</body>
</html>