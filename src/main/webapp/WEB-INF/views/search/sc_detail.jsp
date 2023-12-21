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
					<td><label for="sort">정렬</label> <select>
							<option value="sort">기본</option>
							<option value="sort_view">조회수 순</option>
							<option value="sort_rp">댓글순</option>
							<option value="sort_star">별점순</option>
							<option value="sort_book">별점순</option>
					</select> <label>주차장</label> <select>
							<option value="parking">전체</option>
							<option value="can-pk">주차 가능</option>
							<option value="cant-pk">주차 불가능</option>
					</select></td>
				</tr>
				<tr class="sc_result">
					<td colspan="3">검색어 | 지역 - ${add } | 카테고리 - ${cate } | 총 검색 맛집
						: (${tt } 건)</td>
				</tr>
<<<<<<< HEAD

			</table>
		</div>
		<div class="sc_list">
			<table>
				<c:forEach var="row" items="${list }">
					<tr>
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
								<a href="${cpath }/restaurant/res_detail/${row.idx}">${row.name }</a>
								${row.cate_name }
							</p>
							<p>
							<hr>
							</p>
							<p>별점 ${row.score }</p>
							<p>가격대 ${row.price }</p>
							<p>주소 ${row.address }</p>
							<p>휴일 ${row.holiday }</p>
						</td>
					</tr>
				</c:forEach>
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
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=365d0574c8cc82de6a9be6716f6556f0&libraries=services"></script>
		<script>
// 		// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
// 		var infowindow = new kakao.maps.InfoWindow({zIndex:1});

// 		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
// 		    mapOption = {
// 		        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
// 		        level: 3 // 지도의 확대 레벨
// 		    };  

// 		// 지도를 생성합니다    
// 		var map = new kakao.maps.Map(mapContainer, mapOption); 

// 		// 장소 검색 객체를 생성합니다
// 		var ps = new kakao.maps.services.Places(); 

// 		// 키워드로 장소를 검색합니다
// 		ps.keywordSearch('서울특별시', placesSearchCB); 

// 		// 키워드 검색 완료 시 호출되는 콜백함수 입니다
// 		function placesSearchCB (data, status, pagination) {
// 		    if (status === kakao.maps.services.Status.OK) {

// 		        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
// 		        // LatLngBounds 객체에 좌표를 추가합니다
// 		        var bounds = new kakao.maps.LatLngBounds();

// 		        for (var i=0; i<data.length; i++) {
// 		            displayMarker(data[i]);    
// 		            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
// 		        }       

// 		        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
// 		        map.setBounds(bounds);
// 		    } 
// 		}

// 		// 지도에 마커를 표시하는 함수입니다
// 		function displayMarker(place) {
		    
// 		    // 마커를 생성하고 지도에 표시합니다
// 		    var marker = new kakao.maps.Marker({
// 		        map: map,
// 		        position: new kakao.maps.LatLng(place.y, place.x) 
// 		    });

// 		    // 마커에 클릭이벤트를 등록합니다
// 		    kakao.maps.event.addListener(marker, 'click', function() {
// 		        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
// 		        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
// 		        infowindow.open(map, marker);
// 		    });
// 		}
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
		    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		    level: 2 // 지도의 확대 레벨
		};  

		//지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption); 

		//주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();

		//주소로 좌표를 검색합니다
		geocoder.addressSearch('${row.address}', function(result, status) {

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
		        content: '<div class="res_map_infowin">${row.address}</div>'
		    });
		    infowindow.open(map, marker);

		    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		    map.setCenter(coords);
		} 
		});    
		</script>
	</article>

=======

			</table>
		</div>
		<c:set var="add" value="${list }"></c:set>
		<p>${add[0].address }</p>
		<p>${add[1].address }</p>
	<script>
		console.log(add);
		var addArr = [];
			for(var i=0; i<2; i++) {
				addArr.push('${add[i].address}');
			}
	</script>
		<div class="sc_list">
			<table>
				<c:forEach var="row" items="${list }">
					<tr>
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
								<a href="${cpath }/restaurant/res_detail/${row.idx}">${row.name }</a>
								${row.cate_name }
							</p>
							<p>
							<hr>
							</p>
							<p>별점 ${row.score }</p>
							<p>가격대 ${row.price }</p>
							<p>주소 ${row.address }</p>
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

	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
		    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		    level: 5 // 지도의 확대 레벨
		};  

	//지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 

	//주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();
	
>>>>>>> origin/master

	//주소로 좌표를 검색합니다
	for (i=0; i < addArr.length; i++) {
		geocoder.addressSearch(addArr[i], function(result, status) {
	
			// 정상적으로 검색이 완료됐으면 
			 if (status === kakao.maps.services.Status.OK) {
			
			    var coords = new kakao.maps.LatLng(result[i].y, result[i].x);
			
			    // 결과값으로 받은 위치를 마커로 표시합니다
			    var marker = new kakao.maps.Marker({
			        map: map,
			        position: coords
			    });
			
			    // 인포윈도우로 장소에 대한 설명을 표시합니다
			    var infowindow = new kakao.maps.InfoWindow({
			        content: '<div style="width:150px;text-align:center;padding:6px 0;">'+addArr[i]+'</div>'
			    });
			    infowindow.open(map, marker);
			
		// 	    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		// 	    map.setCenter(coords);
			} 
		});
	}

</script>
</section>

<script>
	function search() {
<<<<<<< HEAD
		var address = document.getElementsByName('address')[0].value;
=======
		var address = document.getElementsByName('address')[1].value;
>>>>>>> origin/master
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