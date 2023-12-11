<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
<link href="${cpath }/resources/css/rank_css/rank_category_style.css" rel="stylesheet">
<c:set var="star_rating" value="${res.score / 5 * 100 }"/>
	<!-- css 폴더안에 정리해주세요 -->
<section class="rank_category">
	<h1 class="rank_category_title">디저트 맛집 TOP10</h1>
	<section class="rank_category_main">
		
		<ol class="rank_category_board">
		<c:forEach var="res" items="${res_list1 }" varStatus="status">
			<li class="rank_category_res">
				<div><img class="rank_category_medal" src="${cpath}/resources/img/rank/medal${rank[status.index]}.png"></div>
				<a href="#" class="rank_category_topRes">
					<p><img class="rank_category_img" src="${cpath }/resources/img/ex05.jpg"></p>
					<p>${res.name }</p>
					<p>${res.category }</p>
					<div class="rank_category_rating">
						<div class="rank_category_rate_back">
						<!-- db연결 후 width: 별점 -->
				    		<span style="width: ${star_rating}%" class="rank_category_rate_front"></span>
				    	</div>
						<b>${res.score }</b>
					</div>
				</a>
			</li>
		</c:forEach>
		</ol>
		<p class="rank_category_toArea" OnClick="location.href ='#'" style="cursor:pointer">내 지역의 디저트 맛집 찾으러 가기 →</p>
	</section>
	
	<h1>중식 맛집 TOP10</h1>
	<section class="rank_category_main">
		
		<ol class="rank_category_board">
		<c:forEach var="res" items="${res_list2 }" varStatus="status">
			<li class="rank_category_res">
				<div><img class="rank_category_medal" src="${cpath}/resources/img/rank/medal${rank[status.index]}.png"></div>
				<a href="#" class="rank_category_topRes">
					<p><img class="rank_category_img" src="${cpath }/resources/img/ex05.jpg"></p>
					<p>${res.name }</p>
					<p>${res.category }</p>
					<div class="rank_category_rating">
						<div class="rank_category_rate_back">
						<!-- db연결 후 width: 별점 -->
				    		<span style="width: ${star_rating}%" class="rank_category_rate_front"></span>
				    	</div>
						<b>${res.score }</b>
					</div>
				</a>
			</li>
		</c:forEach>
		</ol>
		<p class="rank_category_toArea" OnClick="location.href ='#'" style="cursor:pointer">내 지역의 중식 맛집 찾으러 가기 →</p>
		
	</section>
	
</section>	
	
</body>
</html>