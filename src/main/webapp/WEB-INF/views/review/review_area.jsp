<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp"%>
<link rel="stylesheet" href="${cpath }/resources/css/review.css">

<article class="review_map">	
	<h3>${param.area_name } <spring:message code="review.area1" text="default text" /> (6)</h3>

	<div id="map" style="width:1000px; height:400px;"></div>
	<!-- 여긴 식당의 정보를 나타내는 곳 -->
	<div class="near_res">
		<c:forEach var="row" items="${list }">
			<div class="res_item">
				<div class="res_img">
					<img src="${cpath }/resources/img/restaurant/res_repImg/${row.photo }">
				</div>				
				<div class="res_info1">
					<div class="res_name">					
						<b class="resname">${row.name }</b>
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
					<span class="add">${row.address }</span>			
				</div>
				
				<div class="res_category">
					<spring:message code="review.area2" text="default text" /> : ${row.category_name }
				</div>
				<div class="res_price">
					<spring:message code="review.area3" text="default text" /> : ${row.price }원
				</div>
				<div class="res_holiday">
					<c:if test="${row.holiday == '연중무휴' }">					
						<b style="background-color: rgb(236, 21, 21);">
							<spring:message code="review.area4" text="default text" />
						</b>
					</c:if>
					<c:if test="${row.holiday != '연중무휴'}">					
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
			<a href="${cpath }/search/sc_detail?address=${param.area_name}">
				<spring:message code="review.area5" text="default text" />
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
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8bc60e67620768f95cb992d64536023b&libraries=services"></script>
<script>
document.addEventListener("DOMContentLoaded", function() {
    // "add" 클래스를 가진 요소들을 모두 선택
    var addressElements = document.querySelectorAll(".add");
    // 주소 정보를 저장할 배열
    var addresses = [];
    
    // "resname" 클래스 요소들 모두 선택
    var nameElements = document.querySelectorAll(".resname");
    var names = [];
    
    // 각 요소의 텍스트를 배열에 추가
    addressElements.forEach(function(element) {
        addresses.push(element.textContent.trim());
    });
    // 상호명도 배열에 추가
    nameElements.forEach(function(element) {
    	names.push(element.textContent.trim());
    });
    
    // 지도 초기화 및 마커 표시 스크립트
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
        mapOption = {
            center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
            level: 6 // 지도의 확대 레벨
        };  

    // 지도를 생성합니다    
    var map = new kakao.maps.Map(mapContainer, mapOption);      
    
    // ================지도 컨트롤러==================
   	// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
    var mapTypeControl = new kakao.maps.MapTypeControl();

    // 지도에 컨트롤을 추가해야 지도위에 표시됩니다
    // kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
    map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

    // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
    var zoomControl = new kakao.maps.ZoomControl();
    map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
    
   
    // 주소-좌표 변환 객체를 생성합니다
    var geocoder = new kakao.maps.services.Geocoder();

    // 각 주소에 대한 마커를 표시하는 함수
    function displayMarker(address, name) {
        // 주소로 좌표를 검색합니다
        geocoder.addressSearch(address, function(result, status) {
            // 정상적으로 검색이 완료됐으면 
            if (status === kakao.maps.services.Status.OK) {
                var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

                // 결과값으로 받은 위치를 마커로 표시합니다
                var marker = new kakao.maps.Marker({
                    map: map,
                    position: coords
                });

                // 인포윈도우로 동적으로 내용을 표시합니다
                var infowindow = new kakao.maps.InfoWindow({
                    content: '<div style="width:150px;text-align:center;padding:3px; font-size:12px;">' + name + '</div>'
                });

                // 특정 이벤트(예: 페이지 로딩 시)에 인포윈도우를 열어둘 수 있습니다.
                infowindow.open(map, marker);

                // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                map.setCenter(coords);
            } 
        });
    }

    // 각 주소에 대한 마커를 표시
    addresses.forEach(function(address, index) {
        displayMarker(address, names[index]);
    });    
  
});
</script>
</body>
</html>