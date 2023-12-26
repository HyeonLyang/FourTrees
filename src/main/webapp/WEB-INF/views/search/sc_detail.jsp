<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp"%>
<link rel="stylesheet"
	href="${cpath }/resources/css/search_css/sc_detail.css">
<c:set var="imgPath" value="${cpath }/resources/img/search"></c:set>

<section class="sc_detail">
	<article class="de_left">
		<div class="de_option">
			<%
				String category = request.getParameter("category");
				if (category == null) {
					category = "";
				}
				String address = request.getParameter("address");
				if (address == null) {
					address = "";
				}
			%>

			<table>
				<tr>
					<td>지역, 장소</td>

					<td><input name="address" value="<%=address%>"
						placeholder="지역, 장소 검색"></td>
					<td rowspan="3"><button onclick="search()">상세검색</button></td>
				</tr>
				<tr>
					<td>장르</td>

					<td><input name="category" value="<%=category%>"
						placeholder="백반,죽,국수"></td>
				</tr>
				<tr>
					<td>필터</td>
					<td class="filter">
						<a href="${cpath }/search/sc_view">조회수</a>
						<a href="${cpath }/search/sc_score">별점</a>
					</td>
				</tr>
				<tr class="sc_result">
					<td colspan="3">검색어 | 지역 - ${add } | 카테고리 - ${cate } | 총 검색 맛집
						: (${tt } 건)</td>
				</tr>
			</table>
		</div>

		<div class="sc_list">
			<table>
				<c:forEach var="row" items="${list }">
					<tr class="trtr">
						<c:choose>
							<c:when test="${not empty row.photo}">
								<td class="row_photo"><img src="${row.photo}"></td>
							</c:when>
							<c:otherwise>
								<td class="row_photo"><img src="${imgPath}/이미지없음.jpg"></td>
							</c:otherwise>
						</c:choose>
						<td>
							<p>
								<a href="${cpath }/restaurant/res_detail/${row.idx}">
									<span class="resname">${row.name }</span>
								</a>
								${row.cate_name }
							</p>
							<p>
							<hr>
							</p>
							<p>별점 ${row.score }</p>
							<p>가격대 ${row.price }</p>
							<p>주소 <span class="add">${row.address }</span></p>
							<p>휴일 ${row.holiday }</p>
						</td>
					</tr>
				</c:forEach>
				<c:set var="addlist" value="${list }"></c:set>
			</table>
		</div>
		<div class="sc_pagingBack">
			<div class="sc_paging">
				<ul>
					<c:set var="scPath"
						value="${cpath }/search/sc_detail?address=${add }&category=${cate }"></c:set>
					<li><a href="${scPath }&page=1">처음</a></li>
					<c:if test="${p.prev }">
						<li><a href="${scPath }&page=${p.begin - 1 }">이전</a></li>
					</c:if>

					<c:forEach var="i" begin="${p.begin }" end="${p.end }">
						<li><a href="${scPath }&page=${i }">${i }</a></li>
					</c:forEach>

					<c:if test="${p.next }">
						<li><a href="${scPath }&page=${p.end + 1 }">다음</a></li>
					</c:if>
					<li><a href="${scPath }&page=${p.totalPage }">끝</a></li>
				</ul>
			</div>
			<div class="sc_page">${rq } page/${p.totalPage } page</div>
		</div>
	</article>


	<!-- 카카오 맵 API 구현  -->
	<article class="de_right">
		<!-- 지도를 담을 공간 -->
		<div id="map"></div>
		
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
</section>

<script>
	function search() {
		var address = document.getElementsByName('address')[1].value;
		var category = document.getElementsByName('category')[0].value;

		var url = "${cpath}/search/sc_detail?";

		if (address) {
			url += "address=" + encodeURIComponent(address) + "&";
		}

		if (category) {
			url += "category=" + encodeURIComponent(category);
		}
		window.location.href = url;
	}
	
</script>
</body>
</html>