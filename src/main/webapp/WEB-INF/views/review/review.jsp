<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
<link rel="stylesheet" href="${cpath }/resources/css/review.css">
<article>
	<div class="blank">
	<p>　</p>
</div>
</article>
<img class="frame4" src="${cpath }/resources/img/frame.png">
<section class="review_main">
	<!-- 리뷰 갯수 작성 -->
	<article class="re_title">	
		<div class="review_textarea">
			<h4>리뷰(${p.totalRestaurant })</h4>
			<h4>고객님들의 직접 작성하신 따끈한 후기와 평가를 들어보세요</h4>
		</div>
		
		<div>										
			<a href="${cpath }/review/review_write?res_idx=${param.res_idx }">			
				<img src="${cpath }/resources/img/review/review_write.png">
			</a>	
		</div>
	</article>
	
	<hr style="border: 2px solid black">
	
	<!-- 이미지 모아보는 곳 버튼을 누르면 움직인다 -->
	<div class="img_collection">
		<div class="img_collection_title">		
			<h4>이미지 모아보기</h4>
						
			<button class="left">&lt;</button>
			<button class="right">&gt;</button>			
		</div>
		
		<div class="food_img">			
			<c:forEach var="row" items="${img_list }">
				<div class="slider">				
					<img src="${cpath }/img/${row.res_name }/${row.img }">								
				</div>				
				<div class="slider_more">				
				<div class="more">
					<a href="${cpath }/review/img_popup?img=${p.totalRestaurant }&res_idx=${row.res_idx}">				
						<b>${p.totalRestaurant }</b><br>
						<i>더보기></i>
					</a>
				</div>
				</div>
			</c:forEach>			
		</div>
	</div>
	
	<hr style="border: 2px solid black">
	
	<!-- 리뷰와 사진 로고를 보여주는 코드 -->
	<article class="re_main">
	<c:forEach var="row" items="${list }">	
		<div class="main">
			<div class="mark">
				<img src="${cpath }/resources/img/review/기본 프로필.jpg">
			</div>
				<ul>
					<li>${row.writer }</li>
					<li>
						<div class="rate">
							<span style="width: ${row.score * 20}%" ></span>
						</div>	
						<b>${row.score }</b>				
					</li>
					<li>${row.content }</li>
					<li class="name_address">
						${row.res_name }<br>						
						<a href="${cpath }/review/review_area?area_name=${row.area}">
							<b>${row.res_address }</b>
						</a> 
					</li>
				</ul>
			<img src="${cpath }/img/${row.res_name }/${row.img }">
		</div>	
	</c:forEach>
	<!-- 식당 테이블 데이터 페이징 하는 곳 -->
	<ul class="re_paging">
		<c:if test="${p.prev }">			
			<li><a href="${cpath }/review/review?page=${p.begin - 1 }">이전</a></li>
		</c:if>
			
		<c:forEach var="i" begin="${p.begin }" end="${p.end }">
			<li><a href="${cpath }/review/review?page=${i }">${i }</a></li>
		</c:forEach>
			
		<c:if test="${p.next }">			
			<li><a href="${cpath }/review/review?page=${p.end + 1 }">다음</a></li>
		</c:if>
	</ul>	
	</article>
</section>
<script src="${cpath }/resources/js/img_move.js"></script>
</body>
</html>