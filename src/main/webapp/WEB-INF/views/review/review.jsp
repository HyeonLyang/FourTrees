<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link rel="stylesheet" href="${cpath }/resources/css/review.css">
<article>
	<div class="blank">
	<p>　</p>
</div>
</article>
<div class="sqare6">
</div>
<section>
	<!-- 리뷰 갯수 작성 -->
	<article class="re_title">	
		<div class="review_textarea">
			<h4>리뷰(${p.totalRestaurant })</h4>
			<h4>고객님들의 직접 작성하신 따끈한 후기와 평가를 들어보세요</h4>
		</div>
		
		<div>
			<a href="${cpath }/review/review_write">			
				<img src="${cpath }/resources/img/review/review_write.png">
			</a>
		</div>
	</article>
	
	<hr style="border: 2px solid black">
	
	<!-- 이미지 모아보는 곳 버튼을 누르면 움직인다 -->
	<div class="img_collection">
		<div class="img_collection_title">		
			<h4>이미지 모아보기</h4>
						
			<button>&lt;</button>
			<button>&gt;</button>			
		</div>
		
		<div class="food_img">			
			<c:forEach var="i" begin="1" end="10">
				<div class="slider">				
					<img src="${cpath }/resources/img/review/중식.jfif">								
				</div>				
				<div class="slider_more">				
				<div class="more">
					<a href="#none" onclick="openPopup('${cpath}')">				
						<b>1,313</b><br>
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
					<li>
						강릉 짬뽕 순두부 동화가든						
						<a href="${cpath }/review/review_area">
							<b>강원 동해시</b>
						</a> 
					</li>
				</ul>
			<img src="${cpath }/resources/img/review/${row.img }">
		</div>	
	</c:forEach>
	<!-- 식당 테이블 데이터 페이징 하는 곳 -->
	<ul class="re_paging">
		<c:if test="${p.prev }">			
			<li><a href="${cpath }/area?page=${p.begin - 1 }">이전</a></li>
		</c:if>
			
		<c:forEach var="i" begin="${p.begin }" end="${p.end }">
			<li><a href="${cpath }/area?page=${i }">${i }</a></li>
		</c:forEach>
			
		<c:if test="${p.next }">			
			<li><a href="${cpath }/area?page=${p.end + 1 }">다음</a></li>
		</c:if>
	</ul>	
	</article>
	
	<!-- 최상단으로 올라가는 버튼 어느 정도 내려야 버튼이 생성됨 -->
	<button class="go-top">
		<svg xmlns="http://www.w3.org/2000/svg" 
			width="38" height="38" fill="currentColor"
	  		class="bi bi-arrow-up-circle-fill" viewBox="0 0 16 16">
		<path fill-rule="evenodd"
		    d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 
		    0zm-7.5 3.5a.5.5 0 0 1-1 0V5.707L5.354 7.854a.5.5 0 1 1-.708-.708l3-3a.5.5 0 0 1 
		    .708 0l3 3a.5.5 0 0 1-.708.708L8.5 5.707V11.5z" />
		</svg>
	</button>
</section>
<script src="${cpath }/resources/js/img_move.js"></script>
</body>
</html>