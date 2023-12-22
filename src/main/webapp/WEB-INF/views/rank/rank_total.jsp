<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
<link href="${cpath }/resources/css/rank_css/rank_total_style.css" rel="stylesheet">
<c:set var="star_rating" value="${res.score / 5 * 100 }"/>
<c:set var="cate" value="${cate_list }"/>
<!-- css 폴더안에 정리해주세요 -->


<section class="rank_total">
	<h1 class="rank_total_title">평점 높은 전국 맛집 TOP10</h1>
	<section class="rank_total_main">
		
		<ol class="rank_total_board">
		<c:forEach var="res" items="${res_list }" varStatus="status">
			<li class="rank_total_res">
				<a href="${cpath }/restaurant/res_detail/${res.idx}" class="rank_total_topRes">
					<c:if test="${rank[status.index] < 4}">
						<div><img class="rank_total_medal" src="${cpath }/resources/img/rank/rankingN${rank[status.index] }.png"></div>
					</c:if>
					<c:if test="${rank[status.index] >= 4}">
						<div><img class="rank_total_medal" src="${cpath }/resources/img/rank/rankingN4.png"></div>
					</c:if>
					<p class="rank_total_block"><!-- <img class="rank_total_img" src="${cpath }/resources/img/ex05.jpg"> --></p>
					<p>${res.name }</p>
					<p>${res.category }</p>
					<div class="rank_total_rating">
						<div class="rank_total_rate_back">
						<!-- db연결 후 width: 별점 -->
				    		<span style="width: ${star_rating}%" class="rank_total_rate_front"></span>
				    	</div>
						<b class="rank_total_score">${res.score }</b>
					</div>
				</a>
			</li>
		</c:forEach>
		</ol>
		<p class="rank_total_toArea" 
			OnClick="location.href ='#'" 
			style="cursor:pointer">
			지도에서 맛집 찾기 →
		</p>
	</section>
	
	<c:set var="list" value="${res_list }"/>
	<c:set var="nlist" value="${name_list }"/>
	<c:set var="alist" value="${address_list }"/>
	
	<div id="map" style="height: 500px"></div>
	
</section>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8bc60e67620768f95cb992d64536023b&libraries=services"></script>
<script>

	var mapContainer = document.getElementById('map'), // 지도를 표시할 div
	mapOption = {
	  center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	  level: 3 // 지도의 확대 레벨
	};
	
	// 지도를 생성합니다
	var map = new kakao.maps.Map(mapContainer, mapOption);
	
	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();
	
	var positions = [
	{
	title: '${list[0].name}',
	address: '${list[0].address}'
	},
	{
		title: '${list[1].name}',
		address: '${list[1].address}'
	},
	{
		title: '${list[2].name}',
		address: '${list[2].address}'
	},
	{
		title: '${list[3].name}',
		address: '${list[3].address}'
	},
	{
		title: '${list[4].name}',
		address: '${list[4].address}'
	},
	{
		title: '${list[5].name}',
		address: '${list[5].address}'
	},
	{
		title: '${list[6].name}',
		address: '${list[6].address}'
	},
	{
		title: '${list[7].name}',
		address: '${list[7].address}'
	},
	{
		title: '${list[8].name}',
		address: '${list[8].address}'
	},
	{
		title: '${list[9].name}',
		address: '${list[9].address}'
	},
	];
	
	console.log(positions);
	
	// 지도를 재설정할 범위정보를 가지고 있을 LatLngBounds 객체를 생성합니다
	var bounds = new kakao.maps.LatLngBounds(); //추가한 코드
	
	positions.forEach(function (position) {
	// 주소로 좌표를 검색합니다
	geocoder.addressSearch(position.address, function(result, status) {
	
	// 정상적으로 검색이 완료됐으면
	if (status === kakao.maps.services.Status.OK) {
	
	var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
	
	// 결과값으로 받은 위치를 마커로 표시합니다
	var marker = new kakao.maps.Marker({
	map: map,
	position: coords
	});
	marker.setMap(map); //추가한 코드
	
	// LatLngBounds 객체에 좌표를 추가합니다
	bounds.extend(coords); //추가한 코드, 현재 코드에서 좌표정보는 point[i]가 아닌 coords이다.
	
	// 인포윈도우로 장소에 대한 설명을 표시합니다
	var infowindow = new kakao.maps.InfoWindow({
	content: '<div style="width:150px;text-align:center;padding:6px 0;">' + position.title + '</div>'
	});
	infowindow.open(map, marker);
	
	// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	// map.setCenter(coords); //제거한 코드
	setBounds(); //추가한 코드
	}
	});
	});
	function setBounds() { //추가한 함수
	// LatLngBounds 객체에 추가된 좌표들을 기준으로 지도의 범위를 재설정합니다
	// 이때 지도의 중심좌표와 레벨이 변경될 수 있습니다
	map.setBounds(bounds);
	}

</script>

</body>
</html>