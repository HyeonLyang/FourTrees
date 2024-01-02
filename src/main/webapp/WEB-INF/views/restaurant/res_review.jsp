<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>	<!-- 헤더 추가 -->
<link href="${cpath }/resources/css/res_css/res_review_style.css" rel="stylesheet"> <!-- css적용 -->
<c:set var="star_rating" value="${res.score / 5 * 100 }"/>
<section class="res_review">

<%@ include file="res_header.jsp" %>


	<section class="res_detail_menu">

		<p OnClick="location.href ='${cpath }/restaurant/res_detail/${res.idx }'" style="cursor:pointer">
			TOP
		</p>
		<p OnClick="location.href ='${cpath }/restaurant/res_img/${res.idx }'" style="cursor:pointer">
			<spring:message code="res.detail1" text="default text" />
		</p>
		<p style="background-color: #FFDACC">
			<a><spring:message code="res.detail2" text="default text" /></a>
		</p>
		<p OnClick="location.href ='${cpath }/restaurant/res_map/${res.idx }'" style="cursor:pointer">
			<spring:message code="res.detail3" text="default text" />
		</p>

	</section>
	
	<!-- ▲ 점포 상세 상단 공통부분 -->
	
	<section class="res_review_main">
		<section class="res_review_con">
			
			<c:if test="${empty reviews }">
				<p><spring:message code="res.review1" text="default text" /></p>	
			</c:if>
			<c:forEach var="review" items="${reviews }">
			<c:set var="review_rating" value="${review.score / 5 * 100 }"/>
			<article class="res_review_list">
				<div class="res_review_pro">
					<img src="${cpath }/img/account/${review.acc_img }" style="border-radius: 50px;">
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
					<p style="font-size: 12px"><spring:message code="res.review2" text="default text" /> : ${review.visit_date }</p>
					<p>${review.content }</p>
				</div>
				<div class="res_review_reImg">
					<c:forEach var="photo" items="${photo_list }">
						<c:if test="${photo.rev_idx == review.idx}">
							<img src="${cpath }/img/restaurant/${photo.res_name}/${photo.img_path}">
						</c:if>
					</c:forEach>
				</div>
			</article>
			<br>
			</c:forEach>
			
			<p OnClick="location.href ='${cpath }/review/review/${res.name }/${res.idx }'" 
				style="cursor:pointer" class="res_review_goTo">
				<spring:message code="res.review3" text="default text" />
			</p>
			
		</section>
		<aside class="res_review_ad">
			<img src="${cpath }/resources/img/restaurant/res_AD.jpg" class="res_review_ad">
		</aside>
	</section>

</section>
	
</body>
</html>