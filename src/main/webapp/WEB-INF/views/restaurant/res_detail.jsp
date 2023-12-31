<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
<link href="${cpath }/resources/css/res_css/res_detail_style.css" rel="stylesheet">


<section class="res_detail">
	
<%@ include file="res_header.jsp" %>


	<section class="res_detail_menu">

		<p class="res_detail_menu_cu" style="background-color: #FFDACC">
			<a>TOP</a>
		</p>
		<p OnClick="location.href ='${cpath }/restaurant/res_img/${res.idx }'" style="cursor:pointer">
			<spring:message code="res.detail1" text="default text" />
		</p>
		<p OnClick="location.href ='${cpath }/restaurant/res_review/${res.idx }'" style="cursor:pointer">
			<spring:message code="res.detail2" text="default text" />
		</p>
		<p OnClick="location.href ='${cpath }/restaurant/res_map/${res.idx }'" style="cursor:pointer">
			<spring:message code="res.detail3" text="default text" />
		</p>

	</section>
	
	<!-- ▲ 점포 상세 상단 공통부분 -->
	
<div class="res_detail_main">
	<section class="res_detail_select">
		<div class="res_detail_container">
			<img src="${cpath }/resources/img/restaurant/res_repImg/${res.photo }" />
		</div>
	</section>
	<aside class="res_detail_ad">
		<img src="${cpath }/resources/img/restaurant/res_AD.jpg" class="res_detail_ad">
	</aside>
</div>
	<section class="res_detail_detail">
	<hr class="res_detail_hr">
	<h3><spring:message code="res.main" text="default text" /></h3>
	
	<table class="res_detail_information">
		<tr>
			<th><spring:message code="res.list1" text="default text" /></th>
			<td>
				<p>${res.name }</p>
				<p class="res_detail_romName">${res.rom_name }</p>
			</td>
		</tr>
		<tr>
			<th><spring:message code="res.list2" text="default text" /></th>
			<td>${res.category }</td>
		</tr>
		<tr>
			<th><spring:message code="res.list3" text="default text" /></th>
			<td>${res.res_phone }</td>
		</tr>
		<tr>
			<th><spring:message code="res.list4" text="default text" /></th>
			<td>
				<p>${res.address }</p>
				<p>${res.rom_address }</p>
				<div id="res_detail_map" OnClick="location.href ='${cpath }/restaurant/res_map/${res.idx }'" style="cursor:pointer">
				
				</div>
			</td>
		</tr>
		<tr>
			<th><spring:message code="res.list5" text="default text" /></th>
			<td>${res.op_hour }</td>
		</tr>
		<tr>
			<th><spring:message code="res.list6" text="default text" /></th>
			<td>${res.price }</td>
		</tr>
		<tr>
			<th><spring:message code="res.list7" text="default text" /></th>
			<td>${parking }</td>
		</tr>
		<tr>
			<th><spring:message code="res.list8" text="default text" /></th>
			<td><a href="${res.link }" target="_blank">${res.link }</a></td>
		</tr>
	</table>
	
	</section>
</section>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=365d0574c8cc82de6a9be6716f6556f0&libraries=services"></script>
<script>


//주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

//주소로 좌표를 검색합니다
geocoder.addressSearch('${res.address}', function(result, status) {

// 정상적으로 검색이 완료됐으면 
 if (status === kakao.maps.services.Status.OK) {

    var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

 // 이미지 지도에 표시할 마커입니다
 // 이미지 지도에 표시할 마커는 Object 형태입니다
 var marker = {
     position: coords
 };

 var staticMapContainer  = document.getElementById('res_detail_map'), // 이미지 지도를 표시할 div  
     staticMapOption = { 
         center: coords, // 이미지 지도의 중심좌표
         level: 3, // 이미지 지도의 확대 레벨
         marker: marker // 이미지 지도에 표시할 마커 
     };    

 // 이미지 지도를 생성합니다
 var staticMap = new kakao.maps.StaticMap(staticMapContainer, staticMapOption);


    
} 
});  

</script>

</body>
</html>