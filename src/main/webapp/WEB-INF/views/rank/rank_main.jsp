<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link href="${cpath }/resources/css/rank_css/rank_main_style.css" rel="stylesheet">
						<!-- rank하위 파일 4개의 css 경로 수정했습니다 -->
<style>
body {
	padding-top: 112px;	/* 겹치는거 방지 */
}
</style>

<section class="rank_main">

	 <section class="rank_main_top">
	 	<p class="rank_main_options" OnClick="location.href ='${cpath}/rank/rank_total'" style="cursor:pointer">전국 맛집 랭킹</p>
	 	<p class="rank_main_options" OnClick="location.href ='${cpath}/rank/rank_category'" style="cursor:pointer">카테고리별 랭킹</p>
	 	<p class="rank_main_options" OnClick="location.href ='${cpath}/rank/rank_area'" style="cursor:pointer">지역별 랭킹</p>
	 </section>
	
</section>
	
</body>
</html>