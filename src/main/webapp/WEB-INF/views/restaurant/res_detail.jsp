<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link href="${cpath }/resources/css/res_css/res_detail_style.css" rel="stylesheet">


<section class="res_detail">
	
<%@ include file="res_header.jsp" %>


	<section class="res_detail_menu">

		<p class="res_detail_menu_cu" style="background-color: #FF7F50">
			<a>TOP</a>
		</p>
		<p OnClick="location.href ='${cpath }/restaurant/res_img/${res.idx }'" style="cursor:pointer">
			사진
		</p>
		<p OnClick="location.href ='${cpath }/restaurant/res_review/${res.idx }'" style="cursor:pointer">
			리뷰
		</p>
		<p OnClick="location.href ='${cpath }/restaurant/res_map/${res.idx }'" style="cursor:pointer">
			확대지도
		</p>

	</section>
	
	<!-- ▲ 점포 상세 상단 공통부분 -->
	
<div class="res_detail_main">
	<section class="res_detail_select">
		<div class="res_detail_container">
			<article>
			<img src="${cpath }/resources/img/ex01.jpg" />
			<img src="${cpath }/resources/img/ex02.png" />
			<img src="${cpath }/resources/img/ex03.jpg" />
			<img src="${cpath }/resources/img/ex04.jpg" />
			<img src="${cpath }/resources/img/ex05.jpg" />
			</article>	
		</div>
	</section>
	<aside class="res_detail_ad">
		<img src="${cpath }/resources/img/restaurant/res_AD.jpg" class="res_detail_ad">
	</aside>
</div>
	<section class="res_detail_detail">
	<hr class="res_detail_hr">
	<h3>점포 정보(상세)</h3>
	
	<table class="res_detail_information">
		<tr>
			<th>가게 이름</th>
			<td>${res.name }</td>
		</tr>
		<tr>
			<th>카테고리</th>
			<td>${res.category }</td>
		</tr>
		<tr>
			<th>전화번호</th>
			<td>${res.res_phone }</td>
		</tr>
		<tr>
			<th>주소</th>
			<td>
				${res.address }
				<div id="res_detail_map" OnClick="location.href ='${cpath }/restaurant/res_map/${res.idx }'" style="cursor:pointer">
				
				</div>
			</td>
		</tr>
		<tr>
			<th>영업시간</th>
			<td>${res.op_hour }</td>
		</tr>
		<tr>
			<th>예산</th>
			<td>${res.price }</td>
		</tr>
		<tr>
			<th>주차장</th>
			<td>${parking }</td>
		</tr>
		<tr>
			<th>홈페이지</th>
			<td><a href="${res.link }" target="_blank">${res.link }</a></td>
		</tr>
	</table>
	
	</section>
</section>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=365d0574c8cc82de6a9be6716f6556f0&libraries=services"></script>
<script>
var mapContainer = document.getElementById('res_detail_map'), // 지도를 표시할 div 
mapOption = {
    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
    level: 2 // 지도의 확대 레벨
};  

//지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

//주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

//주소로 좌표를 검색합니다
geocoder.addressSearch('${res.address}', function(result, status) {

// 정상적으로 검색이 완료됐으면 
 if (status === kakao.maps.services.Status.OK) {

    var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

    // 결과값으로 받은 위치를 마커로 표시합니다
    var marker = new kakao.maps.Marker({
        map: map,
        position: coords
    });


    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
    map.setCenter(coords);
} 
});    
</script>

</body>
</html>