<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
<link rel="stylesheet" href="${cpath }/resources/css/search_css/sc_detail.css">
<c:set var="imgPath" value="${cpath }/resources/img/search"></c:set>

<section class="sc_detail">
	<article class="de_left">
	<div class="de_option">
		<table>
			<tr>
				<td>지역, 장소</td>
				<% 
					String address = request.getParameter("address"); 
					if (address==null) {
						address = "";
					}
				%>
				<td>
					<input name="address" value="<%=address %>" placeholder="지역, 장소 검색">
				</td>
				<td rowspan="3"><button onclick="search()">상세검색</button></td>
			</tr>
			<tr>
				<td>장르</td>
				<% 
					String category = request.getParameter("category"); 
					if (category==null) {
						category = "";
					} 
				%>
				<td>
					<input name="category" value="<%=category %>" placeholder="백반,죽,국수">
				</td>
			</tr>
			<tr>
				<td>필터</td>
				<td>
					<label for="sort">정렬</label>
					<select>
						<option value="sort">기본</option>
						<option value="sort_view">조회수 순</option>
						<option value="sort_rp">댓글순</option>
						<option value="sort_star">별점순</option>
						<option value="sort_book">별점순</option>
					</select>
					
				    <label>주차장</label>
				    <select>
				        <option value="parking">전체</option>
				        <option value="can-pk">주차 가능</option>
				        <option value="cant-pk">주차 불가능</option>
				    </select>
			    </td>
			</tr>
			<tr class="sc_result">
				<td colspan="3">( 검색어 : <%=address %>, <%=category %> / 검색 결과 : #건)</td>
			</tr>
				
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
						<p><a href="${cpath }/restaurant/res_detail/${row.idx}">${row.name }</a>　${row.category }</p>
						<p><hr></p>
						<p>별점 ${row.score }</p>
						<p>가격대  ${row.price }</p>
						<p>주소 ${row.address }</p>
						<p>휴일 ${row.holiday }</p>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>

	<div class="sc_paging">
		<ul>
			<c:if test="${p.prev }">			
				<li><a href="${cpath }/search/sc_detail?address=<%=address %>&category=<%=category %>&page=${p.begin - 1 }">이전</a></li>
			</c:if>
				
			<c:forEach var="i" begin="${p.begin }" end="${p.end }">
				<li><a href="${cpath }/search/sc_detail?address=<%=address %>&category=<%=category %>&page=${i }">${i }</a></li>
			</c:forEach>
				
			<c:if test="${p.next }">			
				<li><a href="${cpath }/search/sc_detail?address=<%=address %>&category=<%=category %>&page=${p.end + 1 }">다음</a></li>
			</c:if>
		</ul>
	</div>
	
	</article>
	
	<article class="de_right">
		<div id="map"></div>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8bc60e67620768f95cb992d64536023b"></script>
		<script>
			var container = document.getElementById('map');
			var options = {
				center: new kakao.maps.LatLng(35.166966, 129.132976),
				level: 3
			};
	
			var map = new kakao.maps.Map(container, options);
			
			// 장소 검색 객체를 생성합니다
			var ps = new kakao.maps.services.Places(); 

			// 키워드로 장소를 검색합니다
			ps.keywordSearch('센텀', placesSearchCB); 

			// 키워드 검색 완료 시 호출되는 콜백함수 입니다
			function placesSearchCB (data, status, pagination) {
			    if (status === kakao.maps.services.Status.OK) {

			        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
			        // LatLngBounds 객체에 좌표를 추가합니다
			        var bounds = new kakao.maps.LatLngBounds();

			        for (var i=0; i<data.length; i++) {
			            displayMarker(data[i]);    
			            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
			        }       

			        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
			        map.setBounds(bounds);
			    } 
			}
			
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
	</article>
	

</section>

<script>
    function search() {
        var address = document.getElementsByName('address')[0].value;
        var category = document.getElementsByName('category')[0].value;
        var page = document.getElementsByName('page')[0].value;
        
        var url = "${cpath}/search/sc_detail?";
        
        if (address) {
            url += "page=" + encodeURIComponent(page)+ "&";
            url += "address=" + encodeURIComponent(address) + "&";
        }
        
        if (category) {
            url +=  "page=" + encodeURIComponent(page)+ "&";
            url += "category=" + encodeURIComponent(category);
        }
        window.location.href = url;
    }

</script>
</body>
</html>