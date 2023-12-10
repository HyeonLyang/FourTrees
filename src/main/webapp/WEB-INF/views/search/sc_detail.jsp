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
				<td>가격대</td>
				<td> $0 <input type="range"> $1,000</td>
			</tr>
			<tr>
				<td colspan="2"><button onclick="search()">상세검색</button></td>
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
			<li>1</li>
			<li>2</li>
			<li>3</li>
			<li>4</li>
			<li>5</li>
			<li>다음></li>
		</ul>
		
		<p>1-20 of 5106</p>
	</div>
	</article>
	
	<article class="de_right">
		<div id="map" style="width:900px; height:500px; position: absolute; right: 10px; bottom: 10px;"></div>
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
	</article>
	

</section>

<script>
    function search() {
        var address = document.getElementsByName('address')[0].value;
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