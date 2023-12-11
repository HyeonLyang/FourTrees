<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>	<!-- 헤더 추가 -->
<link href="${cpath }/resources/css/res_css/res_map_style.css" rel="stylesheet"> <!-- css적용 -->

<section class="res_map">

<%@ include file="res_header.jsp" %>


	<section class="res_detail_menu">

		<p OnClick="location.href ='${cpath }/restaurant/res_detail/${res.idx }'" style="cursor:pointer">
			TOP
		</p>
		<p OnClick="location.href ='${cpath }/restaurant/res_img/${res.idx }'" style="cursor:pointer">
			사진
		</p>
		<p OnClick="location.href ='${cpath }/restaurant/res_review/${res.idx }'" style="cursor:pointer">
			리뷰
		</p>
		<p style="background-color: #FFDACC">
			<a>확대지도</a>
		</p>

	</section>
	

	<section class="res_map_main">
		<section class="res_map_con">
			<section class="res_map_map">
				 <div id="res_map_map">
				
				</div>
			</section>
			<table class="res_map_txt">
				<tr>
					<th>주소</th>
					<td>
						<p>${res.name }</p>
						<p class="res_map_romAdd">${res.rom_name }</p>
					</td>
				</tr>
			</table>
		</section>
		<aside>
			<img src="${cpath }/resources/img/restaurant/res_AD.jpg" class="res_map_ad">
		</aside>


	</section>

</section>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=365d0574c8cc82de6a9be6716f6556f0&libraries=services"></script>
<script>
var mapContainer = document.getElementById('res_map_map'), // 지도를 표시할 div 
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

    // 인포윈도우로 장소에 대한 설명을 표시합니다
    var infowindow = new kakao.maps.InfoWindow({
        content: '<div class="res_map_infowin">${res.name}</div>'
    });
    infowindow.open(map, marker);

    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
    map.setCenter(coords);
} 
});    
</script>
	
</body>
</html>