<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MZ(맛집) in Korea</title>
<link href="${cpath }/resources/css/rank_css/rank_main_style.css" rel="stylesheet">
<script src="${cpath }/resources/js/BacktoTop.js"></script>
</head>
<body>
						<!-- rank하위 파일 4개의 css 경로 수정했습니다 -->


<section class="rank_main">

	 <section class="rank_main_top">
	 	<p class="rank_main_options" OnClick="location.href ='${cpath}/rank/rank_total'" style="cursor:pointer"><spring:message code="rank.main1" text="default text" /></p>
	 	<p class="rank_main_options" OnClick="location.href ='${cpath}/rank/rank_category'" style="cursor:pointer"><spring:message code="rank.main2" text="default text" /></p>
	 	<p class="rank_main_options" OnClick="location.href ='${cpath}/rank/rank_area'" style="cursor:pointer"><spring:message code="rank.main3" text="default text" /></p>
	 </section>
	
</section>
	
</body>
</html>