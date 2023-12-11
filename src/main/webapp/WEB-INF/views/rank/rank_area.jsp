<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
<link href="${cpath }/resources/css/rank_css/rank_area_de_style.css" rel="stylesheet">
<c:set var="star_rating" value="${res.score / 5 * 100 }"/>

<section class="rank_detail">
	
	<section class="rank_detail_btns">
		<p class="rank_detail_btn">부산</p>
		<p class="rank_detail_btn">강원도</p>
		<p class="rank_detail_btn">제주</p>
	</section>
	
	<h1 class="rank_detail_title">서울 맛집 TOP10</h1>
	<section class="rank_detail_main">
		
		<ol class="rank_detail_board">
		<c:forEach var="res" items="${res_seoul }" varStatus="status">
			<li class="rank_detail_res">
				<div><img class="rank_detail_medal" src="${cpath }/resources/img/rank/medal${rank[status.index]}.png"></div>
				<a href="#" class="rank_detail_topRes">
					<p class="rank_detail_block"><!-- <img class="rank_detail_img" src="${cpath }/resources/img/ex05.jpg"> --></p>
					<p>${res.name }</p>
					<p>${res.category }</p>
					<div class="rank_detail_rating">
						<div class="rank_detail_rate_back">
						<!-- db연결 후 width: 별점 -->
				    		<span style="width: ${star_rating}%" class="rank_detail_rate_front"></span>
				    	</div>
						<b class="rank_detail_score">${res.score }</b>
					</div>
				</a>
			</li>
		</c:forEach>
		</ol>
		<p class="rank_detail_toArea" 
			OnClick="location.href ='#'" 
			style="cursor:pointer">
			지도에서 맛집 찾기 →
		</p>
	</section>
	
	<h1 class="rank_detail_title">부산 맛집 TOP10</h1>
	<section class="rank_detail_main">
		
		<ol class="rank_detail_board">
		<c:forEach var="res" items="${res_busan }" varStatus="status">
			<li class="rank_detail_res">
				<div><img class="rank_detail_medal" src="${cpath }/resources/img/rank/medal${rank[status.index]}.png"></div>
				<a href="#" class="rank_detail_topRes">
					<p class="rank_detail_block"><!-- <img class="rank_detail_img" src="${cpath }/resources/img/ex05.jpg"> --></p>
					<p>${res.name }</p>
					<p>${res.category }</p>
					<div class="rank_detail_rating">
						<div class="rank_detail_rate_back">
						<!-- db연결 후 width: 별점 -->
				    		<span style="width: ${star_rating}%" class="rank_detail_rate_front"></span>
				    	</div>
						<b class="rank_detail_score">${res.score }</b>
					</div>
				</a>
			</li>
		</c:forEach>
		</ol>
		<p class="rank_detail_toArea" 
			OnClick="location.href ='#'" 
			style="cursor:pointer">
			지도에서 맛집 찾기 →
		</p>
	</section>
	
	<h1 class="rank_detail_title">강원 맛집 TOP10</h1>
	<section class="rank_detail_main">
		
		<ol class="rank_detail_board">
		<c:forEach var="res" items="${res_kangwon }" varStatus="status">
			<li class="rank_detail_res">
				<div><img class="rank_detail_medal" src="${cpath }/resources/img/rank/medal${rank[status.index]}.png"></div>
				<a href="#" class="rank_detail_topRes">
					<p class="rank_detail_block"><!-- <img class="rank_detail_img" src="${cpath }/resources/img/ex05.jpg"> --></p>
					<p>${res.name }</p>
					<p>${res.category }</p>
					<div class="rank_detail_rating">
						<div class="rank_detail_rate_back">
						<!-- db연결 후 width: 별점 -->
				    		<span style="width: ${star_rating}%" class="rank_detail_rate_front"></span>
				    	</div>
						<b class="rank_detail_score">${res.score }</b>
					</div>
				</a>
			</li>
		</c:forEach>
		</ol>
		<p class="rank_detail_toArea" 
			OnClick="location.href ='#'" 
			style="cursor:pointer">
			지도에서 맛집 찾기 →
		</p>
	</section>
	
	<h1 class="rank_detail_title">제주 맛집 TOP10</h1>
	<section class="rank_detail_main">
		
		<ol class="rank_detail_board">
		<c:forEach var="res" items="${res_jeju }" varStatus="status">
			<li class="rank_detail_res">
				<div><img class="rank_detail_medal" src="${cpath }/resources/img/rank/medal${rank[status.index]}.png"></div>
				<a href="#" class="rank_detail_topRes">
					<p class="rank_detail_block"><!-- <img class="rank_detail_img" src="${cpath }/resources/img/ex05.jpg"> --></p>
					<p>${res.name }</p>
					<p>${res.category }</p>
					<div class="rank_detail_rating">
						<div class="rank_detail_rate_back">
						<!-- db연결 후 width: 별점 -->
				    		<span style="width: ${star_rating}%" class="rank_detail_rate_front"></span>
				    	</div>
						<b class="rank_detail_score">${res.score }</b>
					</div>
				</a>
			</li>
		</c:forEach>
		</ol>
		<p class="rank_detail_toArea" 
			OnClick="location.href ='#'" 
			style="cursor:pointer">
			지도에서 맛집 찾기 →
		</p>
	</section>
	
</section>

<script>
	
	const btnArr = document.getElementsByClassName('rank_detail_btn');
	const areaArr = document.getElementsByClassName('rank_detail_toArea');
	
	for(let i = 0; i < btnArr.length; i++){

		  btnArr[i].addEventListener('click',function(e){
		    e.preventDefault();
		    areaArr[i].scrollIntoView(true);
		  });

		}
	
</script>
	
</body>
</html>