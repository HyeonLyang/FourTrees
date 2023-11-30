<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp" %>
<link href="${cpath }/resources/css/rank_css/rank_area_de_style.css" rel="stylesheet">
	
<section class="rank_detail">
	<h1>부산 맛집 TOP10</h1>
	<section class="rank_detail_main">
		
		<ol class="rank_detail_board">
		<c:forEach begin="1" end="10">
			<li class="rank_detail_res">
				<div><img class="rank_detail_medal" src="${cpath }/resources/img/bookmark.PNG"></div>
				<a href="#" class="rank_detail_topRes">
					<p><img class="rank_detail_img" src="${cpath }/resources/img/ex05.jpg"></p>
					<p>조스떡볶이</p>
					<p>분식</p>
					<p class="rank_detail_rating">
						<img class="rank_detail_star" src="${cpath }/resources/img/star.PNG">
						<b>4.54</b>
					</p>
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
	
</body>
</html>