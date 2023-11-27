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
		<p style="background-color: #e1cb88">
			<a>확대지도</a>
		</p>

	</section>
	

	<section class="res_map_main">
		<section class="res_map_con">
			<section class="res_map_map">
				 <h3>map</h3>
			</section>
			<table class="res_map_txt">
				<tr>
					<th>주소</th>
					<td>부산 해운대구 센텀2로 25</td>
				</tr>
			</table>
		</section>
		<aside>
			<img src="${cpath }/resources/img/restaurant/res_AD.jpg" class="res_map_ad">
		</aside>


	</section>

</section>
	
</body>
</html>