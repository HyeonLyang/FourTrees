<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp"%>
<link rel="stylesheet" href="${cpath }/resources/css/review.css">

<article class="review_map">
	<h3>청담동 근처 맛집 (6)</h3>

	<div id="map" style="width:1000px; height:400px;"></div>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8bc60e67620768f95cb992d64536023b"></script>
		<script>
			var container = document.getElementById('map');
			var options = {
				center: new kakao.maps.LatLng(35.166966, 129.132976),
				level: 3
			};
	
			var map = new kakao.maps.Map(container, options);
			
			// 마커가 표시될 위치입니다 
			var markerPosition  = new kakao.maps.LatLng(35.166966, 129.132976); 

			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
			    position: markerPosition
			});

			// 마커가 지도 위에 표시되도록 설정합니다
			marker.setMap(map);

			// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
			// marker.setMap(null);   
		</script>
	<!-- 여긴 식당의 정보를 나타내는 곳 -->
	<div class="near_res">
		<c:forEach var="row" items="${list }">
			<div class="res_item">
				<div class="res_img">
					<img src="${cpath }/resources/img/review/중식.jfif">
				</div>				
				<div class="res_info1">
					<div class="res_name">					
						<b>${row.name }</b>
					</div>
					
					<div class="res_park">					
						<c:if test="${row.park_area == 1}">					
							<h5 style="background-color: rgb(38, 159, 38);">주차</h5>					
						</c:if>
						
						<c:if test="${row.park_area == 2}">					
							<h5 style="background-color: rgb(236, 21, 21);">불가</h5>					
						</c:if>
					</div>
				</div>
				<div class="res_address">
					${row.address }			
				</div>
				
				<div class="res_category">
					종류 : ${row.category }
				</div>
				<div class="res_price">
					가격 : ${row.price }원
				</div>
				<div class="res_holiday">
					<c:if test="${row.holiday == '연중무휴' }">					
						<b style="background-color: rgb(236, 21, 21);">
							${row.holiday }
						</b>
					</c:if>
					<c:if test="${row.holiday != '연중무휴' }">					
						<b style="background-color: rgb(38, 159, 38);">
							${row.holiday }
						</b>
					</c:if>
				</div>
				<div class="res_operation">
					open : ${row.op_hour }
				</div>
				<div class="res_icon">
					<div class="res_view">
						<img src="${cpath }/resources/img/review/eye.jpg">
						<h5>${row.view_count }</h5>
					</div>
					<div class="res_star">
						<img src="${cpath }/resources/img/review/star.png">
						<h5>${row.score }</h5>
					</div>
					<div class="res_phone">
						<img src="${cpath }/resources/img/review/phone.jpg">
						<h5>${row.res_phone }</h5>
					</div>
				</div>
			</div>
		</c:forEach>				
	</div>
	
	<div class="more_see">
		<p>
			<a href="${cpath }/search/sc_detail?address=서울">
				>>더보기
			</a>
		</p>
	</div>
	
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
</article>
</body>
</html>