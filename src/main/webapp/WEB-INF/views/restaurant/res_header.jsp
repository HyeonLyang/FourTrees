<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="${cpath }/resources/css/res_css/res_top_style.css" rel="stylesheet"> <!-- res 공통 css적용 -->
    
    <c:set var="parking" value="${res.park_area  == 1 ? '주차가능' : '주차불가'}"/>
	<c:set var="star_rating" value="${res.score / 5 * 100 }"/>

	<section class="res_detail_info">
		<div class="res_detail_basicInfo">
			<p class="res_detail_resName1">${res.name }</p>
			<p class="res_detail_resName2">starbucks</p>
		</div>
		<div class="res_detail_re">
			<div class="res_detail_rate_back">
			<!-- db연결 후 width: 별점 -->
	    		<span style="width: ${star_rating}%" class="res_detail_rate_front"></span>
	    	</div>
			<p class="res_detail_score">${res.score }</p>
			<img class="res_detail_re_cnt" src="${cpath }/resources/img/restaurant/re_cnt.png">
			<h5 class="res_detail_re_cnt">215 개</h5>
			<img class="res_detail_bookmark" src="${cpath }/resources/img/restaurant/bookmark1.png">
			<h5 class="res_detail_bookmark">22755 명</h5>
		</div>
		<hr>
		<div class="res_detail_simpleInfo">
			<h5 class="res_detail_simIn">${res.address} |</h5>
			<h5 class="res_detail_simIn">${res.category }</h5>
		</div>
		<h5 class="res_detail_simInT">예산 : ${res.price }</h5>
		<h5 class="res_detail_simInT">정기휴일 : ${res.holiday }</h5>
	</section>
		
	<!-- ▲ 점포 상세 상단 공통부분 -->




