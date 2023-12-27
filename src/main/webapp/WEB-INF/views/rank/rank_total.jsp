<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
<link href="${cpath }/resources/css/rank_css/rank_total_style.css" rel="stylesheet">
<c:set var="cate" value="${cate_list }"/>
<!-- css 폴더안에 정리해주세요 -->


<section class="rank_total">
	<h1 class="rank_total_title">평점 높은 전국 맛집 TOP10</h1>
	<section class="rank_total_main">
		
		<ol class="rank_total_board">
		<c:forEach var="res" items="${res_list}" varStatus="status">
		    <c:set var="star_rating" value="${res.score / 5 * 100 }"/>
		    <li class="rank_total_res">
		        <a href="${cpath}/restaurant/res_detail/${res.idx}" class="rank_total_topRes">
		            <div>
		                <img class="rank_total_medal" src="${cpath}/resources/img/rank/ranking${status.index < 4 ? status.index + 1 : 4}.png">
		            </div>
		            <p class="rank_total_block"><img class="rank_detail_resImg" src="${cpath}/resources/img/restaurant/res_repImg/${res.photo}"></p>
		            <p>${res.name}</p>
		            <p>${res.category}</p>
		            <div class="rank_total_rating">
		                <div class="rank_total_rate_back">
		                    <!-- db연결 후 width: 별점 -->
		                    <span style="width: ${star_rating}%" class="rank_total_rate_front"></span>
		                </div>
		                <b class="rank_total_score">${res.score}</b>
		            </div>
		        </a>
		    </li>
</c:forEach>
		</ol>
		<p class="rank_total_toArea" 
			OnClick="location.href ='${cpath}/search/sc_detail?address='" 
			style="cursor:pointer">
			지도에서 맛집 찾기 →
		</p>
	</section>
	
</section>

</body>
</html>